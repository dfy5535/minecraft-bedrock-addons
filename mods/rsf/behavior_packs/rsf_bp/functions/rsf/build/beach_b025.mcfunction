# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2457/4224 | 主题内编号: b025/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·雉堞女墙四方哨塔 (beach_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 prismarine_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 prismarine_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~13 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_sandstone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 sandstone []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 prismarine_bricks []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 chiseled_sandstone []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 chiseled_sandstone []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 chiseled_sandstone []
fill ~3 ~1 ~4 ~3 ~11 ~4 chiseled_sandstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~11 ~-4 ~3 ~11 ~4 sandstone []
fill ~-3 ~12 ~-4 ~3 ~12 ~4 cobblestone_wall []
fill ~-2 ~12 ~-3 ~2 ~12 ~3 air []
setblock ~-3 ~12 ~-4 chiseled_sandstone []
setblock ~-3 ~13 ~-4 sea_lantern []
setblock ~-3 ~12 ~4 chiseled_sandstone []
setblock ~-3 ~13 ~4 sea_lantern []
setblock ~3 ~12 ~-4 chiseled_sandstone []
setblock ~3 ~13 ~-4 sea_lantern []
setblock ~3 ~12 ~4 chiseled_sandstone []
setblock ~3 ~13 ~4 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 sandstone []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 chiseled_sandstone []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 chiseled_sandstone []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 sandstone_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 6x5x2) ---
fill ~-1 ~0 ~-7 ~1 ~0 ~-5 oak_slab []
fill ~-2 ~0 ~-7 ~-2 ~5 ~-7 sandstone []
setblock ~-2 ~6 ~-7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 nautilus_shell 3
replaceitem block ~2 ~1 ~3 slot.container 1 prismarine_shard 8
replaceitem block ~2 ~1 ~3 slot.container 2 bone 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 4 string 13
replaceitem block ~2 ~1 ~3 slot.container 5 copper_ingot 14
replaceitem block ~2 ~1 ~3 slot.container 9 cooked_cod 8
replaceitem block ~2 ~1 ~3 slot.container 10 cooked_salmon 9
replaceitem block ~2 ~1 ~3 slot.container 11 iron_ingot 10
replaceitem block ~2 ~1 ~3 slot.container 12 gold_ingot 9
replaceitem block ~2 ~1 ~3 slot.container 13 emerald 8
replaceitem block ~2 ~1 ~3 slot.container 14 tnt 7
loot insert ~2 ~1 ~3 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
