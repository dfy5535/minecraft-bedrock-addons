# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0839/4224 | 主题内编号: b071/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·残破双子哨所遗迹 (cold_taiga_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log2
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 spruce_planks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 spruce_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 spruce_planks []
fill ~2 ~1 ~-4 ~6 ~8 ~4 spruce_planks []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 stone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 spruce_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 spruce_planks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~-6 ~0 ~5 ~-7 ~14 ~6 cobblestone []
setblock ~-6 ~1 ~5 campfire []
setblock ~-6 ~15 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 1 bone 12
replaceitem block ~5 ~1 ~2 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 4 string 11
replaceitem block ~5 ~1 ~2 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~2 slot.container 9 flint_and_steel 1
replaceitem block ~5 ~1 ~2 slot.container 10 campfire 2
replaceitem block ~5 ~1 ~2 slot.container 11 lantern 5
replaceitem block ~5 ~1 ~2 slot.container 12 cooked_mutton 10
replaceitem block ~5 ~1 ~2 slot.container 13 sweet_berries 15
replaceitem block ~5 ~1 ~2 slot.container 14 spruce_log 20
loot insert ~5 ~1 ~2 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 string 14
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 4 leather 8
replaceitem block ~-5 ~1 ~3 slot.container 5 rabbit_foot 3
replaceitem block ~-5 ~1 ~3 slot.container 9 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 10 campfire 7
replaceitem block ~-5 ~1 ~3 slot.container 11 lantern 10
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_mutton 8
replaceitem block ~-5 ~1 ~3 slot.container 13 sweet_berries 13
replaceitem block ~-5 ~1 ~3 slot.container 14 spruce_log 18
loot insert ~-5 ~1 ~3 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~3 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~2 ~0
