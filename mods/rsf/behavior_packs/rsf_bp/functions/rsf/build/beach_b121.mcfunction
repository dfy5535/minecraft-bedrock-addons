# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2553/4224 | 主题内编号: b121/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·卫城廊柱王座大殿与地宫 (beach_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 smooth_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 sea_lantern []
setblock ~4 ~-6 ~0 sea_lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 trident 5
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 2 nautilus_shell 8
replaceitem block ~0 ~-4 ~5 slot.container 3 prismarine_shard 13
replaceitem block ~0 ~-4 ~5 slot.container 4 bone 8
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 9 cooked_cod 12
replaceitem block ~0 ~-4 ~5 slot.container 10 cooked_salmon 13
replaceitem block ~0 ~-4 ~5 slot.container 11 iron_ingot 14
replaceitem block ~0 ~-4 ~5 slot.container 12 gold_ingot 6
replaceitem block ~0 ~-4 ~5 slot.container 13 emerald 5
replaceitem block ~0 ~-4 ~5 slot.container 14 tnt 4
loot insert ~0 ~-4 ~5 loot "rsf/beach"
loot insert ~0 ~-4 ~5 loot "chests/buriedtreasure"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 trident 3
replaceitem block ~0 ~-4 ~-5 slot.container 1 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 2 nautilus_shell 6
replaceitem block ~0 ~-4 ~-5 slot.container 3 prismarine_shard 11
replaceitem block ~0 ~-4 ~-5 slot.container 4 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 5 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 9 cooked_cod 11
replaceitem block ~0 ~-4 ~-5 slot.container 10 cooked_salmon 12
replaceitem block ~0 ~-4 ~-5 slot.container 11 iron_ingot 13
replaceitem block ~0 ~-4 ~-5 slot.container 12 gold_ingot 12
replaceitem block ~0 ~-4 ~-5 slot.container 13 emerald 4
replaceitem block ~0 ~-4 ~-5 slot.container 14 tnt 3
loot insert ~0 ~-4 ~-5 loot "rsf/beach"
loot insert ~0 ~-4 ~-5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~9 ~7 prismarine_bricks []
fill ~-5 ~1 ~0 ~5 ~8 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~9 ~-7 chiseled_sandstone []
fill ~-4 ~1 ~-7 ~-4 ~9 ~-7 chiseled_sandstone []
fill ~-2 ~1 ~-7 ~-2 ~9 ~-7 chiseled_sandstone []
fill ~0 ~1 ~-7 ~0 ~9 ~-7 chiseled_sandstone []
fill ~2 ~1 ~-7 ~2 ~9 ~-7 chiseled_sandstone []
fill ~4 ~1 ~-7 ~4 ~9 ~-7 chiseled_sandstone []
fill ~6 ~1 ~-7 ~6 ~9 ~-7 chiseled_sandstone []
fill ~-6 ~9 ~-7 ~6 ~9 ~-1 sandstone []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~10 ~-8 ~-7 ~10 ~8 sandstone_stairs ["weirdo_direction"=0]
fill ~7 ~10 ~-8 ~7 ~10 ~8 sandstone_stairs ["weirdo_direction"=1]
fill ~-6 ~11 ~-7 ~-6 ~11 ~7 sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~11 ~-7 ~6 ~11 ~7 sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~11 ~-7 ~5 ~11 ~7 sandstone_slab []
fill ~0 ~12 ~-8 ~0 ~12 ~8 sandstone []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 chiseled_sandstone []
setblock ~-8 ~6 ~-9 sea_lantern []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 chiseled_sandstone []
setblock ~-8 ~6 ~9 sea_lantern []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 chiseled_sandstone []
setblock ~8 ~6 ~-9 sea_lantern []
fill ~8 ~0 ~9 ~8 ~5 ~9 chiseled_sandstone []
setblock ~8 ~6 ~9 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~6 ~-10 sandstone []
setblock ~-2 ~7 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 nautilus_shell 3
replaceitem block ~5 ~1 ~6 slot.container 1 prismarine_shard 8
replaceitem block ~5 ~1 ~6 slot.container 2 bone 11
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 4 string 13
replaceitem block ~5 ~1 ~6 slot.container 5 copper_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 9
replaceitem block ~5 ~1 ~6 slot.container 10 heart_of_the_sea 7
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_cod 8
replaceitem block ~5 ~1 ~6 slot.container 12 cooked_salmon 9
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 14 gold_ingot 9
loot insert ~5 ~1 ~6 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
