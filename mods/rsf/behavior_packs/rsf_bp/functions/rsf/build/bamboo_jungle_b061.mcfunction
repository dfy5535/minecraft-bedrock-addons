# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1085/4224 | 主题内编号: b061/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双子封土古墓地宫 (bamboo_jungle_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 bamboo_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 bamboo_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 bamboo_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mossy_stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 mossy_stone_bricks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 bamboo_mosaic []
setblock ~0 ~-6 ~0 scaffolding []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 string 17
replaceitem block ~0 ~-3 ~-2 slot.container 2 rotten_flesh 16
replaceitem block ~0 ~-3 ~-2 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~-2 slot.container 4 spider_eye 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 9 scaffolding 19
replaceitem block ~0 ~-3 ~-2 slot.container 10 melon_slice 16
replaceitem block ~0 ~-3 ~-2 slot.container 11 cooked_chicken 13
replaceitem block ~0 ~-3 ~-2 slot.container 12 iron_ingot 12
replaceitem block ~0 ~-3 ~-2 slot.container 13 emerald 4
replaceitem block ~0 ~-3 ~-2 slot.container 14 gold_ingot 5
loot insert ~0 ~-3 ~-2 loot "rsf/bamboo_jungle"
loot insert ~0 ~-3 ~-2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 bamboo_planks []
fill ~2 ~1 ~-4 ~7 ~6 ~4 bamboo_planks []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 bamboo_mosaic []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 bamboo_mosaic []
fill ~-6 ~7 ~-3 ~6 ~7 ~3 mossy_stone_bricks []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 chiseled_stone_bricks []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 bamboo_mosaic []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~8 ~1 ~-2 ~8 ~4 ~2 scaffolding []
fill ~7 ~4 ~-2 ~9 ~4 ~2 bamboo_mosaic_slab []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~3 smithing_table []
setblock ~-5 ~1 ~3 anvil []
setblock ~5 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 slime_ball 11
replaceitem block ~6 ~1 ~2 slot.container 1 arrow 22
replaceitem block ~6 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~2 slot.container 3 string 12
replaceitem block ~6 ~1 ~2 slot.container 4 rotten_flesh 11
replaceitem block ~6 ~1 ~2 slot.container 5 bone 12
replaceitem block ~6 ~1 ~2 slot.container 9 emerald 4
replaceitem block ~6 ~1 ~2 slot.container 10 gold_ingot 5
replaceitem block ~6 ~1 ~2 slot.container 11 golden_apple 3
replaceitem block ~6 ~1 ~2 slot.container 12 bow 1
replaceitem block ~6 ~1 ~2 slot.container 13 lantern 8
replaceitem block ~6 ~1 ~2 slot.container 14 bamboo 37
loot insert ~6 ~1 ~2 loot "rsf/bamboo_jungle"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~3 slot.container 1 string 15
replaceitem block ~-6 ~1 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~-6 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-6 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-6 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-6 ~1 ~3 slot.container 9 emerald 9
replaceitem block ~-6 ~1 ~3 slot.container 10 gold_ingot 10
replaceitem block ~-6 ~1 ~3 slot.container 11 golden_apple 1
replaceitem block ~-6 ~1 ~3 slot.container 12 bow 1
replaceitem block ~-6 ~1 ~3 slot.container 13 lantern 6
replaceitem block ~-6 ~1 ~3 slot.container 14 bamboo 35
loot insert ~-6 ~1 ~3 loot "rsf/bamboo_jungle"
loot insert ~-6 ~1 ~3 loot "chests/jungle_temple"
summon parrot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
