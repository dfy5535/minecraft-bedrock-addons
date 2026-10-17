# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1459/4224 | 主题内编号: b051/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·带哨塔围栏探险营地 (mesa_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 hardened_clay [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 hardened_clay [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 orange_terracotta []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 hardened_clay []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 smooth_red_sandstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

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

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 red_terracotta []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~0 ~1 ~-8 gold_block []
setblock ~-2 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 raw_gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 2 gold_nugget 21
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 10 minecart 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 13 raw_gold 8
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 7
loot insert ~4 ~1 ~5 loot "rsf/mesa"
summon cave_spider ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
