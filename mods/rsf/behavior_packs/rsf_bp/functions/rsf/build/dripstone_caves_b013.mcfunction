# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3213/4224 | 主题内编号: b013/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·地底熔炉苦工地牢 (dripstone_caves_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 deepslate_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 deepslate_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 tuff []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 deepslate_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 rotten_flesh 18
replaceitem block ~3 ~-4 ~5 slot.container 1 bone 17
replaceitem block ~3 ~-4 ~5 slot.container 2 gunpowder 10
replaceitem block ~3 ~-4 ~5 slot.container 3 string 11
replaceitem block ~3 ~-4 ~5 slot.container 4 spider_eye 8
replaceitem block ~3 ~-4 ~5 slot.container 5 arrow 19
replaceitem block ~3 ~-4 ~5 slot.container 9 diamond 8
replaceitem block ~3 ~-4 ~5 slot.container 10 cauldron 2
replaceitem block ~3 ~-4 ~5 slot.container 11 lava_bucket 1
replaceitem block ~3 ~-4 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~-4 ~5 slot.container 13 lantern 9
replaceitem block ~3 ~-4 ~5 slot.container 14 pointed_dripstone 16
loot insert ~3 ~-4 ~5 loot "rsf/dripstone_caves"
loot insert ~3 ~-4 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~7 ~7 deepslate_bricks []
fill ~-4 ~1 ~-6 ~4 ~6 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~7 ~-7 polished_deepslate []
fill ~-5 ~1 ~7 ~-5 ~7 ~7 polished_deepslate []
fill ~5 ~1 ~-7 ~5 ~7 ~-7 polished_deepslate []
fill ~5 ~1 ~7 ~5 ~7 ~7 polished_deepslate []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 deepslate_brick_wall []
setblock ~5 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 dripstone_block []
fill ~-5 ~8 ~-7 ~5 ~8 ~7 deepslate_brick_wall []
fill ~-4 ~8 ~-6 ~4 ~8 ~6 air []
setblock ~-5 ~8 ~-7 polished_deepslate []
setblock ~-5 ~9 ~-7 torch []
setblock ~-5 ~8 ~7 polished_deepslate []
setblock ~-5 ~9 ~7 torch []
setblock ~5 ~8 ~-7 polished_deepslate []
setblock ~5 ~9 ~-7 torch []
setblock ~5 ~8 ~7 polished_deepslate []
setblock ~5 ~9 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 cobbled_deepslate []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~0 ~8 ~8 ~0 dripstone_block []
setblock ~8 ~9 ~0 copper_block []
setblock ~8 ~10 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~6 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~6 slot.container 3 copper_ingot 16
replaceitem block ~4 ~1 ~6 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~6 slot.container 5 bone 12
replaceitem block ~4 ~1 ~6 slot.container 9 lantern 6
replaceitem block ~4 ~1 ~6 slot.container 10 pointed_dripstone 13
replaceitem block ~4 ~1 ~6 slot.container 11 dripstone_block 14
replaceitem block ~4 ~1 ~6 slot.container 12 iron_ingot 13
replaceitem block ~4 ~1 ~6 slot.container 13 gold_ingot 10
replaceitem block ~4 ~1 ~6 slot.container 14 coal 21
loot insert ~4 ~1 ~6 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
