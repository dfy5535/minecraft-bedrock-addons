# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1078/4224 | 主题内编号: b054/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·切石与伐木工匠棚屋 (bamboo_jungle_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 bamboo_mosaic_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 bamboo_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~6 ~4 mossy_stone_bricks []
fill ~2 ~1 ~-4 ~6 ~6 ~4 mossy_stone_bricks []
fill ~-5 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 bamboo_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-5 ~-7 ~6 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-5 ~7 ~6 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-4 ~-6 ~7 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-4 ~6 ~7 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-4 ~5 ~7 ~4 bamboo_mosaic_slab []
fill ~0 ~8 ~-5 ~0 ~8 ~5 bamboo_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 bamboo_planks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~7 ~1 ~-2 ~7 ~7 ~2 scaffolding []
fill ~6 ~7 ~-2 ~8 ~7 ~2 bamboo_mosaic_slab []
setblock ~7 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 arrow 22
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~2 slot.container 2 string 12
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~2 slot.container 9 iron_ingot 6
replaceitem block ~-5 ~1 ~2 slot.container 10 emerald 5
replaceitem block ~-5 ~1 ~2 slot.container 11 gold_ingot 6
replaceitem block ~-5 ~1 ~2 slot.container 12 golden_apple 4
replaceitem block ~-5 ~1 ~2 slot.container 13 bow 1
replaceitem block ~-5 ~1 ~2 slot.container 14 lantern 9
loot insert ~-5 ~1 ~2 loot "rsf/bamboo_jungle"
summon panda ~0 ~1 ~-1
summon parrot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
