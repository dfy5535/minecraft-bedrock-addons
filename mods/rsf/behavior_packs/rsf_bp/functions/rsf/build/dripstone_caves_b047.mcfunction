# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3247/4224 | 主题内编号: b047/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·深渊跨桥决斗长台 (dripstone_caves_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 dripstone_block []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 rotten_flesh 18
replaceitem block ~-4 ~-4 ~3 slot.container 1 bone 17
replaceitem block ~-4 ~-4 ~3 slot.container 2 gunpowder 10
replaceitem block ~-4 ~-4 ~3 slot.container 3 string 11
replaceitem block ~-4 ~-4 ~3 slot.container 4 spider_eye 8
replaceitem block ~-4 ~-4 ~3 slot.container 5 arrow 19
replaceitem block ~-4 ~-4 ~3 slot.container 9 lava_bucket 1
replaceitem block ~-4 ~-4 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~-4 ~-4 ~3 slot.container 11 lantern 8
replaceitem block ~-4 ~-4 ~3 slot.container 12 pointed_dripstone 15
replaceitem block ~-4 ~-4 ~3 slot.container 13 dripstone_block 16
replaceitem block ~-4 ~-4 ~3 slot.container 14 iron_ingot 15
loot insert ~-4 ~-4 ~3 loot "rsf/dripstone_caves"
loot insert ~-4 ~-4 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 deepslate_tiles []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 chiseled_deepslate []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 chiseled_deepslate []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 chiseled_deepslate []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 chiseled_deepslate []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 chiseled_deepslate []
setblock ~-8 ~6 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 chiseled_deepslate []
setblock ~-8 ~6 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 chiseled_deepslate []
setblock ~8 ~6 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 chiseled_deepslate []
setblock ~8 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~9 ~0 ~0 ~9 ~7 ~0 dripstone_block []
setblock ~9 ~8 ~0 copper_block []
setblock ~9 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 copper_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 1 copper_ingot 16
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~5 ~1 ~4 slot.container 3 bone 12
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~4 slot.container 5 string 14
replaceitem block ~5 ~1 ~4 slot.container 9 dripstone_block 18
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 11 gold_ingot 7
replaceitem block ~5 ~1 ~4 slot.container 12 coal 18
replaceitem block ~5 ~1 ~4 slot.container 13 diamond 5
replaceitem block ~5 ~1 ~4 slot.container 14 cauldron 6
loot insert ~5 ~1 ~4 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
