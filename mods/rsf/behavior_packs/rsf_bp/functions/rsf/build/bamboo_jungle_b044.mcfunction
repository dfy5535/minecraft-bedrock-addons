# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1068/4224 | 主题内编号: b044/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双子祭台勇士角斗场 (bamboo_jungle_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-7 ~9 ~9 ~7 air [] replace leaves
fill ~-9 ~1 ~-7 ~9 ~9 ~7 air [] replace leaves2
fill ~-9 ~1 ~-7 ~9 ~9 ~7 air [] replace log
fill ~-9 ~1 ~-7 ~9 ~9 ~7 air [] replace log2
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 jungle_planks [] replace air
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 jungle_planks [] replace water
fill ~-8 ~0 ~-6 ~8 ~0 ~6 bamboo_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_bricks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-4 ~6 ~-1 ~4 bamboo_planks []
fill ~-5 ~-5 ~-3 ~5 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~3 slot.container 0 string 17
replaceitem block ~5 ~-3 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~-3 ~3 slot.container 2 bone 17
replaceitem block ~5 ~-3 ~3 slot.container 3 spider_eye 6
replaceitem block ~5 ~-3 ~3 slot.container 4 gunpowder 9
replaceitem block ~5 ~-3 ~3 slot.container 5 slime_ball 8
replaceitem block ~5 ~-3 ~3 slot.container 9 bow 1
replaceitem block ~5 ~-3 ~3 slot.container 10 lantern 5
replaceitem block ~5 ~-3 ~3 slot.container 11 bamboo 34
replaceitem block ~5 ~-3 ~3 slot.container 12 scaffolding 19
replaceitem block ~5 ~-3 ~3 slot.container 13 melon_slice 16
replaceitem block ~5 ~-3 ~3 slot.container 14 cooked_chicken 13
loot insert ~5 ~-3 ~3 loot "rsf/bamboo_jungle"
loot insert ~5 ~-3 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~6 ~5 jungle_planks []
fill ~2 ~1 ~-5 ~7 ~6 ~5 jungle_planks []
fill ~-6 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~6 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 bamboo_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-5 ~-7 ~7 ~-5 bamboo_block []
setblock ~-7 ~8 ~-5 lantern []
fill ~-7 ~5 ~5 ~-7 ~7 ~5 bamboo_block []
setblock ~-7 ~8 ~5 lantern []
fill ~7 ~5 ~-5 ~7 ~7 ~-5 bamboo_block []
setblock ~7 ~8 ~-5 lantern []
fill ~7 ~5 ~5 ~7 ~7 ~5 bamboo_block []
setblock ~7 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~3 ~-7 bamboo_block []
setblock ~-9 ~4 ~-7 lantern []
fill ~-9 ~0 ~7 ~-9 ~3 ~7 bamboo_block []
setblock ~-9 ~4 ~7 lantern []
fill ~9 ~0 ~-7 ~9 ~3 ~-7 bamboo_block []
setblock ~9 ~4 ~-7 lantern []
fill ~9 ~0 ~7 ~9 ~3 ~7 bamboo_block []
setblock ~9 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~8 ~1 ~-2 ~8 ~7 ~2 scaffolding []
fill ~7 ~7 ~-2 ~9 ~7 ~2 bamboo_mosaic_slab []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~3 slot.container 1 slime_ball 11
replaceitem block ~-6 ~1 ~3 slot.container 2 arrow 22
replaceitem block ~-6 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-6 ~1 ~3 slot.container 4 string 12
replaceitem block ~-6 ~1 ~3 slot.container 5 rotten_flesh 11
replaceitem block ~-6 ~1 ~3 slot.container 9 iron_ingot 10
replaceitem block ~-6 ~1 ~3 slot.container 10 emerald 9
replaceitem block ~-6 ~1 ~3 slot.container 11 gold_ingot 10
replaceitem block ~-6 ~1 ~3 slot.container 12 golden_apple 1
replaceitem block ~-6 ~1 ~3 slot.container 13 bow 1
replaceitem block ~-6 ~1 ~3 slot.container 14 lantern 6
loot insert ~-6 ~1 ~3 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
