# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2435/4224 | 主题内编号: b003/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·环柱巨石方尖祭坛 (beach_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 oak_planks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 cobblestone []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 copper_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 2 trident 5
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 nautilus_shell 8
replaceitem block ~0 ~-3 ~-4 slot.container 5 prismarine_shard 13
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_cod 10
replaceitem block ~0 ~-3 ~-4 slot.container 10 cooked_salmon 11
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 12 gold_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 13 emerald 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 tnt 2
loot insert ~0 ~-3 ~-4 loot "rsf/beach"
loot insert ~0 ~-3 ~-4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 cobblestone []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~9 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~9 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~9 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~9 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~9 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~9 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~9 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~9 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~9 ~6 spruce_log []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 spruce_log []
fill ~-5 ~1 ~-2 ~-5 ~9 ~-2 spruce_log []
fill ~5 ~1 ~-2 ~5 ~9 ~-2 spruce_log []
fill ~-5 ~1 ~0 ~-5 ~9 ~0 spruce_log []
fill ~5 ~1 ~0 ~5 ~9 ~0 spruce_log []
fill ~-5 ~1 ~2 ~-5 ~9 ~2 spruce_log []
fill ~5 ~1 ~2 ~5 ~9 ~2 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 spruce_log []
fill ~5 ~1 ~4 ~5 ~9 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 cobblestone []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~16 ~0 prismarine []
setblock ~0 ~17 ~0 torch []

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

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~8 ~-11 sandstone []
setblock ~-2 ~9 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 11
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 13
replaceitem block ~4 ~1 ~5 slot.container 3 copper_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 4 trident 8
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 10 tnt 2
replaceitem block ~4 ~1 ~5 slot.container 11 fishing_rod 1
replaceitem block ~4 ~1 ~5 slot.container 12 boat 1
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 14 heart_of_the_sea 5
loot insert ~4 ~1 ~5 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
