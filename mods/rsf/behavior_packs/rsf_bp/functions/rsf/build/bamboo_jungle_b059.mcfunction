# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1083/4224 | 主题内编号: b059/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·阶梯金字塔法老墓室 (bamboo_jungle_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 bamboo_mosaic [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 bamboo_mosaic [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 bamboo_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 jungle_planks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 slime_ball 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 19
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 string 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 emerald 5
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 6
replaceitem block ~0 ~-3 ~-4 slot.container 11 golden_apple 4
replaceitem block ~0 ~-3 ~-4 slot.container 12 bow 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 lantern 9
replaceitem block ~0 ~-3 ~-4 slot.container 14 bamboo 38
loot insert ~0 ~-3 ~-4 loot "rsf/bamboo_jungle"
loot insert ~0 ~-3 ~-4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 bamboo_mosaic []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 stone_bricks []
fill ~-5 ~5 ~-4 ~5 ~6 ~4 jungle_planks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 bamboo_mosaic_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 stone_bricks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 jungle_planks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 emerald_block []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 stripped_bamboo_block []
setblock ~-9 ~4 ~-8 campfire []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 stripped_bamboo_block []
setblock ~-9 ~4 ~8 campfire []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 stripped_bamboo_block []
setblock ~9 ~4 ~-8 campfire []
fill ~9 ~0 ~8 ~9 ~3 ~8 stripped_bamboo_block []
setblock ~9 ~4 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~8 ~1 ~-2 ~8 ~7 ~2 scaffolding []
fill ~7 ~7 ~-2 ~9 ~7 ~2 bamboo_mosaic_slab []
setblock ~8 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-6 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 2 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 string 12
replaceitem block ~6 ~1 ~4 slot.container 9 lantern 9
replaceitem block ~6 ~1 ~4 slot.container 10 bamboo 38
replaceitem block ~6 ~1 ~4 slot.container 11 scaffolding 16
replaceitem block ~6 ~1 ~4 slot.container 12 melon_slice 13
replaceitem block ~6 ~1 ~4 slot.container 13 cooked_chicken 10
replaceitem block ~6 ~1 ~4 slot.container 14 iron_ingot 9
loot insert ~6 ~1 ~4 loot "rsf/bamboo_jungle"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 slime_ball 6
replaceitem block ~-6 ~1 ~5 slot.container 1 arrow 17
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 string 15
replaceitem block ~-6 ~1 ~5 slot.container 4 rotten_flesh 14
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 9 lantern 7
replaceitem block ~-6 ~1 ~5 slot.container 10 bamboo 36
replaceitem block ~-6 ~1 ~5 slot.container 11 scaffolding 21
replaceitem block ~-6 ~1 ~5 slot.container 12 melon_slice 18
replaceitem block ~-6 ~1 ~5 slot.container 13 cooked_chicken 8
replaceitem block ~-6 ~1 ~5 slot.container 14 iron_ingot 7
loot insert ~-6 ~1 ~5 loot "rsf/bamboo_jungle"
loot insert ~-6 ~1 ~5 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
