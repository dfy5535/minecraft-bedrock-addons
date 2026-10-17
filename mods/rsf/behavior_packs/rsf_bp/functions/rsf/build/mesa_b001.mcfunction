# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1409/4224 | 主题内编号: b001/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·三层阶梯圣火祭坛 (mesa_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cut_red_sandstone [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cut_red_sandstone [] replace water
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 red_sandstone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 gold_nugget 18
replaceitem block ~2 ~-3 ~3 slot.container 1 arrow 19
replaceitem block ~2 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 4 bone 16
replaceitem block ~2 ~-3 ~3 slot.container 5 string 19
replaceitem block ~2 ~-3 ~3 slot.container 9 raw_gold 13
replaceitem block ~2 ~-3 ~3 slot.container 10 iron_ingot 12
replaceitem block ~2 ~-3 ~3 slot.container 11 rail 16
replaceitem block ~2 ~-3 ~3 slot.container 12 golden_apple 3
replaceitem block ~2 ~-3 ~3 slot.container 13 cooked_beef 10
replaceitem block ~2 ~-3 ~3 slot.container 14 tnt 7
loot insert ~2 ~-3 ~3 loot "rsf/mesa"
loot insert ~2 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 cut_red_sandstone []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 hardened_clay []
fill ~-2 ~5 ~-3 ~2 ~5 ~3 red_sandstone []
fill ~-2 ~1 ~-3 ~2 ~4 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 dark_oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~5 ~-5 ~-4 ~7 ~-5 dark_oak_log []
setblock ~-4 ~8 ~-5 torch []
fill ~-4 ~5 ~5 ~-4 ~7 ~5 dark_oak_log []
setblock ~-4 ~8 ~5 torch []
fill ~4 ~5 ~-5 ~4 ~7 ~-5 dark_oak_log []
setblock ~4 ~8 ~-5 torch []
fill ~4 ~5 ~5 ~4 ~7 ~5 dark_oak_log []
setblock ~4 ~8 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 yellow_terracotta []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x7x5) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~-1 ~1 ~-8 gold_block []
setblock ~-2 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 raw_gold_block []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 11
replaceitem block ~3 ~1 ~4 slot.container 1 string 14
replaceitem block ~3 ~1 ~4 slot.container 2 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 4 gold_nugget 21
replaceitem block ~3 ~1 ~4 slot.container 5 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 10 minecart 1
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 8
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 15
replaceitem block ~3 ~1 ~4 slot.container 13 raw_gold 14
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 6
loot insert ~3 ~1 ~4 loot "rsf/mesa"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon spider ~0 ~-3 ~0
