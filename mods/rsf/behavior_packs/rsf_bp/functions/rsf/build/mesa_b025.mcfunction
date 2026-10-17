# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1433/4224 | 主题内编号: b025/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·雉堞女墙四方哨塔 (mesa_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 9x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cut_red_sandstone [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cut_red_sandstone [] replace water
fill ~-4 ~1 ~-5 ~4 ~11 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 red_sandstone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 hardened_clay []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~9 ~4 cut_red_sandstone []
fill ~-2 ~1 ~-3 ~2 ~8 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 dark_oak_log []
fill ~3 ~1 ~4 ~3 ~9 ~4 dark_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 dark_oak_fence []
setblock ~3 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~9 ~-4 ~3 ~9 ~4 hardened_clay []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 dark_oak_fence []
fill ~-2 ~10 ~-3 ~2 ~10 ~3 air []
setblock ~-3 ~10 ~-4 dark_oak_log []
setblock ~-3 ~11 ~-4 torch []
setblock ~-3 ~10 ~4 dark_oak_log []
setblock ~-3 ~11 ~4 torch []
setblock ~3 ~10 ~-4 dark_oak_log []
setblock ~3 ~11 ~-4 torch []
setblock ~3 ~10 ~4 dark_oak_log []
setblock ~3 ~11 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 hardened_clay []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 dark_oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 dark_oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 red_sandstone_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 4x6x4) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_sandstone []
fill ~-2 ~1 ~-6 ~2 ~1 ~-6 rail []
setblock ~0 ~1 ~-7 gold_block []
setblock ~-2 ~4 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-3 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 11
replaceitem block ~2 ~1 ~3 slot.container 1 string 14
replaceitem block ~2 ~1 ~3 slot.container 2 spider_eye 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 14
replaceitem block ~2 ~1 ~3 slot.container 4 gold_nugget 21
replaceitem block ~2 ~1 ~3 slot.container 5 arrow 22
replaceitem block ~2 ~1 ~3 slot.container 9 lantern 9
replaceitem block ~2 ~1 ~3 slot.container 10 gold_ingot 16
replaceitem block ~2 ~1 ~3 slot.container 11 raw_gold 8
replaceitem block ~2 ~1 ~3 slot.container 12 iron_ingot 7
replaceitem block ~2 ~1 ~3 slot.container 13 rail 18
replaceitem block ~2 ~1 ~3 slot.container 14 golden_apple 5
loot insert ~2 ~1 ~3 loot "rsf/mesa"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon spider ~0 ~2 ~0
