# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1213/4224 | 主题内编号: b061/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双子封土古墓地宫 (savanna_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 hardened_clay [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 hardened_clay [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 lantern []
setblock ~4 ~-4 ~-3 lantern []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~4 ~-2 ~3 slot.container 2 string 15
replaceitem block ~4 ~-2 ~3 slot.container 3 gunpowder 8
replaceitem block ~4 ~-2 ~3 slot.container 4 arrow 17
replaceitem block ~4 ~-2 ~3 slot.container 5 leather 10
replaceitem block ~4 ~-2 ~3 slot.container 9 gold_ingot 7
replaceitem block ~4 ~-2 ~3 slot.container 10 emerald 7
replaceitem block ~4 ~-2 ~3 slot.container 11 saddle 1
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 7
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_sword 1
replaceitem block ~4 ~-2 ~3 slot.container 14 torch 17
loot insert ~4 ~-2 ~3 loot "rsf/savanna"
loot insert ~4 ~-2 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 hardened_clay []
fill ~2 ~1 ~-5 ~6 ~7 ~5 hardened_clay []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 acacia_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 acacia_planks []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 hay_block []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 acacia_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~8 ~8 ~6 ~8 acacia_log []
fill ~7 ~6 ~7 ~9 ~6 ~9 acacia_slab []
setblock ~8 ~7 ~8 orange_terracotta []
setblock ~8 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 leather 13
replaceitem block ~5 ~1 ~4 slot.container 1 spider_eye 10
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 4 bone 11
replaceitem block ~5 ~1 ~4 slot.container 5 string 10
replaceitem block ~5 ~1 ~4 slot.container 9 torch 18
replaceitem block ~5 ~1 ~4 slot.container 10 bread 13
replaceitem block ~5 ~1 ~4 slot.container 11 cooked_beef 12
replaceitem block ~5 ~1 ~4 slot.container 12 acacia_log 21
replaceitem block ~5 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 14 gold_ingot 4
loot insert ~5 ~1 ~4 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
