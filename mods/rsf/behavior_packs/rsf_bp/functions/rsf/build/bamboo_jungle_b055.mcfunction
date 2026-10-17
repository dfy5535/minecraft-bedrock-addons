# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1079/4224 | 主题内编号: b055/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·木栅栏防御拓荒哨所 (bamboo_jungle_outpost_palisade_fort)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
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
replaceitem block ~4 ~-2 ~3 slot.container 9 scaffolding 20
replaceitem block ~4 ~-2 ~3 slot.container 10 melon_slice 17
replaceitem block ~4 ~-2 ~3 slot.container 11 cooked_chicken 14
replaceitem block ~4 ~-2 ~3 slot.container 12 iron_ingot 6
replaceitem block ~4 ~-2 ~3 slot.container 13 emerald 5
replaceitem block ~4 ~-2 ~3 slot.container 14 gold_ingot 6
loot insert ~4 ~-2 ~3 loot "rsf/bamboo_jungle"
loot insert ~4 ~-2 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 bamboo_mosaic []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~7 ~-4 stone_bricks []
setblock ~-6 ~8 ~-5 campfire []
fill ~-6 ~1 ~4 ~-5 ~7 ~5 stone_bricks []
setblock ~-6 ~8 ~4 campfire []
fill ~5 ~1 ~-5 ~6 ~7 ~-4 stone_bricks []
setblock ~5 ~8 ~-5 campfire []
fill ~5 ~1 ~4 ~6 ~7 ~5 stone_bricks []
setblock ~5 ~8 ~4 campfire []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 stone_bricks []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 bamboo_fence []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 air []
setblock ~-6 ~6 ~-5 stripped_bamboo_block []
setblock ~-6 ~7 ~-5 campfire []
setblock ~-6 ~6 ~5 stripped_bamboo_block []
setblock ~-6 ~7 ~5 campfire []
setblock ~6 ~6 ~-5 stripped_bamboo_block []
setblock ~6 ~7 ~-5 campfire []
setblock ~6 ~6 ~5 stripped_bamboo_block []
setblock ~6 ~7 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 bamboo_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~7 ~1 ~-2 ~7 ~8 ~2 scaffolding []
fill ~6 ~8 ~-2 ~8 ~8 ~2 bamboo_mosaic_slab []
setblock ~7 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 1 string 12
replaceitem block ~5 ~1 ~3 slot.container 2 rotten_flesh 11
replaceitem block ~5 ~1 ~3 slot.container 3 bone 12
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 9 golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 10 bow 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 7
replaceitem block ~5 ~1 ~3 slot.container 12 bamboo 36
replaceitem block ~5 ~1 ~3 slot.container 13 scaffolding 21
replaceitem block ~5 ~1 ~3 slot.container 14 melon_slice 18
loot insert ~5 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 17
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 10 bow 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 5
replaceitem block ~-5 ~1 ~4 slot.container 12 bamboo 34
replaceitem block ~-5 ~1 ~4 slot.container 13 scaffolding 19
replaceitem block ~-5 ~1 ~4 slot.container 14 melon_slice 16
loot insert ~-5 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~4 loot "chests/jungle_temple"
summon parrot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
