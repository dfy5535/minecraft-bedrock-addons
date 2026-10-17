# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2518/4224 | 主题内编号: b086/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·重装矿石金库碉堡 (beach_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 sandstone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 prismarine_shard 13
replaceitem block ~3 ~-2 ~4 slot.container 1 bone 8
replaceitem block ~3 ~-2 ~4 slot.container 2 gunpowder 9
replaceitem block ~3 ~-2 ~4 slot.container 3 string 10
replaceitem block ~3 ~-2 ~4 slot.container 4 copper_ingot 11
replaceitem block ~3 ~-2 ~4 slot.container 5 trident 5
replaceitem block ~3 ~-2 ~4 slot.container 9 boat 1
replaceitem block ~3 ~-2 ~4 slot.container 10 lantern 6
replaceitem block ~3 ~-2 ~4 slot.container 11 heart_of_the_sea 4
replaceitem block ~3 ~-2 ~4 slot.container 12 cooked_cod 12
replaceitem block ~3 ~-2 ~4 slot.container 13 cooked_salmon 13
replaceitem block ~3 ~-2 ~4 slot.container 14 iron_ingot 14
loot insert ~3 ~-2 ~4 loot "rsf/beach"
loot insert ~3 ~-2 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 sandstone []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~9 ~-5 oak_planks []
setblock ~-5 ~10 ~-6 lantern []
fill ~-5 ~1 ~5 ~-4 ~9 ~6 oak_planks []
setblock ~-5 ~10 ~5 lantern []
fill ~4 ~1 ~-6 ~5 ~9 ~-5 oak_planks []
setblock ~4 ~10 ~-6 lantern []
fill ~4 ~1 ~5 ~5 ~9 ~6 oak_planks []
setblock ~4 ~10 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 oak_planks []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 oak_fence []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 oak_log []
setblock ~-5 ~9 ~-6 lantern []
setblock ~-5 ~8 ~6 oak_log []
setblock ~-5 ~9 ~6 lantern []
setblock ~5 ~8 ~-6 oak_log []
setblock ~5 ~9 ~-6 lantern []
setblock ~5 ~8 ~6 oak_log []
setblock ~5 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 oak_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~6 ~-10 sandstone []
setblock ~-2 ~7 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 copper_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 1 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 nautilus_shell 3
replaceitem block ~-4 ~1 ~5 slot.container 4 prismarine_shard 8
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 10
replaceitem block ~-4 ~1 ~5 slot.container 11 tnt 2
replaceitem block ~-4 ~1 ~5 slot.container 12 fishing_rod 1
replaceitem block ~-4 ~1 ~5 slot.container 13 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 7
loot insert ~-4 ~1 ~5 loot "rsf/beach"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 nautilus_shell 6
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_shard 11
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 8
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 11 tnt 7
replaceitem block ~4 ~1 ~5 slot.container 12 fishing_rod 1
replaceitem block ~4 ~1 ~5 slot.container 13 boat 1
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 5
loot insert ~4 ~1 ~5 loot "rsf/beach"
loot insert ~4 ~1 ~5 loot "chests/buriedtreasure"
summon turtle ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
