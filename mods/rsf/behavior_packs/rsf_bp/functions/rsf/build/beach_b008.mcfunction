# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2440/4224 | 主题内编号: b008/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·凯旋双拱圣物祭坛 (beach_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 oak_planks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 oak_planks [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 oak_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 oak_planks []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 spruce_planks []
fill ~-5 ~9 ~-5 ~5 ~9 ~5 oak_fence []
fill ~-4 ~9 ~-4 ~4 ~9 ~4 air []
setblock ~-5 ~9 ~-5 stripped_oak_log []
setblock ~-5 ~10 ~-5 campfire []
setblock ~-5 ~9 ~5 stripped_oak_log []
setblock ~-5 ~10 ~5 campfire []
setblock ~5 ~9 ~-5 stripped_oak_log []
setblock ~5 ~10 ~-5 campfire []
setblock ~5 ~9 ~5 stripped_oak_log []
setblock ~5 ~10 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 spruce_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~8 ~-9 sandstone []
setblock ~-2 ~9 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 1 nautilus_shell 3
replaceitem block ~-4 ~1 ~4 slot.container 2 prismarine_shard 8
replaceitem block ~-4 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 5 string 13
replaceitem block ~-4 ~1 ~4 slot.container 9 heart_of_the_sea 5
replaceitem block ~-4 ~1 ~4 slot.container 10 cooked_cod 13
replaceitem block ~-4 ~1 ~4 slot.container 11 cooked_salmon 14
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 13 gold_ingot 7
replaceitem block ~-4 ~1 ~4 slot.container 14 emerald 6
loot insert ~-4 ~1 ~4 loot "rsf/beach"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 prismarine_shard 11
replaceitem block ~4 ~1 ~4 slot.container 1 bone 14
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~4 slot.container 3 string 8
replaceitem block ~4 ~1 ~4 slot.container 4 copper_ingot 9
replaceitem block ~4 ~1 ~4 slot.container 5 trident 3
replaceitem block ~4 ~1 ~4 slot.container 9 heart_of_the_sea 3
replaceitem block ~4 ~1 ~4 slot.container 10 cooked_cod 11
replaceitem block ~4 ~1 ~4 slot.container 11 cooked_salmon 12
replaceitem block ~4 ~1 ~4 slot.container 12 iron_ingot 13
replaceitem block ~4 ~1 ~4 slot.container 13 gold_ingot 12
replaceitem block ~4 ~1 ~4 slot.container 14 emerald 4
loot insert ~4 ~1 ~4 loot "rsf/beach"
loot insert ~4 ~1 ~4 loot "chests/buriedtreasure"
summon turtle ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
