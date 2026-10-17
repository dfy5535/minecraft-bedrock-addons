# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1145/4224 | 主题内编号: b121/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·卫城廊柱王座大殿与地宫 (bamboo_jungle_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 bamboo_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 bamboo_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 bamboo_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bamboo_planks []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 lantern []
setblock ~5 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 1 string 17
replaceitem block ~0 ~-3 ~4 slot.container 2 rotten_flesh 16
replaceitem block ~0 ~-3 ~4 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~4 slot.container 4 spider_eye 6
replaceitem block ~0 ~-3 ~4 slot.container 5 gunpowder 9
replaceitem block ~0 ~-3 ~4 slot.container 9 golden_apple 4
replaceitem block ~0 ~-3 ~4 slot.container 10 bow 1
replaceitem block ~0 ~-3 ~4 slot.container 11 lantern 9
replaceitem block ~0 ~-3 ~4 slot.container 12 bamboo 38
replaceitem block ~0 ~-3 ~4 slot.container 13 scaffolding 16
replaceitem block ~0 ~-3 ~4 slot.container 14 melon_slice 13
loot insert ~0 ~-3 ~4 loot "rsf/bamboo_jungle"
loot insert ~0 ~-3 ~4 loot "chests/jungle_temple"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 2 rotten_flesh 14
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 spider_eye 12
replaceitem block ~0 ~-3 ~-4 slot.container 5 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_apple 3
replaceitem block ~0 ~-3 ~-4 slot.container 10 bow 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 lantern 8
replaceitem block ~0 ~-3 ~-4 slot.container 12 bamboo 37
replaceitem block ~0 ~-3 ~-4 slot.container 13 scaffolding 22
replaceitem block ~0 ~-3 ~-4 slot.container 14 melon_slice 12
loot insert ~0 ~-3 ~-4 loot "rsf/bamboo_jungle"
loot insert ~0 ~-3 ~-4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~7 ~6 bamboo_planks []
fill ~-6 ~1 ~0 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 bamboo_block []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 bamboo_block []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 bamboo_block []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 bamboo_block []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 bamboo_block []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 bamboo_block []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 bamboo_block []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 bamboo_block []
fill ~-7 ~7 ~-6 ~7 ~7 ~-1 bamboo_mosaic []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~8 ~-7 ~-8 ~8 ~7 bamboo_stairs ["weirdo_direction"=0]
fill ~8 ~8 ~-7 ~8 ~8 ~7 bamboo_stairs ["weirdo_direction"=1]
fill ~-7 ~9 ~-6 ~-7 ~9 ~6 bamboo_stairs ["weirdo_direction"=0]
fill ~7 ~9 ~-6 ~7 ~9 ~6 bamboo_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-6 ~6 ~9 ~6 bamboo_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 bamboo_mosaic []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 bamboo_block []
setblock ~-9 ~4 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 bamboo_block []
setblock ~-9 ~4 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 bamboo_block []
setblock ~9 ~4 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~3 ~8 bamboo_block []
setblock ~9 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~1 ~-2 ~8 ~4 ~2 scaffolding []
fill ~7 ~4 ~-2 ~9 ~4 ~2 bamboo_mosaic_slab []
setblock ~8 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 scaffolding []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 rotten_flesh 11
replaceitem block ~6 ~1 ~4 slot.container 1 bone 12
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 4 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 5 arrow 22
replaceitem block ~6 ~1 ~4 slot.container 9 emerald 8
replaceitem block ~6 ~1 ~4 slot.container 10 gold_ingot 9
replaceitem block ~6 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~6 ~1 ~4 slot.container 12 bow 1
replaceitem block ~6 ~1 ~4 slot.container 13 lantern 5
replaceitem block ~6 ~1 ~4 slot.container 14 bamboo 34
loot insert ~6 ~1 ~4 loot "rsf/bamboo_jungle"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 2 slime_ball 6
replaceitem block ~-6 ~1 ~5 slot.container 3 arrow 17
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 5 string 15
replaceitem block ~-6 ~1 ~5 slot.container 9 emerald 6
replaceitem block ~-6 ~1 ~5 slot.container 10 gold_ingot 7
replaceitem block ~-6 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~-6 ~1 ~5 slot.container 12 bow 1
replaceitem block ~-6 ~1 ~5 slot.container 13 lantern 10
replaceitem block ~-6 ~1 ~5 slot.container 14 bamboo 32
loot insert ~-6 ~1 ~5 loot "rsf/bamboo_jungle"
loot insert ~-6 ~1 ~5 loot "chests/jungle_temple"
summon parrot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
