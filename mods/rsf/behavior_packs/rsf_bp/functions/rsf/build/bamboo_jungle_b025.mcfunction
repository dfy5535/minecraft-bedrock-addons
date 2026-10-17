# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1049/4224 | 主题内编号: b025/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·雉堞女墙四方哨塔 (bamboo_jungle_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x9 | 地上高度 9格 | 地下深度 2格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air [] replace log2
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 bamboo_planks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 bamboo_planks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 bamboo_mosaic []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~9 ~3 bamboo_planks []
fill ~-3 ~1 ~-2 ~3 ~8 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 bamboo_block []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 bamboo_block []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 bamboo_block []
fill ~4 ~1 ~3 ~4 ~9 ~3 bamboo_block []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 bamboo_fence []
setblock ~4 ~2 ~0 bamboo_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~9 ~-3 ~4 ~9 ~3 bamboo_mosaic []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 bamboo_fence []
fill ~-3 ~10 ~-2 ~3 ~10 ~2 air []
setblock ~-4 ~10 ~-3 bamboo_block []
setblock ~-4 ~11 ~-3 lantern []
setblock ~-4 ~10 ~3 bamboo_block []
setblock ~-4 ~11 ~3 lantern []
setblock ~4 ~10 ~-3 bamboo_block []
setblock ~4 ~11 ~-3 lantern []
setblock ~4 ~10 ~3 bamboo_block []
setblock ~4 ~11 ~3 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 bamboo_mosaic []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 bamboo_block []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 bamboo_block []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 bamboo_slab []
setblock ~0 ~3 ~-5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 5x5x6) ---
fill ~5 ~1 ~-2 ~5 ~8 ~2 scaffolding []
fill ~4 ~8 ~-2 ~6 ~8 ~2 bamboo_mosaic_slab []
setblock ~5 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 rotten_flesh 11
replaceitem block ~3 ~1 ~1 slot.container 1 bone 12
replaceitem block ~3 ~1 ~1 slot.container 2 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 4 slime_ball 11
replaceitem block ~3 ~1 ~1 slot.container 5 arrow 22
replaceitem block ~3 ~1 ~1 slot.container 9 golden_apple 7
replaceitem block ~3 ~1 ~1 slot.container 10 bow 1
replaceitem block ~3 ~1 ~1 slot.container 11 lantern 5
replaceitem block ~3 ~1 ~1 slot.container 12 bamboo 34
replaceitem block ~3 ~1 ~1 slot.container 13 scaffolding 19
replaceitem block ~3 ~1 ~1 slot.container 14 melon_slice 16
loot insert ~3 ~1 ~1 loot "rsf/bamboo_jungle"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 15
replaceitem block ~-3 ~1 ~2 slot.container 2 slime_ball 6
replaceitem block ~-3 ~1 ~2 slot.container 3 arrow 17
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 5 string 15
replaceitem block ~-3 ~1 ~2 slot.container 9 golden_apple 5
replaceitem block ~-3 ~1 ~2 slot.container 10 bow 1
replaceitem block ~-3 ~1 ~2 slot.container 11 lantern 10
replaceitem block ~-3 ~1 ~2 slot.container 12 bamboo 32
replaceitem block ~-3 ~1 ~2 slot.container 13 scaffolding 17
replaceitem block ~-3 ~1 ~2 slot.container 14 melon_slice 14
loot insert ~-3 ~1 ~2 loot "rsf/bamboo_jungle"
loot insert ~-3 ~1 ~2 loot "chests/jungle_temple"
summon parrot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0
