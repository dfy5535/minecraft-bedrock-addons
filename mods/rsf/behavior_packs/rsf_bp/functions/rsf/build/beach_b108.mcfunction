# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2540/4224 | 主题内编号: b108/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·十字四相元素秘法殿 (beach_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 oak_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 oak_planks [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 prismarine_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 gold_block []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 gunpowder 9
replaceitem block ~3 ~-2 ~0 slot.container 1 string 10
replaceitem block ~3 ~-2 ~0 slot.container 2 copper_ingot 11
replaceitem block ~3 ~-2 ~0 slot.container 3 trident 5
replaceitem block ~3 ~-2 ~0 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-2 ~0 slot.container 5 nautilus_shell 8
replaceitem block ~3 ~-2 ~0 slot.container 9 tnt 6
replaceitem block ~3 ~-2 ~0 slot.container 10 fishing_rod 1
replaceitem block ~3 ~-2 ~0 slot.container 11 boat 1
replaceitem block ~3 ~-2 ~0 slot.container 12 lantern 4
replaceitem block ~3 ~-2 ~0 slot.container 13 heart_of_the_sea 2
replaceitem block ~3 ~-2 ~0 slot.container 14 cooked_cod 10
loot insert ~3 ~-2 ~0 loot "rsf/beach"
loot insert ~3 ~-2 ~0 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 oak_planks []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 oak_planks []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 oak_fence []
setblock ~5 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 spruce_planks []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 prismarine_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_oak_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_oak_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_oak_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_oak_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~8 ~-11 sandstone []
setblock ~-2 ~9 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 13
replaceitem block ~-4 ~1 ~5 slot.container 2 copper_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 nautilus_shell 3
replaceitem block ~-4 ~1 ~5 slot.container 9 heart_of_the_sea 7
replaceitem block ~-4 ~1 ~5 slot.container 10 cooked_cod 8
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_salmon 9
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 8
loot insert ~-4 ~1 ~5 loot "rsf/beach"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 copper_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 1 trident 3
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 nautilus_shell 6
replaceitem block ~4 ~1 ~5 slot.container 4 prismarine_shard 11
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 heart_of_the_sea 5
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_cod 13
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_salmon 14
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 6
loot insert ~4 ~1 ~5 loot "rsf/beach"
loot insert ~4 ~1 ~5 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~-2 ~0
