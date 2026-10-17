# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1039/4224 | 主题内编号: b015/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·竖井阶梯深渊地牢 (bamboo_jungle_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 bamboo_mosaic [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 bamboo_mosaic [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 bamboo_mosaic []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 campfire []
setblock ~3 ~-6 ~-2 campfire []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~3 ~-4 ~2 slot.container 1 bone 17
replaceitem block ~3 ~-4 ~2 slot.container 2 spider_eye 6
replaceitem block ~3 ~-4 ~2 slot.container 3 gunpowder 9
replaceitem block ~3 ~-4 ~2 slot.container 4 slime_ball 8
replaceitem block ~3 ~-4 ~2 slot.container 5 arrow 19
replaceitem block ~3 ~-4 ~2 slot.container 9 lantern 9
replaceitem block ~3 ~-4 ~2 slot.container 10 bamboo 38
replaceitem block ~3 ~-4 ~2 slot.container 11 scaffolding 16
replaceitem block ~3 ~-4 ~2 slot.container 12 melon_slice 13
replaceitem block ~3 ~-4 ~2 slot.container 13 cooked_chicken 10
replaceitem block ~3 ~-4 ~2 slot.container 14 iron_ingot 9
loot insert ~3 ~-4 ~2 loot "rsf/bamboo_jungle"
loot insert ~3 ~-4 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 bamboo_mosaic []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 jungle_planks []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 bamboo_mosaic_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~7 ~-2 ~2 ~8 ~2 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~11 ~1 bamboo_mosaic []
fill ~0 ~12 ~0 ~0 ~13 ~0 emerald_block []
setblock ~0 ~14 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 stripped_bamboo_block []
setblock ~-7 ~4 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 stripped_bamboo_block []
setblock ~-7 ~4 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 stripped_bamboo_block []
setblock ~7 ~4 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~3 ~6 stripped_bamboo_block []
setblock ~7 ~4 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x5x6) ---
fill ~6 ~1 ~-2 ~6 ~8 ~2 scaffolding []
fill ~5 ~8 ~-2 ~7 ~8 ~2 bamboo_mosaic_slab []
setblock ~6 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 1 string 12
replaceitem block ~4 ~1 ~2 slot.container 2 rotten_flesh 11
replaceitem block ~4 ~1 ~2 slot.container 3 bone 12
replaceitem block ~4 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 9 golden_apple 4
replaceitem block ~4 ~1 ~2 slot.container 10 bow 1
replaceitem block ~4 ~1 ~2 slot.container 11 lantern 9
replaceitem block ~4 ~1 ~2 slot.container 12 bamboo 38
replaceitem block ~4 ~1 ~2 slot.container 13 scaffolding 16
replaceitem block ~4 ~1 ~2 slot.container 14 melon_slice 13
loot insert ~4 ~1 ~2 loot "rsf/bamboo_jungle"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 rotten_flesh 14
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 4 slime_ball 6
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 17
replaceitem block ~-4 ~1 ~3 slot.container 9 golden_apple 2
replaceitem block ~-4 ~1 ~3 slot.container 10 bow 1
replaceitem block ~-4 ~1 ~3 slot.container 11 lantern 7
replaceitem block ~-4 ~1 ~3 slot.container 12 bamboo 36
replaceitem block ~-4 ~1 ~3 slot.container 13 scaffolding 21
replaceitem block ~-4 ~1 ~3 slot.container 14 melon_slice 18
loot insert ~-4 ~1 ~3 loot "rsf/bamboo_jungle"
loot insert ~-4 ~1 ~3 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
