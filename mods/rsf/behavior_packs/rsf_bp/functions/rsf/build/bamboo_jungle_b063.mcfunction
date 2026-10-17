# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1087/4224 | 主题内编号: b063/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·方尖碑镇压古墓穴 (bamboo_jungle_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 bamboo_mosaic [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 bamboo_mosaic [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 bamboo_mosaic []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 campfire []
setblock ~3 ~-5 ~0 campfire []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 slime_ball 8
replaceitem block ~0 ~-3 ~2 slot.container 1 arrow 19
replaceitem block ~0 ~-3 ~2 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~2 slot.container 3 string 17
replaceitem block ~0 ~-3 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-3 ~2 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~2 slot.container 9 cooked_chicken 9
replaceitem block ~0 ~-3 ~2 slot.container 10 iron_ingot 8
replaceitem block ~0 ~-3 ~2 slot.container 11 emerald 7
replaceitem block ~0 ~-3 ~2 slot.container 12 gold_ingot 8
replaceitem block ~0 ~-3 ~2 slot.container 13 golden_apple 6
replaceitem block ~0 ~-3 ~2 slot.container 14 bow 1
loot insert ~0 ~-3 ~2 loot "rsf/bamboo_jungle"
loot insert ~0 ~-3 ~2 loot "chests/jungle_temple"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 slime_ball 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-3 ~-2 slot.container 3 string 15
replaceitem block ~0 ~-3 ~-2 slot.container 4 rotten_flesh 14
replaceitem block ~0 ~-3 ~-2 slot.container 5 bone 15
replaceitem block ~0 ~-3 ~-2 slot.container 9 cooked_chicken 8
replaceitem block ~0 ~-3 ~-2 slot.container 10 iron_ingot 7
replaceitem block ~0 ~-3 ~-2 slot.container 11 emerald 6
replaceitem block ~0 ~-3 ~-2 slot.container 12 gold_ingot 7
replaceitem block ~0 ~-3 ~-2 slot.container 13 golden_apple 5
replaceitem block ~0 ~-3 ~-2 slot.container 14 bow 1
loot insert ~0 ~-3 ~-2 loot "rsf/bamboo_jungle"
loot insert ~0 ~-3 ~-2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 bamboo_mosaic []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 stripped_bamboo_block []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 stripped_bamboo_block []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 stripped_bamboo_block []
fill ~4 ~1 ~3 ~4 ~8 ~3 stripped_bamboo_block []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 bamboo_mosaic []
fill ~0 ~14 ~0 ~0 ~15 ~0 emerald_block []
setblock ~0 ~16 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 stripped_bamboo_block []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 stripped_bamboo_block []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 stripped_bamboo_block []
fill ~6 ~0 ~2 ~6 ~7 ~2 stripped_bamboo_block []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x5x4) ---
fill ~6 ~1 ~-2 ~6 ~6 ~2 scaffolding []
fill ~5 ~6 ~-2 ~7 ~6 ~2 bamboo_mosaic_slab []
setblock ~6 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 1 string 12
replaceitem block ~4 ~1 ~2 slot.container 2 rotten_flesh 11
replaceitem block ~4 ~1 ~2 slot.container 3 bone 12
replaceitem block ~4 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 9 scaffolding 18
replaceitem block ~4 ~1 ~2 slot.container 10 melon_slice 15
replaceitem block ~4 ~1 ~2 slot.container 11 cooked_chicken 12
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 11
replaceitem block ~4 ~1 ~2 slot.container 13 emerald 10
replaceitem block ~4 ~1 ~2 slot.container 14 gold_ingot 4
loot insert ~4 ~1 ~2 loot "rsf/bamboo_jungle"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 rotten_flesh 14
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 4 slime_ball 6
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 17
replaceitem block ~-4 ~1 ~3 slot.container 9 scaffolding 16
replaceitem block ~-4 ~1 ~3 slot.container 10 melon_slice 13
replaceitem block ~-4 ~1 ~3 slot.container 11 cooked_chicken 10
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 13 emerald 8
replaceitem block ~-4 ~1 ~3 slot.container 14 gold_ingot 9
loot insert ~-4 ~1 ~3 loot "rsf/bamboo_jungle"
loot insert ~-4 ~1 ~3 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
