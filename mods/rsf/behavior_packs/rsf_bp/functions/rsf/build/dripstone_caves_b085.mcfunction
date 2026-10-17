# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3285/4224 | 主题内编号: b085/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双子烟囱砖石窑厂 (dripstone_caves_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~11 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 tuff []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 deepslate_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 rotten_flesh 18
replaceitem block ~3 ~-3 ~3 slot.container 1 bone 17
replaceitem block ~3 ~-3 ~3 slot.container 2 gunpowder 10
replaceitem block ~3 ~-3 ~3 slot.container 3 string 11
replaceitem block ~3 ~-3 ~3 slot.container 4 spider_eye 8
replaceitem block ~3 ~-3 ~3 slot.container 5 arrow 19
replaceitem block ~3 ~-3 ~3 slot.container 9 dripstone_block 13
replaceitem block ~3 ~-3 ~3 slot.container 10 iron_ingot 12
replaceitem block ~3 ~-3 ~3 slot.container 11 gold_ingot 9
replaceitem block ~3 ~-3 ~3 slot.container 12 coal 20
replaceitem block ~3 ~-3 ~3 slot.container 13 diamond 7
replaceitem block ~3 ~-3 ~3 slot.container 14 cauldron 8
loot insert ~3 ~-3 ~3 loot "rsf/dripstone_caves"
loot insert ~3 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~10 ~5 deepslate_bricks []
fill ~2 ~1 ~-5 ~5 ~10 ~5 deepslate_bricks []
fill ~-4 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~4 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 dripstone_block []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 dripstone_block []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 deepslate_bricks []
fill ~0 ~15 ~0 ~0 ~17 ~0 raw_copper_block []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 dripstone_block []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 polished_deepslate []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 polished_deepslate []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~8 ~0 ~-2 ~8 ~5 ~-2 dripstone_block []
setblock ~8 ~6 ~-2 copper_block []
setblock ~8 ~7 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 3 copper_ingot 16
replaceitem block ~4 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~4 slot.container 5 bone 12
replaceitem block ~4 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~4 ~1 ~4 slot.container 10 cauldron 5
replaceitem block ~4 ~1 ~4 slot.container 11 lava_bucket 1
replaceitem block ~4 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~4 slot.container 13 lantern 12
replaceitem block ~4 ~1 ~4 slot.container 14 pointed_dripstone 12
loot insert ~4 ~1 ~4 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
