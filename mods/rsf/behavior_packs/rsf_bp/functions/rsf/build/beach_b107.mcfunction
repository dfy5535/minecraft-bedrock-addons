# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2539/4224 | 主题内编号: b107/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·观星高塔与秘术地宫 (beach_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 oak_planks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 prismarine []
setblock ~0 ~-7 ~0 torch []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-4 ~0 slot.container 0 bone 8
replaceitem block ~2 ~-4 ~0 slot.container 1 gunpowder 9
replaceitem block ~2 ~-4 ~0 slot.container 2 string 10
replaceitem block ~2 ~-4 ~0 slot.container 3 copper_ingot 11
replaceitem block ~2 ~-4 ~0 slot.container 4 trident 5
replaceitem block ~2 ~-4 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~2 ~-4 ~0 slot.container 9 iron_ingot 11
replaceitem block ~2 ~-4 ~0 slot.container 10 gold_ingot 10
replaceitem block ~2 ~-4 ~0 slot.container 11 emerald 9
replaceitem block ~2 ~-4 ~0 slot.container 12 tnt 8
replaceitem block ~2 ~-4 ~0 slot.container 13 fishing_rod 1
replaceitem block ~2 ~-4 ~0 slot.container 14 boat 1
loot insert ~2 ~-4 ~0 loot "rsf/beach"
loot insert ~2 ~-4 ~0 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 oak_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~10 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 cobblestone []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 glass []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~9 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 sandstone []
setblock ~-2 ~8 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 11
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 2 string 13
replaceitem block ~3 ~1 ~4 slot.container 3 copper_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 4 trident 8
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 fishing_rod 1
replaceitem block ~3 ~1 ~4 slot.container 10 boat 1
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 4
replaceitem block ~3 ~1 ~4 slot.container 12 heart_of_the_sea 2
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_cod 10
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_salmon 11
loot insert ~3 ~1 ~4 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
