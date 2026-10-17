# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2529/4224 | 主题内编号: b097/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·八角射击孔防御棱堡 (beach_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 sandstone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 string 10
replaceitem block ~3 ~-3 ~4 slot.container 1 copper_ingot 11
replaceitem block ~3 ~-3 ~4 slot.container 2 trident 5
replaceitem block ~3 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 4 nautilus_shell 8
replaceitem block ~3 ~-3 ~4 slot.container 5 prismarine_shard 13
replaceitem block ~3 ~-3 ~4 slot.container 9 cooked_cod 13
replaceitem block ~3 ~-3 ~4 slot.container 10 cooked_salmon 14
replaceitem block ~3 ~-3 ~4 slot.container 11 iron_ingot 8
replaceitem block ~3 ~-3 ~4 slot.container 12 gold_ingot 7
replaceitem block ~3 ~-3 ~4 slot.container 13 emerald 6
replaceitem block ~3 ~-3 ~4 slot.container 14 tnt 5
loot insert ~3 ~-3 ~4 loot "rsf/beach"
loot insert ~3 ~-3 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 prismarine_bricks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 air []
fill ~5 ~1 ~6 ~5 ~9 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 chiseled_sandstone []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 chiseled_sandstone []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 chiseled_sandstone []
fill ~4 ~1 ~5 ~4 ~8 ~5 chiseled_sandstone []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 sandstone []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 cobblestone_wall []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~-5 ~9 ~-6 chiseled_sandstone []
setblock ~-5 ~10 ~-6 sea_lantern []
setblock ~-5 ~9 ~6 chiseled_sandstone []
setblock ~-5 ~10 ~6 sea_lantern []
setblock ~5 ~9 ~-6 chiseled_sandstone []
setblock ~5 ~10 ~-6 sea_lantern []
setblock ~5 ~9 ~6 chiseled_sandstone []
setblock ~5 ~10 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 chiseled_sandstone []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 chiseled_sandstone []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 chiseled_sandstone []
fill ~6 ~0 ~2 ~6 ~7 ~2 chiseled_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 sandstone []
setblock ~-2 ~8 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 nautilus_shell 3
replaceitem block ~4 ~1 ~5 slot.container 1 prismarine_shard 8
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 13
replaceitem block ~4 ~1 ~5 slot.container 5 copper_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 9 fishing_rod 1
replaceitem block ~4 ~1 ~5 slot.container 10 boat 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 8
replaceitem block ~4 ~1 ~5 slot.container 12 heart_of_the_sea 6
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_cod 14
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_salmon 8
loot insert ~4 ~1 ~5 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
