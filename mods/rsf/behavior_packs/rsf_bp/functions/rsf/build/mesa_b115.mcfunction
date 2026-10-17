# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1523/4224 | 主题内编号: b115/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·阶梯立体生态种植台 (mesa_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 red_sandstone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 hardened_clay []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 spider_eye 8
replaceitem block ~0 ~-3 ~-2 slot.container 1 gunpowder 11
replaceitem block ~0 ~-3 ~-2 slot.container 2 gold_nugget 18
replaceitem block ~0 ~-3 ~-2 slot.container 3 arrow 19
replaceitem block ~0 ~-3 ~-2 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 lantern 6
replaceitem block ~0 ~-3 ~-2 slot.container 10 gold_ingot 13
replaceitem block ~0 ~-3 ~-2 slot.container 11 raw_gold 12
replaceitem block ~0 ~-3 ~-2 slot.container 12 iron_ingot 11
replaceitem block ~0 ~-3 ~-2 slot.container 13 rail 22
replaceitem block ~0 ~-3 ~-2 slot.container 14 golden_apple 2
loot insert ~0 ~-3 ~-2 loot "rsf/mesa"
loot insert ~0 ~-3 ~-2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 hardened_clay []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 orange_terracotta []
fill ~-3 ~5 ~-4 ~3 ~5 ~4 red_terracotta []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 red_sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-6 ~-5 ~7 ~-6 dark_oak_log []
setblock ~-5 ~8 ~-6 lantern []
fill ~-5 ~5 ~6 ~-5 ~7 ~6 dark_oak_log []
setblock ~-5 ~8 ~6 lantern []
fill ~5 ~5 ~-6 ~5 ~7 ~-6 dark_oak_log []
setblock ~5 ~8 ~-6 lantern []
fill ~5 ~5 ~6 ~5 ~7 ~6 dark_oak_log []
setblock ~5 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 dark_oak_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~-1 ~1 ~-9 gold_block []
setblock ~-2 ~4 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 2 gold_nugget 21
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 8
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 15
replaceitem block ~4 ~1 ~5 slot.container 11 raw_gold 14
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 13 rail 17
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 4
loot insert ~4 ~1 ~5 loot "rsf/mesa"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon spider ~0 ~-3 ~0
