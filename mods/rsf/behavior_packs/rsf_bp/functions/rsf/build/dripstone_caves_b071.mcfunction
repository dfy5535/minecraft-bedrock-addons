# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3271/4224 | 主题内编号: b071/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·残破双子哨所遗迹 (dripstone_caves_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_tiles [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_tiles [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 deepslate_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 dripstone_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~9 ~5 deepslate_tiles []
fill ~2 ~1 ~-5 ~5 ~9 ~5 deepslate_tiles []
fill ~-4 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~4 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 dripstone_block []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 deepslate_tile_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 polished_deepslate []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~0 ~-1 ~8 ~6 ~-1 dripstone_block []
setblock ~8 ~7 ~-1 copper_block []
setblock ~8 ~8 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 1 copper_ingot 16
replaceitem block ~4 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~4 slot.container 3 bone 12
replaceitem block ~4 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~4 slot.container 5 string 14
replaceitem block ~4 ~1 ~4 slot.container 9 gold_ingot 8
replaceitem block ~4 ~1 ~4 slot.container 10 coal 19
replaceitem block ~4 ~1 ~4 slot.container 11 diamond 6
replaceitem block ~4 ~1 ~4 slot.container 12 cauldron 7
replaceitem block ~4 ~1 ~4 slot.container 13 lava_bucket 1
replaceitem block ~4 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~4 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
