import { world, system, ItemStack, BlockPermutation, EquipmentSlot, GameMode } from "@minecraft/server";

/**
 * 矿物果树 · Ore Trees — 行为包主脚本
 * ============================================================================
 * 目标运行时：Minecraft Bedrock 1.21.60+ / @minecraft/server 1.17.0
 *
 * 【本次修订（对原始脚本的修改，均已取证）】
 * 1. 组件注册顺序修正：@minecraft/server 1.17.0 的 System 只有 afterEvents，
 *    没有 beforeEvents，也没有 startup 事件（官方 index.d.ts 实证）。
 *    因此 world.beforeEvents.worldInitialize 是唯一可用钩子 —— 现改为首选，
 *    并把 system.beforeEvents.startup 保留为「更高模块版本」的向后兼容分支。
 * 2. 删除 onPlayerBreak 处理函数：1.17.0 的 BlockCustomComponent 契约里
 *    不存在该回调（只有 onPlayerDestroy / onRandomTick / onPlayerInteract ...），
 *    原代码里的 onPlayerBreak 是死代码。
 * 3. 世界读写全部加保护：dimension.getBlock 在未加载区块会抛
 *    LocationInUnloadedChunkError，原代码未捕获，会中断整个随机刻回调。
 * 4. 新增启动日志与生长日志（便于 BDS 侧取证，无副作用）。
 * 5. 掉落概率、时运/幸运公式、防刷规则、生长难度表 —— 与原始脚本完全一致，未改动。
 * ============================================================================
 */

const SCRIPT_VERSION = "1.0.0";

/**
 * 八大矿物树核心配置表 (Ore Tree Configuration Table)
 * 包含基础掉落率 (baseChance)、每级时运加成 (fortuneStep)、每级幸运药水加成 (luckStep)、
 * 硬性概率上限 (maxChance，确保绝不达到 100%)、树苗返还率及对应树干原木类型。
 */
const ORE_TREE_CONFIG = {
  coal: {
    id: "coal",
    saplingBlock: "ore_tree:coal_sapling",
    leavesBlock: "ore_tree:coal_leaves",
    logBlock: "minecraft:oak_log",
    dropItem: "minecraft:coal",
    dropMin: 1,
    dropMax: 2,
    baseChance: 0.12,
    fortuneStep: 0.045,
    luckStep: 0.02,
    maxChance: 0.28,
    saplingReturn: 0.06,
    growthDifficulty: 0.45
  },
  copper: {
    id: "copper",
    saplingBlock: "ore_tree:copper_sapling",
    leavesBlock: "ore_tree:copper_leaves",
    logBlock: "minecraft:acacia_log",
    dropItem: "minecraft:raw_copper",
    dropMin: 1,
    dropMax: 2,
    baseChance: 0.10,
    fortuneStep: 0.045,
    luckStep: 0.02,
    maxChance: 0.25,
    saplingReturn: 0.055,
    growthDifficulty: 0.40
  },
  iron: {
    id: "iron",
    saplingBlock: "ore_tree:iron_sapling",
    leavesBlock: "ore_tree:iron_leaves",
    logBlock: "minecraft:birch_log",
    dropItem: "minecraft:raw_iron",
    dropMin: 1,
    dropMax: 1,
    baseChance: 0.08,
    fortuneStep: 0.038,
    luckStep: 0.015,
    maxChance: 0.20,
    saplingReturn: 0.05,
    growthDifficulty: 0.35
  },
  lapis: {
    id: "lapis",
    saplingBlock: "ore_tree:lapis_sapling",
    leavesBlock: "ore_tree:lapis_leaves",
    logBlock: "minecraft:spruce_log",
    dropItem: "minecraft:lapis_lazuli",
    dropMin: 1,
    dropMax: 3,
    baseChance: 0.08,
    fortuneStep: 0.038,
    luckStep: 0.015,
    maxChance: 0.20,
    saplingReturn: 0.05,
    growthDifficulty: 0.35
  },
  redstone: {
    id: "redstone",
    saplingBlock: "ore_tree:redstone_sapling",
    leavesBlock: "ore_tree:redstone_leaves",
    logBlock: "minecraft:dark_oak_log",
    dropItem: "minecraft:redstone",
    dropMin: 1,
    dropMax: 3,
    baseChance: 0.09,
    fortuneStep: 0.04,
    luckStep: 0.015,
    maxChance: 0.22,
    saplingReturn: 0.05,
    growthDifficulty: 0.35
  },
  gold: {
    id: "gold",
    saplingBlock: "ore_tree:gold_sapling",
    leavesBlock: "ore_tree:gold_leaves",
    logBlock: "minecraft:jungle_log",
    dropItem: "minecraft:raw_gold",
    dropMin: 1,
    dropMax: 1,
    baseChance: 0.06,
    fortuneStep: 0.028,
    luckStep: 0.012,
    maxChance: 0.15,
    saplingReturn: 0.045,
    growthDifficulty: 0.30
  },
  emerald: {
    id: "emerald",
    saplingBlock: "ore_tree:emerald_sapling",
    leavesBlock: "ore_tree:emerald_leaves",
    logBlock: "minecraft:cherry_log",
    dropItem: "minecraft:emerald",
    dropMin: 1,
    dropMax: 1,
    baseChance: 0.045,
    fortuneStep: 0.024,
    luckStep: 0.01,
    maxChance: 0.125,
    saplingReturn: 0.045,
    growthDifficulty: 0.25
  },
  diamond: {
    id: "diamond",
    saplingBlock: "ore_tree:diamond_sapling",
    leavesBlock: "ore_tree:diamond_leaves",
    logBlock: "minecraft:oak_log",
    dropItem: "minecraft:diamond",
    dropMin: 1,
    dropMax: 1,
    baseChance: 0.035,
    fortuneStep: 0.020,
    luckStep: 0.01,
    maxChance: 0.10,
    saplingReturn: 0.045,
    growthDifficulty: 0.22
  }
};

/** 根据方块标识符解析对应的矿物配置 */
function getConfigByBlockId(typeId) {
  for (const key of Object.keys(ORE_TREE_CONFIG)) {
    const cfg = ORE_TREE_CONFIG[key];
    if (cfg.saplingBlock === typeId || cfg.leavesBlock === typeId) {
      return cfg;
    }
  }
  return null;
}

/** 生成闭区间随机整数 [min, max] */
function randomInt(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

/** 安全读方块：未加载区块 / 越界 / 维度异常一律返回 undefined，绝不抛到随机刻外面 */
function safeGetBlock(dimension, loc) {
  try {
    return dimension.getBlock(loc);
  } catch (_) {
    return undefined;
  }
}

/** 判断某个方块是否可被树干或树叶覆盖替换 */
function isReplaceableForTree(block) {
  if (!block) return false;
  let id;
  try {
    id = block.typeId;
  } catch (_) {
    return false;
  }
  if (
    id === "minecraft:air" ||
    id === "minecraft:short_grass" ||
    id === "minecraft:tallgrass" ||
    id === "minecraft:fern" ||
    id === "minecraft:snow_layer" ||
    id === "minecraft:vine" ||
    id.endsWith("_leaves") ||
    id.startsWith("ore_tree:")
  ) {
    return true;
  }
  return false;
}

/** 检查树苗上方是否有足够空间生成整棵矿物树 */
function canTreeGrow(dimension, origin, trunkHeight) {
  for (let dy = 1; dy <= trunkHeight + 1; dy++) {
    const radius = dy < trunkHeight - 2 ? 0 : 2;
    for (let dx = -radius; dx <= radius; dx++) {
      for (let dz = -radius; dz <= radius; dz++) {
        const checkBlock = safeGetBlock(dimension, {
          x: origin.x + dx,
          y: origin.y + dy,
          z: origin.z + dz
        });
        if (!isReplaceableForTree(checkBlock)) {
          return false;
        }
      }
    }
  }
  return true;
}

/**
 * 生成完整的 3D 矿物大树（原版原木树干 + 专属矿石树叶树冠）
 * 树冠树叶带 ore_tree:player_placed = false，允许触发矿物掉落与自然腐殖凋落
 */
function generateOreTree(dimension, origin, config) {
  const trunkHeight = randomInt(5, 6);
  if (!canTreeGrow(dimension, origin, trunkHeight)) {
    return false;
  }

  let naturalLeavesPerm;
  let logPerm;
  try {
    naturalLeavesPerm = BlockPermutation.resolve(config.leavesBlock, {
      "ore_tree:player_placed": false
    });
    logPerm = BlockPermutation.resolve(config.logBlock);
  } catch (e) {
    console.warn(`[OreTrees] permutation resolve failed: ${e}`);
    return false;
  }

  let placed = 0;

  // 1. 铺设四层树冠 (Canopy layers)
  const canopyStart = trunkHeight - 2;
  const canopyEnd = trunkHeight + 1;

  for (let ly = canopyStart; ly <= canopyEnd; ly++) {
    const distFromTop = canopyEnd - ly;
    // 下两层半径为 2，上两层半径为 1
    const radius = distFromTop >= 2 ? 2 : 1;

    for (let dx = -radius; dx <= radius; dx++) {
      for (let dz = -radius; dz <= radius; dz++) {
        // 削去四角（使树冠更自然圆润，带随机散落边角）
        if (Math.abs(dx) === radius && Math.abs(dz) === radius) {
          if (distFromTop === 0 || Math.random() < 0.45) {
            continue;
          }
        }
        // 树干中心位置留给原木（最高层除外）
        if (dx === 0 && dz === 0 && ly < trunkHeight) {
          continue;
        }

        const targetBlock = safeGetBlock(dimension, {
          x: origin.x + dx,
          y: origin.y + ly,
          z: origin.z + dz
        });
        if (targetBlock && (targetBlock.typeId === "minecraft:air" || targetBlock.typeId.endsWith("_leaves"))) {
          try {
            targetBlock.setPermutation(naturalLeavesPerm);
            placed++;
          } catch (_) {}
        }
      }
    }
  }

  // 2. 铺设中心主树干 (Vanilla Wood Trunk)
  let trunkPlaced = 0;
  for (let y = 0; y < trunkHeight; y++) {
    const trunkBlock = safeGetBlock(dimension, {
      x: origin.x,
      y: origin.y + y,
      z: origin.z
    });
    if (trunkBlock) {
      try {
        trunkBlock.setPermutation(logPerm);
        trunkPlaced++;
      } catch (_) {}
    }
  }

  // 3. 播放生长特效与音效
  try {
    dimension.spawnParticle("minecraft:crop_growth_emitter", {
      x: origin.x + 0.5,
      y: origin.y + 1.5,
      z: origin.z + 0.5
    });
    dimension.playSound("block.chorusflower.grow", origin);
  } catch (_) {}

  // 4. 生长取证日志（供 BDS 侧 / 无头 Bot 读取）
  try {
    console.warn(
      `[OreTrees] grow | ${config.id} | ${origin.x} ${origin.y} ${origin.z} | trunk=${trunkHeight} | trunkBlocks=${trunkPlaced} | leaves=${placed}`
    );
  } catch (_) {}

  return true;
}

/** 推进树苗生长阶段；当达到阶段 3 时尝试长成矿物大树 */
function tryAdvanceSapling(block, dimension) {
  const config = getConfigByBlockId(block.typeId);
  if (!config) return;

  const currentStage = block.permutation.getState("ore_tree:growth_stage") ?? 0;
  if (currentStage < 3) {
    try {
      block.setPermutation(block.permutation.withState("ore_tree:growth_stage", currentStage + 1));
    } catch (_) {}
  } else {
    generateOreTree(dimension, block.location, config);
  }
}

/**
 * 同 tick 同坐标幂等守卫。
 *
 * 真机实测（BDS 1.26.52.3）：用**精准采集**工具挖 1 块矿石树叶，
 * 服务端只派发 1 次 playerBreakBlock 世界事件，但 onPlayerDestroy 自定义组件回调
 * 被调用了 2 次 —— 结果一次挖掘掉落 2 个方块，构成**物品复制漏洞**
 *（同一次运行里剪刀路径只掉 1 个，因此不是测试侧重复破坏）。
 *
 * 一个方块在一个游戏刻内不可能被合法破坏两次，所以按「维度 + 坐标 + 当前刻」去重
 * 既能消除重复，又不会误伤任何正常行为。
 */
const RECENT_BREAK_TICKS = new Map();
const BREAK_DEDUP_WINDOW = 1; // 刻

function isDuplicateBreak(dimension, loc) {
  let dimId = "?";
  try {
    dimId = dimension.id;
  } catch (_) {}
  const key = `${dimId}|${loc.x}|${loc.y}|${loc.z}`;
  const now = system.currentTick;
  const prev = RECENT_BREAK_TICKS.get(key);
  if (prev !== undefined && now - prev <= BREAK_DEDUP_WINDOW) return true;
  RECENT_BREAK_TICKS.set(key, now);
  // 顺手清理过期条目，避免长期运行内存增长
  if (RECENT_BREAK_TICKS.size > 512) {
    for (const [k, t] of RECENT_BREAK_TICKS) {
      if (now - t > 40) RECENT_BREAK_TICKS.delete(k);
    }
  }
  return false;
}

/**
 * 处理矿石树叶被玩家挖掘破坏时的精确掉落计算
 * （支持时运 I/II/III、幸运药水加成、剪刀/精准采集、防刷校验）
 */
function handleLeavesBreak(event) {
  const { block, dimension, player, destroyedBlockPermutation } = event;
  const perm = destroyedBlockPermutation ?? block.permutation;
  if (!perm) return;

  const blockTypeId = perm.type.id;
  const config = getConfigByBlockId(blockTypeId);
  if (!config) return;

  // 幂等守卫：同一刻同一坐标只处理一次（防重复掉落 / 物品复制）
  if (isDuplicateBreak(dimension, block.location)) {
    try {
      console.warn(`[OreTrees] duplicate-break-suppressed | ${blockTypeId} | ${block.location.x} ${block.location.y} ${block.location.z}`);
    } catch (_) {}
    return;
  }

  // 创造模式不额外掉落
  if (player && player.getGameMode && player.getGameMode() === GameMode.creative) {
    return;
  }

  const dropCenter = {
    x: block.location.x + 0.5,
    y: block.location.y + 0.5,
    z: block.location.z + 0.5
  };

  // 获取玩家主手工具与附魔
  let itemStack = null;
  let fortuneLevel = 0;
  let hasSilkTouch = false;
  let isShears = false;

  if (player) {
    const equippable = player.getComponent("minecraft:equippable");
    itemStack = equippable ? equippable.getEquipment(EquipmentSlot.Mainhand) : null;
    if (itemStack) {
      if (itemStack.typeId === "minecraft:shears") {
        isShears = true;
      }
      const enchantable = itemStack.getComponent("minecraft:enchantable");
      if (enchantable) {
        try {
          const silk = enchantable.getEnchantment("silk_touch");
          if (silk && silk.level > 0) hasSilkTouch = true;
        } catch (_) {}
        try {
          const fortune = enchantable.getEnchantment("fortune");
          if (fortune && fortune.level > 0) fortuneLevel = fortune.level;
        } catch (_) {}
      }
    }
  }

  // 1a. 精准采集：**不要在这里掉落方块**。
  //     真机实测（BDS 1.26.52.3）：精准采集是引擎的**通用**机制 —— 引擎自己就会
  //     「掉落方块本身」。组件再掉一次就会变成 2 个 → **物品复制漏洞**
  //     （实测：挖 1 块 → 1 次破坏事件 → 2 个掉落物）。
  //     因此这里直接返回，把掉落完全交给引擎。
  if (hasSilkTouch) {
    return;
  }

  // 1b. 剪刀：原版「剪刀掉树叶」是 vanilla 树叶专属规则，对自定义方块不生效，
  //     所以这一条必须由组件自己掉（实测剪刀路径正好 1 个）。
  if (isShears) {
    dimension.spawnItem(new ItemStack(config.leavesBlock, 1), dropCenter);
    return;
  }

  // 2. 防刷校验：玩家手动从背包放置的装饰性树叶 (ore_tree:player_placed === true) 不掉矿物
  const isPlayerPlaced = perm.getState("ore_tree:player_placed");
  if (isPlayerPlaced === true) {
    return;
  }

  // 3. 幸运状态效果 (Luck Status Effect)
  let luckLevel = 0;
  if (player) {
    try {
      const luckEffect = player.getEffect("luck");
      if (luckEffect) {
        luckLevel = (luckEffect.amplifier ?? 0) + 1;
      }
    } catch (_) {}
  }

  // 4. 最终矿物掉落概率（严格受 maxChance 硬上限约束，绝不可能 100% 必掉）
  const rawMineralChance =
    config.baseChance +
    fortuneLevel * config.fortuneStep +
    luckLevel * config.luckStep;
  const finalMineralChance = Math.min(config.maxChance, rawMineralChance);

  if (Math.random() < finalMineralChance) {
    const count = randomInt(config.dropMin, config.dropMax);
    dimension.spawnItem(new ItemStack(config.dropItem, count), dropCenter);
    try {
      dimension.playSound("random.orb", dropCenter, { volume: 0.35, pitch: 1.25 });
    } catch (_) {}
  }

  // 5. 独立计算矿物树苗返还概率（时运小幅提升树苗掉落率）
  const saplingChance = Math.min(0.12, config.saplingReturn + fortuneLevel * 0.008 + luckLevel * 0.004);
  if (Math.random() < saplingChance) {
    dimension.spawnItem(new ItemStack(config.saplingBlock, 1), dropCenter);
  }
}

/** 检查自然生成的树叶周围 3 格内是否还存在原木树干；树干被砍光则自然凋落 */
function hasNearbyLog(dimension, loc) {
  for (let dx = -3; dx <= 3; dx++) {
    for (let dy = -3; dy <= 3; dy++) {
      for (let dz = -3; dz <= 3; dz++) {
        const b = safeGetBlock(dimension, {
          x: loc.x + dx,
          y: loc.y + dy,
          z: loc.z + dz
        });
        if (b) {
          try {
            if (b.typeId.endsWith("_log")) return true;
          } catch (_) {}
        }
      }
    }
  }
  return false;
}

/** 自定义组件：树苗生长与骨粉催化 (ore_tree:sapling_behavior) */
const SaplingBehaviorComponent = {
  onRandomTick(event) {
    const { block, dimension } = event;
    const config = getConfigByBlockId(block.typeId);
    if (!config) return;

    if (Math.random() < config.growthDifficulty * 0.65) {
      tryAdvanceSapling(block, dimension);
    }
  },

  onPlayerInteract(event) {
    const { block, dimension, player } = event;
    // 取证日志：只在玩家与矿物树苗交互时打一行，用于真机验收（无副作用）
    try {
      console.warn(
        `[OreTrees] interact | block=${block && block.typeId} | player=${player ? player.name : "undefined"} | face=${event.face}`
      );
    } catch (_) {}
    if (!player) return;

    const equippable = player.getComponent("minecraft:equippable");
    const heldItem = equippable ? equippable.getEquipment(EquipmentSlot.Mainhand) : null;
    if (!heldItem || heldItem.typeId !== "minecraft:bone_meal") {
      return;
    }

    const config = getConfigByBlockId(block.typeId);
    if (!config) return;

    // 消耗 1 个骨粉（非创造模式）
    if (player.getGameMode() !== GameMode.creative) {
      if (heldItem.amount > 1) {
        heldItem.amount -= 1;
        equippable.setEquipment(EquipmentSlot.Mainhand, heldItem);
      } else {
        equippable.setEquipment(EquipmentSlot.Mainhand, undefined);
      }
    }

    // 播放骨粉绿星粒子与音效
    const particlePos = {
      x: block.location.x + 0.5,
      y: block.location.y + 0.5,
      z: block.location.z + 0.5
    };
    try {
      dimension.spawnParticle("minecraft:crop_growth_emitter", particlePos);
      dimension.playSound("item.bone_meal.use", particlePos);
    } catch (_) {}

    // 根据矿物稀有度概率推进生长阶段
    if (Math.random() < config.growthDifficulty + 0.20) {
      tryAdvanceSapling(block, dimension);
    }
  }
};

/** 自定义组件：矿石树叶挖掘掉落与自然腐殖凋落 (ore_tree:leaves_behavior) */
const LeavesBehaviorComponent = {
  onPlayerDestroy(event) {
    handleLeavesBreak(event);
  },

  onRandomTick(event) {
    const { block, dimension } = event;
    const isPlayerPlaced = block.permutation.getState("ore_tree:player_placed");
    if (isPlayerPlaced === true) return;

    if (!hasNearbyLog(dimension, block.location)) {
      const config = getConfigByBlockId(block.typeId);
      const dropCenter = {
        x: block.location.x + 0.5,
        y: block.location.y + 0.5,
        z: block.location.z + 0.5
      };

      try {
        block.setType("minecraft:air");
      } catch (_) {
        return;
      }

      if (config) {
        // 自然腐殖凋落享基础矿物掉率与树苗返还率
        if (Math.random() < config.baseChance) {
          try {
            const count = randomInt(config.dropMin, config.dropMax);
            dimension.spawnItem(new ItemStack(config.dropItem, count), dropCenter);
          } catch (_) {}
        }
        if (Math.random() < config.saplingReturn) {
          try {
            dimension.spawnItem(new ItemStack(config.saplingBlock, 1), dropCenter);
          } catch (_) {}
        }
      }
    }
  }
};

/**
 * 注册自定义方块组件。
 * @minecraft/server 1.17.0 只提供 world.beforeEvents.worldInitialize；
 * 更高模块版本提供 system.beforeEvents.startup —— 两者都接线，谁存在用谁。
 */


function registerAllComponents(registry) {
  registry.registerCustomComponent("ore_tree:sapling_behavior", SaplingBehaviorComponent);
  registry.registerCustomComponent("ore_tree:leaves_behavior", LeavesBehaviorComponent);
}

/** host = 记录实际生效的注册钩子名，供启动日志与 BDS 侧取证 */
const registered = { via: "none", ok: false, error: null };

function installRegistration() {
  if (world.beforeEvents && world.beforeEvents.worldInitialize) {
    world.beforeEvents.worldInitialize.subscribe((initEvent) => {
      try {
        registerAllComponents(initEvent.blockComponentRegistry);
        registered.via = "world.beforeEvents.worldInitialize";
        registered.ok = true;
      } catch (e) {
        registered.via = "world.beforeEvents.worldInitialize";
        registered.ok = false;
        registered.error = String(e);
      }
      logRegistration();
    });
  } else if (system.beforeEvents && system.beforeEvents.startup) {
    system.beforeEvents.startup.subscribe((initEvent) => {
      try {
        registerAllComponents(initEvent.blockComponentRegistry);
        registered.via = "system.beforeEvents.startup";
        registered.ok = true;
      } catch (e) {
        registered.via = "system.beforeEvents.startup";
        registered.ok = false;
        registered.error = String(e);
      }
      logRegistration();
    });
  }
}

function logRegistration() {
  try {
    console.warn(
      `[OreTrees] components registered | ok=${registered.ok} | hook=${registered.via} | components=ore_tree:sapling_behavior,ore_tree:leaves_behavior` +
        (registered.error ? ` | error=${registered.error}` : "")
    );
  } catch (_) {}
}

try {
  installRegistration();
} catch (e) {
  console.warn(`[OreTrees] component registration hook failed: ${e}`);
}

// ---------------------------------------------------------------------------
// 启动取证日志（BDS 侧 / 无头 Bot 用固定前缀抓取）
// ---------------------------------------------------------------------------
try {
  const ores = Object.keys(ORE_TREE_CONFIG).join(",");
  console.warn(
    `[OreTrees] script loaded | scriptVersion=${SCRIPT_VERSION} | ores=${ores} | blocks=${Object.keys(ORE_TREE_CONFIG).length * 2}`
  );
} catch (_) {}
