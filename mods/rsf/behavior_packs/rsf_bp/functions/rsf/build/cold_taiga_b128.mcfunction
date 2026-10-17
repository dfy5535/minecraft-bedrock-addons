# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0896/4224 | 主题内编号: b128/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·U型紫禁朝堂大殿与地底金库 (cold_taiga_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 gunpowder 7
replaceitem block ~5 ~-4 ~4 slot.container 1 leather 10
replaceitem block ~5 ~-4 ~4 slot.container 2 rabbit_foot 5
replaceitem block ~5 ~-4 ~4 slot.container 3 ender_pearl 6
replaceitem block ~5 ~-4 ~4 slot.container 4 bone 17
replaceitem block ~5 ~-4 ~4 slot.container 5 arrow 22
replaceitem block ~5 ~-4 ~4 slot.container 9 iron_ingot 12
replaceitem block ~5 ~-4 ~4 slot.container 10 leather_boots 1
replaceitem block ~5 ~-4 ~4 slot.container 11 golden_apple 2
replaceitem block ~5 ~-4 ~4 slot.container 12 flint_and_steel 1
replaceitem block ~5 ~-4 ~4 slot.container 13 campfire 5
replaceitem block ~5 ~-4 ~4 slot.container 14 lantern 8
loot insert ~5 ~-4 ~4 loot "rsf/cold_taiga"
loot insert ~5 ~-4 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~8 ~-7 ~8 ~8 ~7 stone_brick_slab []
fill ~-6 ~9 ~-5 ~6 ~10 ~5 deepslate_bricks []
fill ~-7 ~11 ~-6 ~7 ~11 ~6 deepslate_brick_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-7 ~0 ~7 ~-8 ~12 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~13 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-5 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-6 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-6 ~1 ~4 slot.container 9 campfire 2
replaceitem block ~-6 ~1 ~4 slot.container 10 lantern 5
replaceitem block ~-6 ~1 ~4 slot.container 11 cooked_mutton 10
replaceitem block ~-6 ~1 ~4 slot.container 12 sweet_berries 15
replaceitem block ~-6 ~1 ~4 slot.container 13 spruce_log 20
replaceitem block ~-6 ~1 ~4 slot.container 14 coal 21
loot insert ~-6 ~1 ~4 loot "rsf/cold_taiga"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon wolf ~1 ~1 ~1
summon fox ~0 ~-4 ~0
