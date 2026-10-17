# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1435/4224 | 主题内编号: b027/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双子连廊警戒塔楼 (mesa_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 hardened_clay [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 hardened_clay [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 orange_terracotta []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~9 ~4 hardened_clay []
fill ~2 ~1 ~-4 ~5 ~9 ~4 hardened_clay []
fill ~-4 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 orange_terracotta []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 orange_terracotta []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 dark_oak_fence []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 air []
setblock ~-5 ~9 ~-4 dark_oak_log []
setblock ~-5 ~10 ~-4 lantern []
setblock ~-5 ~9 ~4 dark_oak_log []
setblock ~-5 ~10 ~4 lantern []
setblock ~5 ~9 ~-4 dark_oak_log []
setblock ~5 ~10 ~-4 lantern []
setblock ~5 ~9 ~4 dark_oak_log []
setblock ~5 ~10 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 chiseled_red_sandstone []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 chiseled_red_sandstone []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 chiseled_red_sandstone []
fill ~7 ~0 ~2 ~7 ~4 ~2 chiseled_red_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x5x6) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 red_sandstone []
fill ~-2 ~1 ~-5 ~2 ~1 ~-5 rail []
setblock ~1 ~1 ~-6 gold_block []
setblock ~-2 ~6 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~3 slot.container 2 gold_nugget 21
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 9 cooked_beef 8
replaceitem block ~4 ~1 ~3 slot.container 10 tnt 5
replaceitem block ~4 ~1 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~3 slot.container 12 minecart 1
replaceitem block ~4 ~1 ~3 slot.container 13 lantern 8
replaceitem block ~4 ~1 ~3 slot.container 14 gold_ingot 15
loot insert ~4 ~1 ~3 loot "rsf/mesa"
summon cave_spider ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
