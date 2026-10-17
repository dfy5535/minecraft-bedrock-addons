// ============================================================================
//  DeepVein Odyssey 深层矿脉：纪元锻造
//  Minecraft Bedrock Edition 1.26.51+  ·  Behavior Pack 脚本
//  ---------------------------------------------------------------------------
//  职责边界（重要）：
//    · 矿石掉落 —— 由「战利品表」负责（原生、可靠、爆炸/生物破坏同样生效）。
//      等级门槛 = 战利品表里按允许的镐子逐项列 pool（match_tool.item 精确匹配）；
//      时运 = looting_enchant 函数；精准采集 = 引擎原生（掉落矿石方块本身）。
//    · 本脚本只负责「经验掉落」与「武器/防具特殊能力」。
//      原半成品脚本也自己 spawnItem，与战利品表叠加造成掉落翻倍，已移除。
//  性能约束（需求书 §10）：
//    · 事件驱动为主；唯一定时器为 40 tick（2 秒）的套装检查，不做每刻全量扫描。
// ============================================================================
import { world, system, EquipmentSlot } from "@minecraft/server";

const NAMESPACE = "deepvein";

// ---------------------------------------------------------------------------
// 兼容层：不同 @minecraft/server 版本 API 形状不同，做一次适配，避免整段能力失效。
//   · system.beforeEvents.startup 只有 2.0.0+ 才有（1.x 用 world.beforeEvents.worldInitialize）
//   · Entity.isValid 在 1.x 是方法 isValid()，2.0.0 起是属性 isValid
//   · Entity.applyKnockback 1.x 是 4 参数，2.0.0 起是 (VectorXZ, verticalStrength)
//   真机实测（BDS 1.26.52.3，声明 @minecraft/server 1.17.0）：
//     system.beforeEvents === undefined → 原脚本加载期抛 TypeError
//     → 自定义组件 deepvein:ore_mining 未注册 → 29 个矿石方块全部「Block definition parsing failed」
//     → 矿石不存在 → 29 个熔炼配方也随之失效。整条链的源头就是这里。
// ---------------------------------------------------------------------------
const HAS_STARTUP_EVENT = typeof system?.beforeEvents?.startup !== "undefined";
const HAS_WORLD_INIT = typeof world?.beforeEvents?.worldInitialize !== "undefined";

/** 兼容 isValid 的方法/属性两种形态。 */
function isValid(entity) {
    if (!entity) return false;
    try {
        const v = entity.isValid;
        return typeof v === "function" ? v.call(entity) === true : v === true;
    } catch (_) {
        return false;
    }
}

/** 击退：按运行时实际提供的签名调用（不能用 try/catch 探测——多传参数不会抛错）。 */
function applyKnockback(entity, dirX, dirZ, horizontal, vertical) {
    try {
        if (HAS_STARTUP_EVENT) {
            entity.applyKnockback({ x: dirX * horizontal, z: dirZ * horizontal }, vertical);
        } else {
            entity.applyKnockback(dirX, dirZ, horizontal, vertical);
        }
    } catch (_) { /* 该实体不支持击退 */ }
}

/** 粒子：名称随版本增删，失败不能影响主逻辑。 */
function particle(dimension, name, location) {
    try {
        dimension.spawnParticle(name, location);
        return true;
    } catch (_) {
        return false;
    }
}

/** 尝试若干候选粒子名，命中第一个可用的。 */
function particleAny(dimension, names, location) {
    for (const name of names) {
        if (particle(dimension, name, location)) return name;
    }
    return null;
}

function randomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

function isCooldownReady(map, key, cooldownMs) {
    const now = Date.now();
    const expire = map.get(key) || 0;
    if (now < expire) return false;
    map.set(key, now + cooldownMs);
    return true;
}

function mainhandOf(entity) {
    try {
        return entity.getComponent("minecraft:equippable")?.getEquipment(EquipmentSlot.Mainhand) ?? undefined;
    } catch (_) {
        return undefined;
    }
}

function heal(entity, amount) {
    try {
        const hp = entity.getComponent("minecraft:health");
        if (hp) hp.setCurrentValue(Math.min(hp.effectiveMax, hp.currentValue + amount));
    } catch (_) { /* 无生命组件 */ }
}

/** 取以 origin 为中心、半径内的其他实体（排除掉落物与经验球）。 */
function nearbyEntities(dimension, origin, radius, excludeIds) {
    const out = [];
    try {
        for (const e of dimension.getEntities({
            location: origin,
            maxDistance: radius,
            excludeTypes: ["minecraft:item", "minecraft:xp_orb"],
        })) {
            if (excludeIds.includes(e.id)) continue;
            out.push(e);
        }
    } catch (_) { /* 区块未加载等 */ }
    return out;
}

const skillCooldowns = new Map();
const phaseShiftCooldowns = new Map();

// ---------------------------------------------------------------------------
// 矿石经验组件
//   掉落由战利品表负责；此处只补经验（原版矿石被精准采集时同样给经验）。
// ---------------------------------------------------------------------------
const OreXpComponent = {
    onPlayerBreak(event, componentParams) {
        const { block, dimension, player } = event;
        const params = componentParams?.params;
        if (!player || !params) return;
        const count = randomInt(params.xp_min ?? 0, params.xp_max ?? 0);
        // 上限保护：单块矿石最多 16 点，避免配置写错时刷爆实体
        for (let i = 0; i < Math.min(count, 16); i++) {
            try {
                dimension.spawnEntity("minecraft:xp_orb", block.location);
            } catch (_) { break; }
        }
    },
};

// 自定义组件必须在「启动前」注册；两种 API 形态都支持，且注册失败不能拖垮整个脚本。
function registerOreComponent(registry) {
    try {
        registry.registerCustomComponent(`${NAMESPACE}:ore_mining`, OreXpComponent);
        console.warn(`[DeepVein] 自定义组件 ${NAMESPACE}:ore_mining 注册成功`);
    } catch (e) {
        console.warn(`[DeepVein] 自定义组件注册失败: ${e}`);
    }
}

if (HAS_STARTUP_EVENT) {
    system.beforeEvents.startup.subscribe(({ blockComponentRegistry }) => registerOreComponent(blockComponentRegistry));
} else if (HAS_WORLD_INIT) {
    world.beforeEvents.worldInitialize.subscribe(({ blockComponentRegistry }) => registerOreComponent(blockComponentRegistry));
} else {
    console.warn("[DeepVein] 运行时既无 system.beforeEvents.startup 也无 world.beforeEvents.worldInitialize；"
        + "自定义组件无法注册，矿石方块将无法加载。请检查 manifest 中 @minecraft/server 版本。");
}

// ---------------------------------------------------------------------------
// 特色武器：命中特效
// ---------------------------------------------------------------------------
// ---------------------------------------------------------------------------
// 1.21.60 兼容：自定义方块组件在 v1 语义下注册晚于方块 JSON 解析，
// 会造成 24 个矿石方块 "Block definition parsing failed"（方块直接不存在）。
// 改为纯 1.x 事件实现（破坏时掉落经验球），1.21.60 与更高版本走同一条代码路径。
// ---------------------------------------------------------------------------
const ORE_XP = {
    "deepvein:blaze_crystal_ore": [
        3,
        7
    ],
    "deepvein:chorus_crystal_ore": [
        4,
        8
    ],
    "deepvein:crimson_gem_ore": [
        4,
        8
    ],
    "deepvein:deepslate_adamantite_ore": [
        5,
        10
    ],
    "deepvein:deepslate_cobalt_ore": [
        2,
        5
    ],
    "deepvein:deepslate_compressed_diamond_ore": [
        6,
        12
    ],
    "deepvein:deepslate_mythril_ore": [
        4,
        8
    ],
    "deepvein:deepslate_platinum_ore": [
        3,
        6
    ],
    "deepvein:deepslate_ruby_ore": [
        3,
        7
    ],
    "deepvein:deepslate_sapphire_ore": [
        3,
        7
    ],
    "deepvein:deepslate_silver_ore": [
        1,
        3
    ],
    "deepvein:deepslate_titanium_ore": [
        2,
        5
    ],
    "deepvein:deepslate_zinc_ore": [
        0,
        2
    ],
    "deepvein:ender_alloy_ore": [
        6,
        12
    ],
    "deepvein:hellfire_metal_ore": [
        5,
        10
    ],
    "deepvein:jade_ore": [
        2,
        6
    ],
    "deepvein:ruby_ore": [
        3,
        7
    ],
    "deepvein:sapphire_ore": [
        3,
        7
    ],
    "deepvein:silver_ore": [
        1,
        3
    ],
    "deepvein:soul_crystal_ore": [
        4,
        8
    ],
    "deepvein:tin_ore": [
        0,
        2
    ],
    "deepvein:titanium_ore": [
        2,
        5
    ],
    "deepvein:void_crystal_ore": [
        5,
        9
    ],
    "deepvein:zinc_ore": [
        0,
        2
    ]
};

world.afterEvents.playerBreakBlock.subscribe(({ block, dimension, player, brokenBlockPermutation }) => {
    if (!player) return;
    // 注意：after 事件里 block 已经是空气，被破坏方块的类型必须从 brokenBlockPermutation 取。
    // （实测证据：探针记录到 playerBreakBlock 时 block.typeId === "minecraft:air"）
    const brokenId = brokenBlockPermutation?.type?.id ?? block?.typeId;
    const r = ORE_XP[brokenId];
    if (!r) return;
    const count = randomInt(r[0], r[1]);
    // 上限保护：单块矿石最多 16 点，避免配置写错时刷爆实体
    for (let i = 0; i < Math.min(count, 16); i++) {
        try { dimension.spawnEntity("minecraft:xp_orb", block.location); } catch (_) { break; }
    }
});

world.afterEvents.entityHitEntity.subscribe((event) => {
    const { damagingEntity, hitEntity } = event;
    if (!damagingEntity || damagingEntity.typeId !== "minecraft:player") return;
    if (!isValid(hitEntity)) return;
    const weapon = mainhandOf(damagingEntity);
    if (!weapon) return;

    const id = weapon.typeId;
    const dim = hitEntity.dimension;
    const loc = hitEntity.location;
    const pLoc = damagingEntity.location;
    const dx = loc.x - pLoc.x, dz = loc.z - pLoc.z;
    const d = Math.max(0.1, Math.hypot(dx, dz));

    switch (id) {
        case `${NAMESPACE}:ruby_flame_sword`:
            hitEntity.setOnFire(5, true);
            particleAny(dim, ["minecraft:basic_flame_particle", "minecraft:flame_particle"], loc);
            break;
        case `${NAMESPACE}:sapphire_frost_sword`:
            hitEntity.addEffect("slowness", 80, { amplifier: 1 });
            hitEntity.addEffect("weakness", 80, { amplifier: 0 });
            particleAny(dim, ["minecraft:snowflake_particle", "minecraft:basic_snowball_particle"], loc);
            break;
        case `${NAMESPACE}:jade_guardian_sword`:
            applyKnockback(hitEntity, dx / d, dz / d, 1.4, 0.35);
            damagingEntity.addEffect("resistance", 60, { amplifier: 0, showParticles: false });
            break;
        case `${NAMESPACE}:cobalt_dagger`: {
            damagingEntity.addEffect("speed", 60, { amplifier: 1, showParticles: false });
            // 背刺：目标朝向与攻击者视线同向时追加伤害
            let backstab = false;
            try {
                const tV = hitEntity.getViewDirection();
                const pV = damagingEntity.getViewDirection();
                backstab = (pV.x * tV.x + pV.z * tV.z) > 0.35;
            } catch (_) { /* 目标无朝向 */ }
            if (backstab) {
                hitEntity.applyDamage(4, { cause: "entityAttack", damagingEntity });
                particleAny(dim, ["minecraft:critical_hit_emitter", "minecraft:crit_particle"], loc);
            }
            break;
        }
        case `${NAMESPACE}:titanium_spear`:
            particleAny(dim, ["minecraft:critical_hit_emitter", "minecraft:crit_particle"], loc);
            break;
        case `${NAMESPACE}:mythril_greatsword`:
            for (const t of nearbyEntities(dim, loc, 2.5, [damagingEntity.id, hitEntity.id])) {
                t.applyDamage(5, { cause: "entityAttack", damagingEntity });
            }
            particleAny(dim, ["minecraft:endrod", "minecraft:end_rod_particle"], loc);
            break;
        case `${NAMESPACE}:adamantite_warhammer`:
            hitEntity.addEffect("slowness", 40, { amplifier: 2 });
            applyKnockback(hitEntity, dx / d, dz / d, 1.8, 0.45);
            particleAny(dim, ["minecraft:huge_explosion_lab_misc_emitter", "minecraft:explosion_particle"], loc);
            break;
        case `${NAMESPACE}:hellfire_scythe`:
            hitEntity.setOnFire(6, true);
            hitEntity.addEffect("wither", 60, { amplifier: 0 });
            particleAny(dim, ["minecraft:basic_flame_particle", "minecraft:flame_particle"], loc);
            break;
        case `${NAMESPACE}:soul_staff`:
            hitEntity.addEffect("weakness", 60, { amplifier: 0 });
            heal(damagingEntity, 1);
            particleAny(dim, ["minecraft:soul_particle", "minecraft:basic_soul_particle"], loc);
            break;
        case `${NAMESPACE}:void_blade`:
            hitEntity.addEffect("levitation", 30, { amplifier: 1 });
            hitEntity.addEffect("blindness", 30, { amplifier: 0 });
            particleAny(dim, ["minecraft:portal_directional", "minecraft:portal_particle"], loc);
            break;
    }
});

// ---------------------------------------------------------------------------
// 特色武器：主动技能（右键）
// ---------------------------------------------------------------------------
const WEAPON_SKILLS = {
    [`${NAMESPACE}:ruby_flame_sword`]: { cd: 6000, anim: "ruby_flame_sword" },
    [`${NAMESPACE}:sapphire_frost_sword`]: { cd: 7000, anim: "sapphire_frost_sword" },
    [`${NAMESPACE}:jade_guardian_sword`]: { cd: 8000, anim: "jade_guardian_sword" },
    [`${NAMESPACE}:cobalt_dagger`]: { cd: 4000, anim: "cobalt_dagger" },
    [`${NAMESPACE}:titanium_spear`]: { cd: 5500, anim: "titanium_spear" },
    [`${NAMESPACE}:mythril_greatsword`]: { cd: 7500, anim: "mythril_greatsword" },
    [`${NAMESPACE}:adamantite_warhammer`]: { cd: 9000, anim: "adamantite_warhammer" },
    [`${NAMESPACE}:hellfire_scythe`]: { cd: 8000, anim: "hellfire_scythe" },
    [`${NAMESPACE}:soul_staff`]: { cd: 5000, anim: "soul_staff" },
    [`${NAMESPACE}:void_blade`]: { cd: 6500, anim: "void_blade" },
};

world.afterEvents.itemUse.subscribe((event) => {
    const player = event.source;
    const itemStack = event.itemStack;
    if (!player || player.typeId !== "minecraft:player" || !itemStack) return;

    const id = itemStack.typeId;
    const cfg = WEAPON_SKILLS[id];
    if (!cfg || !isCooldownReady(skillCooldowns, `${player.id}:${id}`, cfg.cd)) return;

    const dim = player.dimension;
    const loc = player.location;
    const view = player.getViewDirection();

    try { player.playAnimation(`animation.${NAMESPACE}.${cfg.anim}.skill_cast`); } catch (_) { /* 无动画 */ }

    switch (id) {
        case `${NAMESPACE}:ruby_flame_sword`:
            player.addEffect("fire_resistance", 160, { amplifier: 0 });
            for (const t of nearbyEntities(dim, loc, 4.5, [player.id])) {
                t.setOnFire(6, true);
                t.applyDamage(6, { cause: "fireTick", damagingEntity: player });
            }
            break;
        case `${NAMESPACE}:sapphire_frost_sword`:
            for (const t of nearbyEntities(dim, loc, 5.0, [player.id])) {
                t.addEffect("slowness", 80, { amplifier: 3 });
                t.applyDamage(5, { cause: "freezing", damagingEntity: player });
            }
            break;
        case `${NAMESPACE}:jade_guardian_sword`:
            player.addEffect("absorption", 160, { amplifier: 1 });
            player.addEffect("regeneration", 100, { amplifier: 1 });
            for (const t of nearbyEntities(dim, loc, 4.5, [player.id])) {
                const dx = t.location.x - loc.x, dz = t.location.z - loc.z;
                const d = Math.max(0.1, Math.hypot(dx, dz));
                applyKnockback(t, dx / d, dz / d, 2.2, 0.45);
            }
            break;
        case `${NAMESPACE}:cobalt_dagger`:
            applyKnockback(player, view.x, view.z, 2.4, 0.25);
            player.addEffect("speed", 80, { amplifier: 1 });
            player.addEffect("haste", 80, { amplifier: 1 });
            break;
        case `${NAMESPACE}:titanium_spear`: {
            applyKnockback(player, view.x, view.z, 2.0, 0.2);
            const sLoc = { x: loc.x + view.x * 3.0, y: loc.y + 1.0, z: loc.z + view.z * 3.0 };
            for (const t of nearbyEntities(dim, sLoc, 3.0, [player.id])) {
                t.applyDamage(8, { cause: "entityAttack", damagingEntity: player });
            }
            break;
        }
        case `${NAMESPACE}:mythril_greatsword`: {
            const fLoc = { x: loc.x + view.x * 2.8, y: loc.y + 1.0, z: loc.z + view.z * 2.8 };
            for (const t of nearbyEntities(dim, fLoc, 3.5, [player.id])) {
                t.applyDamage(9, { cause: "entityAttack", damagingEntity: player });
            }
            player.removeEffect("weakness");
            player.removeEffect("slowness");
            break;
        }
        case `${NAMESPACE}:adamantite_warhammer`:
            for (const t of nearbyEntities(dim, loc, 5.0, [player.id])) {
                t.applyDamage(11, { cause: "entityAttack", damagingEntity: player });
                applyKnockback(t, 0, 0, 0.5, 0.75);
            }
            break;
        case `${NAMESPACE}:hellfire_scythe`: {
            let hits = 0;
            for (const t of nearbyEntities(dim, loc, 4.5, [player.id])) {
                t.setOnFire(6, true);
                t.applyDamage(8, { cause: "entityAttack", damagingEntity: player });
                hits++;
            }
            if (hits > 0) heal(player, Math.min(6, hits * 2));
            break;
        }
        case `${NAMESPACE}:soul_staff`:
            for (let s = 2; s <= 14; s += 2) {
                const pLoc = { x: loc.x + view.x * s, y: loc.y + 1.4 + view.y * s, z: loc.z + view.z * s };
                particleAny(dim, ["minecraft:soul_particle", "minecraft:basic_soul_particle"], pLoc);
                for (const t of nearbyEntities(dim, pLoc, 1.8, [player.id])) {
                    t.applyDamage(9, { cause: "magic", damagingEntity: player });
                }
            }
            break;
        case `${NAMESPACE}:void_blade`: {
            // 位移：沿视线找最远的「两格高均为空气」落点，避免穿墙
            let dest = { x: loc.x, y: loc.y, z: loc.z };
            for (let d = 1; d <= 8; d++) {
                const c = { x: loc.x + view.x * d, y: loc.y + view.y * d, z: loc.z + view.z * d };
                try {
                    const b1 = dim.getBlock({ x: Math.floor(c.x), y: Math.floor(c.y), z: Math.floor(c.z) });
                    const b2 = dim.getBlock({ x: Math.floor(c.x), y: Math.floor(c.y + 1), z: Math.floor(c.z) });
                    if (b1 && b2 && b1.isAir && b2.isAir) dest = c; else break;
                } catch (_) { break; }
            }
            player.teleport(dest, { dimension: dim });
            for (const t of nearbyEntities(dim, dest, 3.5, [player.id])) {
                t.applyDamage(8, { cause: "magic", damagingEntity: player });
            }
            break;
        }
    }
});

// ---------------------------------------------------------------------------
// 防具套装效果（四件套）
// ---------------------------------------------------------------------------
const SET_EFFECTS = {
    silver: [{ effect: "regeneration", amp: 0 }],
    ruby: [{ effect: "fire_resistance", amp: 0 }],
    sapphire: [{ effect: "water_breathing", amp: 0 }, { effect: "conduit_power", amp: 0 }],
    jade: [{ effect: "health_boost", amp: 0 }, { effect: "regeneration", amp: 0 }],
    cobalt: [{ effect: "speed", amp: 0 }, { effect: "haste", amp: 0 }],
    titanium: [{ effect: "resistance", amp: 0 }],
    mythril: [{ effect: "night_vision", amp: 0 }, { effect: "jump_boost", amp: 0 }, { effect: "slow_falling", amp: 0 }],
    adamantite: [{ effect: "resistance", amp: 0 }, { effect: "strength", amp: 0 }],
    ender_alloy: [{ effect: "speed", amp: 0 }, { effect: "resistance", amp: 0 }],
    compressed_diamond: [{ effect: "absorption", amp: 0 }, { effect: "haste", amp: 1 }],
};

function getEquippedSetPrefix(player) {
    let eq;
    try {
        eq = player.getComponent("minecraft:equippable");
    } catch (_) {
        return null;
    }
    if (!eq) return null;
    const h = eq.getEquipment(EquipmentSlot.Head)?.typeId || "";
    const c = eq.getEquipment(EquipmentSlot.Chest)?.typeId || "";
    const l = eq.getEquipment(EquipmentSlot.Legs)?.typeId || "";
    const b = eq.getEquipment(EquipmentSlot.Feet)?.typeId || "";
    if (!h.startsWith(`${NAMESPACE}:`) || !h.endsWith("_helmet")) return null;
    const p = h.slice(`${NAMESPACE}:`.length, -"_helmet".length);
    return (c === `${NAMESPACE}:${p}_chestplate`
        && l === `${NAMESPACE}:${p}_leggings`
        && b === `${NAMESPACE}:${p}_boots`) ? p : null;
}

// 40 tick = 2 秒一次；效果时长 100 tick，留有充分余量，不会闪烁也不会叠加。
system.runInterval(() => {
    for (const player of world.getAllPlayers()) {
        if (!isValid(player)) continue;
        const activeSet = getEquippedSetPrefix(player);
        if (!activeSet) continue;
        if (activeSet === "silver") {
            player.removeEffect("poison");
            player.removeEffect("wither");
        }
        const buffs = SET_EFFECTS[activeSet];
        if (buffs) {
            for (const b of buffs) {
                player.addEffect(b.effect, 100, { amplifier: b.amp, showParticles: false });
            }
        }
    }
}, 40);

// 套装被动：受击触发
world.afterEvents.entityHurt.subscribe((event) => {
    const { hurtEntity, damageSource } = event;
    if (!hurtEntity || hurtEntity.typeId !== "minecraft:player") return;
    const activeSet = getEquippedSetPrefix(hurtEntity);
    if (!activeSet) return;
    if (activeSet === "sapphire") {
        const attacker = damageSource?.damagingEntity;
        if (isValid(attacker)) attacker.addEffect("slowness", 60, { amplifier: 1 });
    } else if (activeSet === "ender_alloy") {
        const hp = hurtEntity.getComponent("minecraft:health");
        if (hp && hp.currentValue <= 8 && isCooldownReady(phaseShiftCooldowns, hurtEntity.id, 20000)) {
            hurtEntity.addEffect("regeneration", 100, { amplifier: 1 });
            hurtEntity.addEffect("invisibility", 80, { amplifier: 0, showParticles: false });
        }
    }
});

// ---------------------------------------------------------------------------
// 狱炎镰刀：击杀回血
// ---------------------------------------------------------------------------
world.afterEvents.entityDie.subscribe((event) => {
    const killer = event.damageSource?.damagingEntity;
    if (!killer || killer.typeId !== "minecraft:player") return;
    const weapon = mainhandOf(killer);
    if (weapon?.typeId !== `${NAMESPACE}:hellfire_scythe`) return;
    heal(killer, 4);
    killer.addEffect("strength", 100, { amplifier: 0 });
});
