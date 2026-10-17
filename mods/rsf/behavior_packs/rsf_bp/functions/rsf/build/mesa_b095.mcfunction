# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1503/4224 | 主题内编号: b095/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双子灯笼守卫神龛 (mesa_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 hardened_clay [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 hardened_clay [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 raw_gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 spider_eye 8
replaceitem block ~0 ~-4 ~4 slot.container 1 gunpowder 11
replaceitem block ~0 ~-4 ~4 slot.container 2 gold_nugget 18
replaceitem block ~0 ~-4 ~4 slot.container 3 arrow 19
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 9 lantern 6
replaceitem block ~0 ~-4 ~4 slot.container 10 gold_ingot 13
replaceitem block ~0 ~-4 ~4 slot.container 11 raw_gold 12
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_ingot 11
replaceitem block ~0 ~-4 ~4 slot.container 13 rail 22
replaceitem block ~0 ~-4 ~4 slot.container 14 golden_apple 2
loot insert ~0 ~-4 ~4 loot "rsf/mesa"
loot insert ~0 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~7 ~4 hardened_clay []
fill ~2 ~1 ~-4 ~5 ~7 ~4 hardened_clay []
fill ~-4 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 orange_terracotta []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 red_sandstone_slab []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 red_terracotta []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 red_sandstone_slab []
setblock ~0 ~10 ~0 raw_gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 dark_oak_log []
setblock ~-7 ~4 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 dark_oak_log []
setblock ~-7 ~4 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 dark_oak_log []
setblock ~7 ~4 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 dark_oak_log []
setblock ~7 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~-1 ~1 ~-8 gold_block []
setblock ~-2 ~4 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~3 smoker []
setblock ~4 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 bone 11
replaceitem block ~4 ~1 ~3 slot.container 3 string 14
replaceitem block ~4 ~1 ~3 slot.container 4 spider_eye 11
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 14
replaceitem block ~4 ~1 ~3 slot.container 9 lantern 9
replaceitem block ~4 ~1 ~3 slot.container 10 gold_ingot 16
replaceitem block ~4 ~1 ~3 slot.container 11 raw_gold 8
replaceitem block ~4 ~1 ~3 slot.container 12 iron_ingot 7
replaceitem block ~4 ~1 ~3 slot.container 13 rail 18
replaceitem block ~4 ~1 ~3 slot.container 14 golden_apple 5
loot insert ~4 ~1 ~3 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
