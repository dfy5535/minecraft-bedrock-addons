# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0793/4224 | 主题内编号: b025/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·雉堞女墙四方哨塔 (cold_taiga_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 2格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log2
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 deepslate_bricks []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 spruce_log []
fill ~4 ~1 ~3 ~4 ~10 ~3 spruce_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~10 ~-3 ~4 ~10 ~3 spruce_planks []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 spruce_fence []
fill ~-3 ~11 ~-2 ~3 ~11 ~2 air []
setblock ~-4 ~11 ~-3 spruce_log []
setblock ~-4 ~12 ~-3 lantern []
setblock ~-4 ~11 ~3 spruce_log []
setblock ~-4 ~12 ~3 lantern []
setblock ~4 ~11 ~-3 spruce_log []
setblock ~4 ~12 ~-3 lantern []
setblock ~4 ~11 ~3 spruce_log []
setblock ~4 ~12 ~3 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 spruce_planks []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 spruce_log []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 deepslate_brick_slab []
setblock ~0 ~3 ~-5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~-4 ~0 ~4 ~-5 ~16 ~5 cobblestone []
setblock ~-4 ~1 ~4 campfire []
setblock ~-4 ~17 ~4 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~1 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~1 slot.container 4 leather 13
replaceitem block ~3 ~1 ~1 slot.container 5 rabbit_foot 8
replaceitem block ~3 ~1 ~1 slot.container 9 lantern 6
replaceitem block ~3 ~1 ~1 slot.container 10 cooked_mutton 11
replaceitem block ~3 ~1 ~1 slot.container 11 sweet_berries 16
replaceitem block ~3 ~1 ~1 slot.container 12 spruce_log 21
replaceitem block ~3 ~1 ~1 slot.container 13 coal 22
replaceitem block ~3 ~1 ~1 slot.container 14 iron_ingot 6
loot insert ~3 ~1 ~1 loot "rsf/cold_taiga"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 13
replaceitem block ~-3 ~1 ~2 slot.container 2 leather 8
replaceitem block ~-3 ~1 ~2 slot.container 3 rabbit_foot 3
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~2 slot.container 9 lantern 4
replaceitem block ~-3 ~1 ~2 slot.container 10 cooked_mutton 9
replaceitem block ~-3 ~1 ~2 slot.container 11 sweet_berries 14
replaceitem block ~-3 ~1 ~2 slot.container 12 spruce_log 19
replaceitem block ~-3 ~1 ~2 slot.container 13 coal 20
replaceitem block ~-3 ~1 ~2 slot.container 14 iron_ingot 11
loot insert ~-3 ~1 ~2 loot "rsf/cold_taiga"
loot insert ~-3 ~1 ~2 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
