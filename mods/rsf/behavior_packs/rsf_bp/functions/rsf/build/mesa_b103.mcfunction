# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1511/4224 | 主题内编号: b103/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·十字全向防御方堡 (mesa_bunker_cross_redoubt)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 hardened_clay []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 bone 16
replaceitem block ~-2 ~-4 ~3 slot.container 3 string 19
replaceitem block ~-2 ~-4 ~3 slot.container 4 spider_eye 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 gunpowder 11
replaceitem block ~-2 ~-4 ~3 slot.container 9 cooked_beef 8
replaceitem block ~-2 ~-4 ~3 slot.container 10 tnt 5
replaceitem block ~-2 ~-4 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~-2 ~-4 ~3 slot.container 12 minecart 1
replaceitem block ~-2 ~-4 ~3 slot.container 13 lantern 8
replaceitem block ~-2 ~-4 ~3 slot.container 14 gold_ingot 15
loot insert ~-2 ~-4 ~3 loot "rsf/mesa"
loot insert ~-2 ~-4 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 hardened_clay []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 hardened_clay []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 dark_oak_fence []
setblock ~5 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 orange_terracotta []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 dark_oak_fence []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 dark_oak_log []
setblock ~-5 ~8 ~-6 lantern []
setblock ~-5 ~7 ~6 dark_oak_log []
setblock ~-5 ~8 ~6 lantern []
setblock ~5 ~7 ~-6 dark_oak_log []
setblock ~5 ~8 ~-6 lantern []
setblock ~5 ~7 ~6 dark_oak_log []
setblock ~5 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~3 ~-8 dark_oak_log []
setblock ~-7 ~4 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~3 ~8 dark_oak_log []
setblock ~-7 ~4 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~3 ~-8 dark_oak_log []
setblock ~7 ~4 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~3 ~8 dark_oak_log []
setblock ~7 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~2 ~1 ~-9 gold_block []
setblock ~-2 ~2 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 string 14
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 9 rail 22
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_beef 9
replaceitem block ~4 ~1 ~5 slot.container 12 tnt 6
replaceitem block ~4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 14 minecart 1
loot insert ~4 ~1 ~5 loot "rsf/mesa"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon spider ~0 ~-3 ~0
