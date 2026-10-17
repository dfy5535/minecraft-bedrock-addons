# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1427/4224 | 主题内编号: b019/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·琉璃穹顶圣物秘室 (mesa_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 red_terracotta []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 raw_gold_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 spider_eye 8
replaceitem block ~2 ~-3 ~0 slot.container 1 gunpowder 11
replaceitem block ~2 ~-3 ~0 slot.container 2 gold_nugget 18
replaceitem block ~2 ~-3 ~0 slot.container 3 arrow 19
replaceitem block ~2 ~-3 ~0 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-3 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~2 ~-3 ~0 slot.container 9 iron_pickaxe 1
replaceitem block ~2 ~-3 ~0 slot.container 10 minecart 1
replaceitem block ~2 ~-3 ~0 slot.container 11 lantern 10
replaceitem block ~2 ~-3 ~0 slot.container 12 gold_ingot 10
replaceitem block ~2 ~-3 ~0 slot.container 13 raw_gold 9
replaceitem block ~2 ~-3 ~0 slot.container 14 iron_ingot 8
loot insert ~2 ~-3 ~0 loot "rsf/mesa"
loot insert ~2 ~-3 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 hardened_clay []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 air []
fill ~4 ~1 ~5 ~4 ~7 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 dark_oak_log []
fill ~3 ~1 ~4 ~3 ~6 ~4 dark_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 orange_terracotta []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 glass []
fill ~-2 ~7 ~-3 ~2 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 dark_oak_log []
setblock ~-6 ~4 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 dark_oak_log []
setblock ~-6 ~4 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 dark_oak_log []
setblock ~6 ~4 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~3 ~7 dark_oak_log []
setblock ~6 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x7x3) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~1 ~1 ~-8 gold_block []
setblock ~-2 ~3 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 2 gold_nugget 21
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 raw_gold 14
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 11 rail 17
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_beef 11
replaceitem block ~3 ~1 ~4 slot.container 14 tnt 8
loot insert ~3 ~1 ~4 loot "rsf/mesa"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon spider ~0 ~-3 ~0
