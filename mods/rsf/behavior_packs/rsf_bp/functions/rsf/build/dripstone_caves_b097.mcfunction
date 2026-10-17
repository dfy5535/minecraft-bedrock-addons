# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3297/4224 | 主题内编号: b097/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·八角射击孔防御棱堡 (dripstone_caves_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 tuff []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 dripstone_block []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 string 11
replaceitem block ~-2 ~-2 ~3 slot.container 1 spider_eye 8
replaceitem block ~-2 ~-2 ~3 slot.container 2 arrow 19
replaceitem block ~-2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~-2 ~-2 ~3 slot.container 4 copper_ingot 21
replaceitem block ~-2 ~-2 ~3 slot.container 5 rotten_flesh 18
replaceitem block ~-2 ~-2 ~3 slot.container 9 coal 19
replaceitem block ~-2 ~-2 ~3 slot.container 10 diamond 6
replaceitem block ~-2 ~-2 ~3 slot.container 11 cauldron 7
replaceitem block ~-2 ~-2 ~3 slot.container 12 lava_bucket 1
replaceitem block ~-2 ~-2 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~-2 ~-2 ~3 slot.container 14 lantern 7
loot insert ~-2 ~-2 ~3 loot "rsf/dripstone_caves"
loot insert ~-2 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 deepslate_bricks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 air []
fill ~5 ~1 ~6 ~5 ~9 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 polished_deepslate []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 polished_deepslate []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 polished_deepslate []
fill ~4 ~1 ~5 ~4 ~8 ~5 polished_deepslate []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dripstone_block []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 deepslate_brick_wall []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~-5 ~9 ~-6 polished_deepslate []
setblock ~-5 ~10 ~-6 torch []
setblock ~-5 ~9 ~6 polished_deepslate []
setblock ~-5 ~10 ~6 torch []
setblock ~5 ~9 ~-6 polished_deepslate []
setblock ~5 ~10 ~-6 torch []
setblock ~5 ~9 ~6 polished_deepslate []
setblock ~5 ~10 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 polished_deepslate []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 polished_deepslate []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 polished_deepslate []
fill ~6 ~0 ~2 ~6 ~7 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~2 ~8 ~7 ~2 dripstone_block []
setblock ~8 ~8 ~2 copper_block []
setblock ~8 ~9 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 1 bone 12
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 3 string 14
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 9 dripstone_block 12
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 12 coal 19
replaceitem block ~4 ~1 ~5 slot.container 13 diamond 6
replaceitem block ~4 ~1 ~5 slot.container 14 cauldron 7
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
