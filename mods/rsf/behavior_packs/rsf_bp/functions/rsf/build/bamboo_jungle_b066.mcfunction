# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1090/4224 | 主题内编号: b066/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·崩塌角楼古堡残垣 (bamboo_jungle_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_mosaic_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 torch []
setblock ~4 ~-5 ~-3 torch []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 1 slime_ball 8
replaceitem block ~4 ~-3 ~3 slot.container 2 arrow 19
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 4 string 17
replaceitem block ~4 ~-3 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~-3 ~3 slot.container 9 melon_slice 12
replaceitem block ~4 ~-3 ~3 slot.container 10 cooked_chicken 9
replaceitem block ~4 ~-3 ~3 slot.container 11 iron_ingot 8
replaceitem block ~4 ~-3 ~3 slot.container 12 emerald 7
replaceitem block ~4 ~-3 ~3 slot.container 13 gold_ingot 8
replaceitem block ~4 ~-3 ~3 slot.container 14 golden_apple 6
loot insert ~4 ~-3 ~3 loot "rsf/bamboo_jungle"
loot insert ~4 ~-3 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~8 ~-4 bamboo_planks []
setblock ~-6 ~9 ~-5 torch []
fill ~-6 ~1 ~4 ~-5 ~8 ~5 bamboo_planks []
setblock ~-6 ~9 ~4 torch []
fill ~5 ~1 ~-5 ~6 ~8 ~-4 bamboo_planks []
setblock ~5 ~9 ~-5 torch []
fill ~5 ~1 ~4 ~6 ~8 ~5 bamboo_planks []
setblock ~5 ~9 ~4 torch []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 bamboo_mosaic_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 jungle_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 jungle_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 jungle_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~7 ~1 ~-2 ~7 ~4 ~2 scaffolding []
fill ~6 ~4 ~-2 ~8 ~4 ~2 bamboo_mosaic_slab []
setblock ~7 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 4 arrow 22
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 9 bamboo 37
replaceitem block ~-5 ~1 ~3 slot.container 10 scaffolding 22
replaceitem block ~-5 ~1 ~3 slot.container 11 melon_slice 12
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_chicken 9
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 7
loot insert ~-5 ~1 ~3 loot "rsf/bamboo_jungle"
summon panda ~0 ~1 ~-1
summon parrot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
