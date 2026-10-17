# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1107/4224 | 主题内编号: b083/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·铁砧锻造与模具工坊 (bamboo_jungle_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
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

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 bamboo_mosaic []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~3 anvil []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 1 string 17
replaceitem block ~4 ~-2 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~4 ~-2 ~3 slot.container 3 bone 17
replaceitem block ~4 ~-2 ~3 slot.container 4 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 5 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 9 golden_apple 1
replaceitem block ~4 ~-2 ~3 slot.container 10 bow 1
replaceitem block ~4 ~-2 ~3 slot.container 11 lantern 6
replaceitem block ~4 ~-2 ~3 slot.container 12 bamboo 35
replaceitem block ~4 ~-2 ~3 slot.container 13 scaffolding 20
replaceitem block ~4 ~-2 ~3 slot.container 14 melon_slice 17
loot insert ~4 ~-2 ~3 loot "rsf/bamboo_jungle"
loot insert ~4 ~-2 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~5 ~5 bamboo_mosaic []
fill ~-6 ~1 ~0 ~6 ~4 ~5 jungle_planks []
fill ~-5 ~1 ~-4 ~-1 ~4 ~4 air []
fill ~-1 ~1 ~1 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 bamboo_mosaic_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 bamboo_mosaic_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 bamboo_mosaic_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 bamboo_mosaic_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 bamboo_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 stripped_bamboo_block []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 stripped_bamboo_block []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 stripped_bamboo_block []
fill ~7 ~0 ~2 ~7 ~4 ~2 stripped_bamboo_block []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~1 ~-2 ~7 ~6 ~2 scaffolding []
fill ~6 ~6 ~-2 ~8 ~6 ~2 bamboo_mosaic_slab []
setblock ~7 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 string 12
replaceitem block ~5 ~1 ~3 slot.container 9 scaffolding 17
replaceitem block ~5 ~1 ~3 slot.container 10 melon_slice 14
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_chicken 11
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 10
replaceitem block ~5 ~1 ~3 slot.container 13 emerald 9
replaceitem block ~5 ~1 ~3 slot.container 14 gold_ingot 10
loot insert ~5 ~1 ~3 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 string 15
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 9 scaffolding 22
replaceitem block ~-5 ~1 ~4 slot.container 10 melon_slice 12
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_chicken 9
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 7
replaceitem block ~-5 ~1 ~4 slot.container 14 gold_ingot 8
loot insert ~-5 ~1 ~4 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~4 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
