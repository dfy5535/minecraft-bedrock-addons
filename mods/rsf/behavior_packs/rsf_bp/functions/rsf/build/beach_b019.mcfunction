# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2451/4224 | 主题内编号: b019/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·琉璃穹顶圣物秘室 (beach_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 oak_planks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 prismarine []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 bone 8
replaceitem block ~2 ~-3 ~0 slot.container 1 gunpowder 9
replaceitem block ~2 ~-3 ~0 slot.container 2 string 10
replaceitem block ~2 ~-3 ~0 slot.container 3 copper_ingot 11
replaceitem block ~2 ~-3 ~0 slot.container 4 trident 5
replaceitem block ~2 ~-3 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~2 ~-3 ~0 slot.container 9 lantern 10
replaceitem block ~2 ~-3 ~0 slot.container 10 heart_of_the_sea 1
replaceitem block ~2 ~-3 ~0 slot.container 11 cooked_cod 9
replaceitem block ~2 ~-3 ~0 slot.container 12 cooked_salmon 10
replaceitem block ~2 ~-3 ~0 slot.container 13 iron_ingot 11
replaceitem block ~2 ~-3 ~0 slot.container 14 gold_ingot 10
loot insert ~2 ~-3 ~0 loot "rsf/beach"
loot insert ~2 ~-3 ~0 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 spruce_log []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 spruce_log []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 spruce_log []
fill ~3 ~1 ~4 ~3 ~8 ~4 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 cobblestone []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 spruce_log []
setblock ~-6 ~6 ~-7 torch []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 spruce_log []
setblock ~-6 ~6 ~7 torch []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 spruce_log []
setblock ~6 ~6 ~-7 torch []
fill ~6 ~0 ~7 ~6 ~5 ~7 spruce_log []
setblock ~6 ~6 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-8 ~-2 ~9 ~-8 sandstone []
setblock ~-2 ~10 ~-8 sea_lantern []

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
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 12 tnt 6
replaceitem block ~3 ~1 ~4 slot.container 13 fishing_rod 1
replaceitem block ~3 ~1 ~4 slot.container 14 boat 1
loot insert ~3 ~1 ~4 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
