# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3326/4224 | 主题内编号: b126/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双子主塔天桥宫殿与暗牢 (dripstone_caves_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 cobbled_deepslate [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 cobbled_deepslate_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_tiles []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobbled_deepslate []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 campfire []
setblock ~4 ~-5 ~-4 campfire []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 copper_ingot 21
replaceitem block ~4 ~-3 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~4 ~-3 ~4 slot.container 2 bone 17
replaceitem block ~4 ~-3 ~4 slot.container 3 gunpowder 10
replaceitem block ~4 ~-3 ~4 slot.container 4 string 11
replaceitem block ~4 ~-3 ~4 slot.container 5 spider_eye 8
replaceitem block ~4 ~-3 ~4 slot.container 9 pointed_dripstone 15
replaceitem block ~4 ~-3 ~4 slot.container 10 dripstone_block 16
replaceitem block ~4 ~-3 ~4 slot.container 11 iron_ingot 15
replaceitem block ~4 ~-3 ~4 slot.container 12 gold_ingot 12
replaceitem block ~4 ~-3 ~4 slot.container 13 coal 16
replaceitem block ~4 ~-3 ~4 slot.container 14 diamond 3
loot insert ~4 ~-3 ~4 loot "rsf/dripstone_caves"
loot insert ~4 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~11 ~6 cobbled_deepslate []
fill ~2 ~1 ~-6 ~6 ~11 ~6 cobbled_deepslate []
fill ~-5 ~1 ~-5 ~-3 ~10 ~5 air []
fill ~3 ~1 ~-5 ~5 ~10 ~5 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 dripstone_block []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 dripstone_block []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 cobbled_deepslate []
fill ~0 ~16 ~0 ~0 ~18 ~0 iron_block []
setblock ~0 ~19 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 dripstone_block []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 campfire []
setblock ~2 ~4 ~-9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~9 ~0 ~1 ~9 ~6 ~1 dripstone_block []
setblock ~9 ~7 ~1 copper_block []
setblock ~9 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 arrow 22
replaceitem block ~-5 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 2 copper_ingot 16
replaceitem block ~-5 ~1 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~5 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~5 slot.container 10 lantern 8
replaceitem block ~-5 ~1 ~5 slot.container 11 pointed_dripstone 15
replaceitem block ~-5 ~1 ~5 slot.container 12 dripstone_block 16
replaceitem block ~-5 ~1 ~5 slot.container 13 iron_ingot 15
replaceitem block ~-5 ~1 ~5 slot.container 14 gold_ingot 12
loot insert ~-5 ~1 ~5 loot "rsf/dripstone_caves"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 copper_ingot 19
replaceitem block ~5 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~5 slot.container 2 bone 15
replaceitem block ~5 ~1 ~5 slot.container 3 gunpowder 16
replaceitem block ~5 ~1 ~5 slot.container 4 string 17
replaceitem block ~5 ~1 ~5 slot.container 5 spider_eye 6
replaceitem block ~5 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~5 slot.container 10 lantern 6
replaceitem block ~5 ~1 ~5 slot.container 11 pointed_dripstone 13
replaceitem block ~5 ~1 ~5 slot.container 12 dripstone_block 14
replaceitem block ~5 ~1 ~5 slot.container 13 iron_ingot 13
replaceitem block ~5 ~1 ~5 slot.container 14 gold_ingot 10
loot insert ~5 ~1 ~5 loot "rsf/dripstone_caves"
loot insert ~5 ~1 ~5 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
