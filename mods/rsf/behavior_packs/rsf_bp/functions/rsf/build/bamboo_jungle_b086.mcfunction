# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1110/4224 | 主题内编号: b086/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·重装矿石金库碉堡 (bamboo_jungle_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_mosaic_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 bamboo_mosaic []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 bone 17
replaceitem block ~4 ~-3 ~3 slot.container 1 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 2 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 3 slime_ball 8
replaceitem block ~4 ~-3 ~3 slot.container 4 arrow 19
replaceitem block ~4 ~-3 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 9 iron_ingot 6
replaceitem block ~4 ~-3 ~3 slot.container 10 emerald 5
replaceitem block ~4 ~-3 ~3 slot.container 11 gold_ingot 6
replaceitem block ~4 ~-3 ~3 slot.container 12 golden_apple 4
replaceitem block ~4 ~-3 ~3 slot.container 13 bow 1
replaceitem block ~4 ~-3 ~3 slot.container 14 lantern 9
loot insert ~4 ~-3 ~3 loot "rsf/bamboo_jungle"
loot insert ~4 ~-3 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~7 ~-4 bamboo_planks []
setblock ~-6 ~8 ~-5 torch []
fill ~-6 ~1 ~4 ~-5 ~7 ~5 bamboo_planks []
setblock ~-6 ~8 ~4 torch []
fill ~5 ~1 ~-5 ~6 ~7 ~-4 bamboo_planks []
setblock ~5 ~8 ~-5 torch []
fill ~5 ~1 ~4 ~6 ~7 ~5 bamboo_planks []
setblock ~5 ~8 ~4 torch []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 bamboo_planks []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 cobblestone_wall []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 air []
setblock ~-6 ~6 ~-5 jungle_log []
setblock ~-6 ~7 ~-5 torch []
setblock ~-6 ~6 ~5 jungle_log []
setblock ~-6 ~7 ~5 torch []
setblock ~6 ~6 ~-5 jungle_log []
setblock ~6 ~7 ~-5 torch []
setblock ~6 ~6 ~5 jungle_log []
setblock ~6 ~7 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~1 ~-2 ~7 ~4 ~2 scaffolding []
fill ~6 ~4 ~-2 ~8 ~4 ~2 bamboo_mosaic_slab []
setblock ~7 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 scaffolding []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 22
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 string 12
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 9 bamboo 36
replaceitem block ~-5 ~1 ~3 slot.container 10 scaffolding 21
replaceitem block ~-5 ~1 ~3 slot.container 11 melon_slice 18
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_chicken 8
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 6
loot insert ~-5 ~1 ~3 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
