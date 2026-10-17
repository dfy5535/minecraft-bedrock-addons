# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3216/4224 | 主题内编号: b016/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·要塞地底重装暗牢 (dripstone_caves_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 dripstone_block [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 dripstone_block [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_deepslate []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dripstone_block []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 lantern []
setblock ~4 ~-5 ~0 lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 arrow 19
replaceitem block ~0 ~-3 ~5 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 2 copper_ingot 21
replaceitem block ~0 ~-3 ~5 slot.container 3 rotten_flesh 18
replaceitem block ~0 ~-3 ~5 slot.container 4 bone 17
replaceitem block ~0 ~-3 ~5 slot.container 5 gunpowder 10
replaceitem block ~0 ~-3 ~5 slot.container 9 pointed_dripstone 14
replaceitem block ~0 ~-3 ~5 slot.container 10 dripstone_block 15
replaceitem block ~0 ~-3 ~5 slot.container 11 iron_ingot 14
replaceitem block ~0 ~-3 ~5 slot.container 12 gold_ingot 11
replaceitem block ~0 ~-3 ~5 slot.container 13 coal 22
replaceitem block ~0 ~-3 ~5 slot.container 14 diamond 2
loot insert ~0 ~-3 ~5 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~5 loot "chests/abandoned_mineshaft"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 arrow 17
replaceitem block ~0 ~-3 ~-5 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-3 ~-5 slot.container 2 copper_ingot 19
replaceitem block ~0 ~-3 ~-5 slot.container 3 rotten_flesh 16
replaceitem block ~0 ~-3 ~-5 slot.container 4 bone 15
replaceitem block ~0 ~-3 ~-5 slot.container 5 gunpowder 16
replaceitem block ~0 ~-3 ~-5 slot.container 9 pointed_dripstone 13
replaceitem block ~0 ~-3 ~-5 slot.container 10 dripstone_block 14
replaceitem block ~0 ~-3 ~-5 slot.container 11 iron_ingot 13
replaceitem block ~0 ~-3 ~-5 slot.container 12 gold_ingot 10
replaceitem block ~0 ~-3 ~-5 slot.container 13 coal 21
replaceitem block ~0 ~-3 ~-5 slot.container 14 diamond 8
loot insert ~0 ~-3 ~-5 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~-5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 dripstone_block []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 deepslate_bricks []
setblock ~-6 ~10 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 deepslate_bricks []
setblock ~-6 ~10 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 deepslate_bricks []
setblock ~5 ~10 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~9 ~7 deepslate_bricks []
setblock ~5 ~10 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 deepslate_bricks []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 deepslate_brick_wall []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 cobbled_deepslate []
setblock ~-6 ~9 ~-7 lantern []
setblock ~-6 ~8 ~7 cobbled_deepslate []
setblock ~-6 ~9 ~7 lantern []
setblock ~6 ~8 ~-7 cobbled_deepslate []
setblock ~6 ~9 ~-7 lantern []
setblock ~6 ~8 ~7 cobbled_deepslate []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 deepslate_brick_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~9 ~0 ~3 ~9 ~6 ~3 dripstone_block []
setblock ~9 ~7 ~3 copper_block []
setblock ~9 ~8 ~3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 copper_ingot 16
replaceitem block ~-5 ~1 ~6 slot.container 1 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~6 slot.container 4 string 14
replaceitem block ~-5 ~1 ~6 slot.container 5 spider_eye 11
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 10
replaceitem block ~-5 ~1 ~6 slot.container 11 pointed_dripstone 17
replaceitem block ~-5 ~1 ~6 slot.container 12 dripstone_block 18
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_ingot 10
replaceitem block ~-5 ~1 ~6 slot.container 14 gold_ingot 7
loot insert ~-5 ~1 ~6 loot "rsf/dripstone_caves"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 15
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 16
replaceitem block ~5 ~1 ~6 slot.container 2 string 17
replaceitem block ~5 ~1 ~6 slot.container 3 spider_eye 6
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 8
replaceitem block ~5 ~1 ~6 slot.container 11 pointed_dripstone 15
replaceitem block ~5 ~1 ~6 slot.container 12 dripstone_block 16
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 15
replaceitem block ~5 ~1 ~6 slot.container 14 gold_ingot 12
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
loot insert ~5 ~1 ~6 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
