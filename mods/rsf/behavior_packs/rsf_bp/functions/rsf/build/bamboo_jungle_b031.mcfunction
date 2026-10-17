# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1055/4224 | 主题内编号: b031/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·阶梯圣火烽火台 (bamboo_jungle_tower_ziggurat_fire)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bamboo_mosaic [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bamboo_mosaic [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 jungle_planks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 1 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 2 slime_ball 8
replaceitem block ~4 ~-2 ~3 slot.container 3 arrow 19
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 5 string 17
replaceitem block ~4 ~-2 ~3 slot.container 9 lantern 5
replaceitem block ~4 ~-2 ~3 slot.container 10 bamboo 34
replaceitem block ~4 ~-2 ~3 slot.container 11 scaffolding 19
replaceitem block ~4 ~-2 ~3 slot.container 12 melon_slice 16
replaceitem block ~4 ~-2 ~3 slot.container 13 cooked_chicken 13
replaceitem block ~4 ~-2 ~3 slot.container 14 iron_ingot 12
loot insert ~4 ~-2 ~3 loot "rsf/bamboo_jungle"
loot insert ~4 ~-2 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 bamboo_mosaic []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 stone_bricks []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 jungle_planks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 bamboo_mosaic_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-5 ~-6 ~10 ~-5 stripped_bamboo_block []
setblock ~-6 ~11 ~-5 campfire []
fill ~-6 ~8 ~5 ~-6 ~10 ~5 stripped_bamboo_block []
setblock ~-6 ~11 ~5 campfire []
fill ~6 ~8 ~-5 ~6 ~10 ~-5 stripped_bamboo_block []
setblock ~6 ~11 ~-5 campfire []
fill ~6 ~8 ~5 ~6 ~10 ~5 stripped_bamboo_block []
setblock ~6 ~11 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 stripped_bamboo_block []
setblock ~-8 ~4 ~-7 campfire []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 stripped_bamboo_block []
setblock ~-8 ~4 ~7 campfire []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 stripped_bamboo_block []
setblock ~8 ~4 ~-7 campfire []
fill ~8 ~0 ~7 ~8 ~3 ~7 stripped_bamboo_block []
setblock ~8 ~4 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~1 ~-2 ~7 ~4 ~2 scaffolding []
fill ~6 ~4 ~-2 ~8 ~4 ~2 bamboo_mosaic_slab []
setblock ~7 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 1 string 12
replaceitem block ~5 ~1 ~3 slot.container 2 rotten_flesh 11
replaceitem block ~5 ~1 ~3 slot.container 3 bone 12
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 9 emerald 9
replaceitem block ~5 ~1 ~3 slot.container 10 gold_ingot 10
replaceitem block ~5 ~1 ~3 slot.container 11 golden_apple 1
replaceitem block ~5 ~1 ~3 slot.container 12 bow 1
replaceitem block ~5 ~1 ~3 slot.container 13 lantern 6
replaceitem block ~5 ~1 ~3 slot.container 14 bamboo 35
loot insert ~5 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 17
replaceitem block ~-5 ~1 ~4 slot.container 9 emerald 7
replaceitem block ~-5 ~1 ~4 slot.container 10 gold_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 12 bow 1
replaceitem block ~-5 ~1 ~4 slot.container 13 lantern 4
replaceitem block ~-5 ~1 ~4 slot.container 14 bamboo 33
loot insert ~-5 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~4 loot "chests/jungle_temple"
summon parrot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
