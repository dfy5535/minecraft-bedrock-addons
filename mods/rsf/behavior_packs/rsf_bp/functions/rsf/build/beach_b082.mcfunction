# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2514/4224 | 主题内编号: b082/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·竖井井架矿工物资站 (beach_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 sandstone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 sandstone [] replace water
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 sandstone []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-6 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-6 ~3 lantern []
setblock ~2 ~-6 ~-3 lantern []
setblock ~2 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-4 ~3 slot.container 0 gunpowder 9
replaceitem block ~2 ~-4 ~3 slot.container 1 string 10
replaceitem block ~2 ~-4 ~3 slot.container 2 copper_ingot 11
replaceitem block ~2 ~-4 ~3 slot.container 3 trident 5
replaceitem block ~2 ~-4 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~2 ~-4 ~3 slot.container 5 nautilus_shell 8
replaceitem block ~2 ~-4 ~3 slot.container 9 gold_ingot 9
replaceitem block ~2 ~-4 ~3 slot.container 10 emerald 8
replaceitem block ~2 ~-4 ~3 slot.container 11 tnt 7
replaceitem block ~2 ~-4 ~3 slot.container 12 fishing_rod 1
replaceitem block ~2 ~-4 ~3 slot.container 13 boat 1
replaceitem block ~2 ~-4 ~3 slot.container 14 lantern 5
loot insert ~2 ~-4 ~3 loot "rsf/beach"
loot insert ~2 ~-4 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 sandstone []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 oak_slab []
fill ~-3 ~5 ~-4 ~3 ~9 ~4 stone_bricks []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 oak_planks []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 sea_lantern []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 sandstone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-8 ~-2 ~7 ~-8 sandstone []
setblock ~-2 ~8 ~-8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 prismarine_shard 8
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 3 string 13
replaceitem block ~-3 ~1 ~4 slot.container 4 copper_ingot 14
replaceitem block ~-3 ~1 ~4 slot.container 5 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_salmon 9
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 9
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 8
replaceitem block ~-3 ~1 ~4 slot.container 13 tnt 7
replaceitem block ~-3 ~1 ~4 slot.container 14 fishing_rod 1
loot insert ~-3 ~1 ~4 loot "rsf/beach"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 1 string 8
replaceitem block ~3 ~1 ~4 slot.container 2 copper_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 3 trident 3
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 nautilus_shell 6
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_salmon 14
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 7
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 13 tnt 5
replaceitem block ~3 ~1 ~4 slot.container 14 fishing_rod 1
loot insert ~3 ~1 ~4 loot "rsf/beach"
loot insert ~3 ~1 ~4 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
