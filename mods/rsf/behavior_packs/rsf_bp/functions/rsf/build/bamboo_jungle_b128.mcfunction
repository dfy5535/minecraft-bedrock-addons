# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1152/4224 | 主题内编号: b128/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·U型紫禁朝堂大殿与地底金库 (bamboo_jungle_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 jungle_planks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 jungle_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 bamboo_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 jungle_planks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 gunpowder 9
replaceitem block ~5 ~-4 ~4 slot.container 1 slime_ball 8
replaceitem block ~5 ~-4 ~4 slot.container 2 arrow 19
replaceitem block ~5 ~-4 ~4 slot.container 3 ender_pearl 6
replaceitem block ~5 ~-4 ~4 slot.container 4 string 17
replaceitem block ~5 ~-4 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~-4 ~4 slot.container 9 melon_slice 15
replaceitem block ~5 ~-4 ~4 slot.container 10 cooked_chicken 12
replaceitem block ~5 ~-4 ~4 slot.container 11 iron_ingot 11
replaceitem block ~5 ~-4 ~4 slot.container 12 emerald 10
replaceitem block ~5 ~-4 ~4 slot.container 13 gold_ingot 4
replaceitem block ~5 ~-4 ~4 slot.container 14 golden_apple 2
loot insert ~5 ~-4 ~4 loot "rsf/bamboo_jungle"
loot insert ~5 ~-4 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 jungle_planks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mossy_stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~7 ~-7 ~8 ~7 ~7 bamboo_slab []
fill ~-6 ~8 ~-5 ~6 ~9 ~5 bamboo_planks []
fill ~-7 ~10 ~-6 ~7 ~10 ~6 bamboo_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 bamboo_fence []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~8 ~1 ~-2 ~8 ~6 ~2 scaffolding []
fill ~7 ~6 ~-2 ~9 ~6 ~2 bamboo_mosaic_slab []
setblock ~8 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 string 12
replaceitem block ~-6 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-6 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-6 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 5 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 9 gold_ingot 8
replaceitem block ~-6 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~-6 ~1 ~4 slot.container 11 bow 1
replaceitem block ~-6 ~1 ~4 slot.container 12 lantern 4
replaceitem block ~-6 ~1 ~4 slot.container 13 bamboo 33
replaceitem block ~-6 ~1 ~4 slot.container 14 scaffolding 18
loot insert ~-6 ~1 ~4 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
