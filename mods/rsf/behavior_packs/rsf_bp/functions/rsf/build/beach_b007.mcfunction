# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2439/4224 | 主题内编号: b007/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·八角星芒图腾祭坛 (beach_altar_octagonal_star)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 oak_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 prismarine []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 trident 5
replaceitem block ~3 ~-3 ~0 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 2 nautilus_shell 8
replaceitem block ~3 ~-3 ~0 slot.container 3 prismarine_shard 13
replaceitem block ~3 ~-3 ~0 slot.container 4 bone 8
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 9
replaceitem block ~3 ~-3 ~0 slot.container 9 iron_ingot 9
replaceitem block ~3 ~-3 ~0 slot.container 10 gold_ingot 8
replaceitem block ~3 ~-3 ~0 slot.container 11 emerald 7
replaceitem block ~3 ~-3 ~0 slot.container 12 tnt 6
replaceitem block ~3 ~-3 ~0 slot.container 13 fishing_rod 1
replaceitem block ~3 ~-3 ~0 slot.container 14 boat 1
loot insert ~3 ~-3 ~0 loot "rsf/beach"
loot insert ~3 ~-3 ~0 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~9 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~8 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~10 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~10 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~10 ~6 air []
fill ~5 ~1 ~6 ~5 ~10 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 spruce_log []
fill ~4 ~1 ~5 ~4 ~9 ~5 spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~15 ~0 prismarine []
setblock ~0 ~16 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 gold_block []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 gold_block []
setblock ~0 ~5 ~8 torch []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 spruce_log []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 torch []
fill ~7 ~0 ~0 ~7 ~3 ~0 spruce_log []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 sandstone []
setblock ~-2 ~8 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 trident 8
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 nautilus_shell 3
replaceitem block ~4 ~1 ~5 slot.container 3 prismarine_shard 8
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 fishing_rod 1
replaceitem block ~4 ~1 ~5 slot.container 10 boat 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 12 heart_of_the_sea 7
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_cod 8
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_salmon 9
loot insert ~4 ~1 ~5 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
