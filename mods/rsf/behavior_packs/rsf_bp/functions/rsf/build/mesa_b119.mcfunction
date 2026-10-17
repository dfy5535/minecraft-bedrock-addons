# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1527/4224 | 主题内编号: b119/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·半地下恒温洞穴苗圃 (mesa_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 hardened_clay [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 hardened_clay [] replace water
fill ~-5 ~1 ~-7 ~5 ~6 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 red_sandstone []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 orange_terracotta []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 bone 16
replaceitem block ~-2 ~-4 ~4 slot.container 1 string 19
replaceitem block ~-2 ~-4 ~4 slot.container 2 spider_eye 8
replaceitem block ~-2 ~-4 ~4 slot.container 3 gunpowder 11
replaceitem block ~-2 ~-4 ~4 slot.container 4 gold_nugget 18
replaceitem block ~-2 ~-4 ~4 slot.container 5 arrow 19
replaceitem block ~-2 ~-4 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-2 ~-4 ~4 slot.container 10 minecart 1
replaceitem block ~-2 ~-4 ~4 slot.container 11 lantern 8
replaceitem block ~-2 ~-4 ~4 slot.container 12 gold_ingot 15
replaceitem block ~-2 ~-4 ~4 slot.container 13 raw_gold 14
replaceitem block ~-2 ~-4 ~4 slot.container 14 iron_ingot 6
loot insert ~-2 ~-4 ~4 loot "rsf/mesa"
loot insert ~-2 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 hardened_clay []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 orange_terracotta []
fill ~0 ~1 ~-6 ~0 ~2 ~6 orange_terracotta []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~4 ~-6 ~4 ~4 ~6 orange_terracotta []
fill ~-3 ~5 ~-5 ~3 ~6 ~5 glass []
fill ~-2 ~5 ~-4 ~2 ~5 ~4 air []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-8 ~6 ~2 ~8 dark_oak_fence []
fill ~-5 ~1 ~-7 ~5 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x9x3) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~1 ~1 ~-10 gold_block []
setblock ~-2 ~3 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 2 bone 11
replaceitem block ~3 ~1 ~5 slot.container 3 string 14
replaceitem block ~3 ~1 ~5 slot.container 4 spider_eye 11
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 14
replaceitem block ~3 ~1 ~5 slot.container 9 raw_gold 9
replaceitem block ~3 ~1 ~5 slot.container 10 iron_ingot 8
replaceitem block ~3 ~1 ~5 slot.container 11 rail 19
replaceitem block ~3 ~1 ~5 slot.container 12 golden_apple 6
replaceitem block ~3 ~1 ~5 slot.container 13 cooked_beef 13
replaceitem block ~3 ~1 ~5 slot.container 14 tnt 10
loot insert ~3 ~1 ~5 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
