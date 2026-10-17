# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0895/4224 | 主题内编号: b127/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·万神殿巨型穹顶与试炼宫 (cold_taiga_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 spruce_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 spruce_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 snow []
setblock ~-5 ~-5 ~-4 lantern []
setblock ~5 ~-5 ~4 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 1 bone 17
replaceitem block ~0 ~-3 ~4 slot.container 2 arrow 22
replaceitem block ~0 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~4 slot.container 4 string 8
replaceitem block ~0 ~-3 ~4 slot.container 5 gunpowder 7
replaceitem block ~0 ~-3 ~4 slot.container 9 flint_and_steel 1
replaceitem block ~0 ~-3 ~4 slot.container 10 campfire 6
replaceitem block ~0 ~-3 ~4 slot.container 11 lantern 9
replaceitem block ~0 ~-3 ~4 slot.container 12 cooked_mutton 14
replaceitem block ~0 ~-3 ~4 slot.container 13 sweet_berries 12
replaceitem block ~0 ~-3 ~4 slot.container 14 spruce_log 17
loot insert ~0 ~-3 ~4 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 stone_bricks []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 spruce_log []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 spruce_log []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 spruce_log []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 spruce_log []
fill ~7 ~1 ~6 ~7 ~7 ~6 spruce_log []
fill ~-7 ~1 ~-4 ~-7 ~7 ~-4 spruce_log []
fill ~7 ~1 ~-4 ~7 ~7 ~-4 spruce_log []
fill ~-7 ~1 ~-2 ~-7 ~7 ~-2 spruce_log []
fill ~7 ~1 ~-2 ~7 ~7 ~-2 spruce_log []
fill ~-7 ~1 ~0 ~-7 ~7 ~0 spruce_log []
fill ~7 ~1 ~0 ~7 ~7 ~0 spruce_log []
fill ~-7 ~1 ~2 ~-7 ~7 ~2 spruce_log []
fill ~7 ~1 ~2 ~7 ~7 ~2 spruce_log []
fill ~-7 ~1 ~4 ~-7 ~7 ~4 spruce_log []
fill ~7 ~1 ~4 ~7 ~7 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 stone_bricks []
fill ~-6 ~9 ~-5 ~6 ~10 ~5 glass []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 spruce_log []
setblock ~-9 ~4 ~0 chiseled_stone_bricks []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 spruce_log []
setblock ~9 ~4 ~0 chiseled_stone_bricks []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x9x6) ---
fill ~-7 ~0 ~7 ~-8 ~16 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~17 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 1 bone 12
replaceitem block ~6 ~1 ~4 slot.container 2 arrow 17
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 4 string 11
replaceitem block ~6 ~1 ~4 slot.container 5 gunpowder 10
replaceitem block ~6 ~1 ~4 slot.container 9 leather_boots 1
replaceitem block ~6 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~6 ~1 ~4 slot.container 11 flint_and_steel 1
replaceitem block ~6 ~1 ~4 slot.container 12 campfire 4
replaceitem block ~6 ~1 ~4 slot.container 13 lantern 7
replaceitem block ~6 ~1 ~4 slot.container 14 cooked_mutton 12
loot insert ~6 ~1 ~4 loot "rsf/cold_taiga"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 arrow 20
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 2 string 14
replaceitem block ~-6 ~1 ~5 slot.container 3 gunpowder 13
replaceitem block ~-6 ~1 ~5 slot.container 4 leather 8
replaceitem block ~-6 ~1 ~5 slot.container 5 rabbit_foot 3
replaceitem block ~-6 ~1 ~5 slot.container 9 leather_boots 1
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_apple 6
replaceitem block ~-6 ~1 ~5 slot.container 11 flint_and_steel 1
replaceitem block ~-6 ~1 ~5 slot.container 12 campfire 2
replaceitem block ~-6 ~1 ~5 slot.container 13 lantern 5
replaceitem block ~-6 ~1 ~5 slot.container 14 cooked_mutton 10
loot insert ~-6 ~1 ~5 loot "rsf/cold_taiga"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
