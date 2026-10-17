# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3299/4224 | 主题内编号: b099/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·铁闸门瓮城防御堡 (dripstone_caves_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 deepslate_tiles [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 deepslate_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 dripstone_block []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~3 slot.container 1 copper_ingot 21
replaceitem block ~3 ~-3 ~3 slot.container 2 rotten_flesh 18
replaceitem block ~3 ~-3 ~3 slot.container 3 bone 17
replaceitem block ~3 ~-3 ~3 slot.container 4 gunpowder 10
replaceitem block ~3 ~-3 ~3 slot.container 5 string 11
replaceitem block ~3 ~-3 ~3 slot.container 9 dripstone_block 17
replaceitem block ~3 ~-3 ~3 slot.container 10 iron_ingot 16
replaceitem block ~3 ~-3 ~3 slot.container 11 gold_ingot 6
replaceitem block ~3 ~-3 ~3 slot.container 12 coal 17
replaceitem block ~3 ~-3 ~3 slot.container 13 diamond 4
replaceitem block ~3 ~-3 ~3 slot.container 14 cauldron 5
loot insert ~3 ~-3 ~3 loot "rsf/dripstone_caves"
loot insert ~3 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 deepslate_tiles []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 dripstone_block []
fill ~-5 ~9 ~-5 ~5 ~9 ~5 deepslate_tile_wall []
fill ~-4 ~9 ~-4 ~4 ~9 ~4 air []
setblock ~-5 ~9 ~-5 chiseled_deepslate []
setblock ~-5 ~10 ~-5 lantern []
setblock ~-5 ~9 ~5 chiseled_deepslate []
setblock ~-5 ~10 ~5 lantern []
setblock ~5 ~9 ~-5 chiseled_deepslate []
setblock ~5 ~10 ~-5 lantern []
setblock ~5 ~9 ~5 chiseled_deepslate []
setblock ~5 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 dripstone_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~0 ~2 ~8 ~4 ~2 dripstone_block []
setblock ~8 ~5 ~2 copper_block []
setblock ~8 ~6 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~4 slot.container 1 string 14
replaceitem block ~4 ~1 ~4 slot.container 2 spider_eye 11
replaceitem block ~4 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 5 copper_ingot 16
replaceitem block ~4 ~1 ~4 slot.container 9 lava_bucket 1
replaceitem block ~4 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~4 slot.container 11 lantern 10
replaceitem block ~4 ~1 ~4 slot.container 12 pointed_dripstone 17
replaceitem block ~4 ~1 ~4 slot.container 13 dripstone_block 18
replaceitem block ~4 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~4 ~1 ~4 loot "rsf/dripstone_caves"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
