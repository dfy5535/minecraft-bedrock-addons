# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1506/4224 | 主题内编号: b098/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·四角炮楼重装要塞 (mesa_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_sandstone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_sandstone [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 smooth_red_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_terracotta []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 orange_terracotta []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 gold_nugget 18
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 19
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 19
replaceitem block ~0 ~-3 ~-4 slot.container 9 lantern 4
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 11 raw_gold 10
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_ingot 9
replaceitem block ~0 ~-3 ~-4 slot.container 13 rail 20
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_apple 7
loot insert ~0 ~-3 ~-4 loot "rsf/mesa"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 red_sandstone []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 cut_red_sandstone []
setblock ~-6 ~9 ~-7 torch []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 cut_red_sandstone []
setblock ~-6 ~9 ~6 torch []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 cut_red_sandstone []
setblock ~5 ~9 ~-7 torch []
fill ~5 ~1 ~6 ~6 ~8 ~7 cut_red_sandstone []
setblock ~5 ~9 ~6 torch []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 cut_red_sandstone []
fill ~-6 ~7 ~-7 ~6 ~7 ~7 dark_oak_fence []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 air []
setblock ~-6 ~7 ~-7 chiseled_red_sandstone []
setblock ~-6 ~8 ~-7 torch []
setblock ~-6 ~7 ~7 chiseled_red_sandstone []
setblock ~-6 ~8 ~7 torch []
setblock ~6 ~7 ~-7 chiseled_red_sandstone []
setblock ~6 ~8 ~-7 torch []
setblock ~6 ~7 ~7 chiseled_red_sandstone []
setblock ~6 ~8 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 dark_oak_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x10x2) ---
fill ~-2 ~0 ~-11 ~2 ~0 ~-10 red_sandstone []
fill ~-2 ~1 ~-10 ~2 ~1 ~-10 rail []
setblock ~-1 ~1 ~-11 gold_block []
setblock ~-2 ~2 ~-11 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 string 14
replaceitem block ~-5 ~1 ~6 slot.container 1 spider_eye 11
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 14
replaceitem block ~-5 ~1 ~6 slot.container 3 gold_nugget 21
replaceitem block ~-5 ~1 ~6 slot.container 4 arrow 22
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 minecart 1
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 6
replaceitem block ~-5 ~1 ~6 slot.container 11 gold_ingot 13
replaceitem block ~-5 ~1 ~6 slot.container 12 raw_gold 12
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_ingot 11
replaceitem block ~-5 ~1 ~6 slot.container 14 rail 22
loot insert ~-5 ~1 ~6 loot "rsf/mesa"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 17
replaceitem block ~5 ~1 ~6 slot.container 1 gold_nugget 16
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 minecart 1
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 4
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 12 raw_gold 10
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 14 rail 20
loot insert ~5 ~1 ~6 loot "rsf/mesa"
loot insert ~5 ~1 ~6 loot "chests/abandoned_mineshaft"
summon husk ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
