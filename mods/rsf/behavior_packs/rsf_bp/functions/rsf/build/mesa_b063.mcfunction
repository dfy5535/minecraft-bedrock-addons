# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1471/4224 | 主题内编号: b063/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·方尖碑镇压古墓穴 (mesa_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 hardened_clay [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 hardened_clay [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 hardened_clay []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 gold_nugget 18
replaceitem block ~0 ~-4 ~3 slot.container 1 arrow 19
replaceitem block ~0 ~-4 ~3 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~3 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~3 slot.container 5 string 19
replaceitem block ~0 ~-4 ~3 slot.container 9 cooked_beef 8
replaceitem block ~0 ~-4 ~3 slot.container 10 tnt 5
replaceitem block ~0 ~-4 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-4 ~3 slot.container 12 minecart 1
replaceitem block ~0 ~-4 ~3 slot.container 13 lantern 8
replaceitem block ~0 ~-4 ~3 slot.container 14 gold_ingot 15
loot insert ~0 ~-4 ~3 loot "rsf/mesa"
loot insert ~0 ~-4 ~3 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 gold_nugget 16
replaceitem block ~0 ~-4 ~-3 slot.container 1 arrow 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-4 ~-3 slot.container 4 bone 14
replaceitem block ~0 ~-4 ~-3 slot.container 5 string 17
replaceitem block ~0 ~-4 ~-3 slot.container 9 cooked_beef 14
replaceitem block ~0 ~-4 ~-3 slot.container 10 tnt 4
replaceitem block ~0 ~-4 ~-3 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-3 slot.container 12 minecart 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 lantern 7
replaceitem block ~0 ~-4 ~-3 slot.container 14 gold_ingot 14
loot insert ~0 ~-4 ~-3 loot "rsf/mesa"
loot insert ~0 ~-4 ~-3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 hardened_clay []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 dark_oak_log []
fill ~3 ~1 ~4 ~3 ~8 ~4 dark_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 orange_terracotta []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 hardened_clay []
fill ~0 ~14 ~0 ~0 ~14 ~0 raw_gold_block []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 dark_oak_log []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 dark_oak_log []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 dark_oak_log []
fill ~5 ~0 ~2 ~5 ~7 ~2 dark_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x6x2) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_sandstone []
fill ~-2 ~1 ~-6 ~2 ~1 ~-6 rail []
setblock ~1 ~1 ~-7 gold_block []
setblock ~-2 ~2 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 2 bone 11
replaceitem block ~3 ~1 ~4 slot.container 3 string 14
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 9 rail 17
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_beef 11
replaceitem block ~3 ~1 ~4 slot.container 12 tnt 8
replaceitem block ~3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 14 minecart 1
loot insert ~3 ~1 ~4 loot "rsf/mesa"
summon cave_spider ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
