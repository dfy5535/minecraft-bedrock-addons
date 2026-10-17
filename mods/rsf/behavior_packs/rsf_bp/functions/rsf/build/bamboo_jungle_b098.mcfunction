# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1122/4224 | 主题内编号: b098/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·四角炮楼重装要塞 (bamboo_jungle_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 bamboo_mosaic_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 torch []
setblock ~5 ~-6 ~-4 torch []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 gunpowder 9
replaceitem block ~5 ~-4 ~4 slot.container 1 slime_ball 8
replaceitem block ~5 ~-4 ~4 slot.container 2 arrow 19
replaceitem block ~5 ~-4 ~4 slot.container 3 ender_pearl 6
replaceitem block ~5 ~-4 ~4 slot.container 4 string 17
replaceitem block ~5 ~-4 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~-4 ~4 slot.container 9 bow 1
replaceitem block ~5 ~-4 ~4 slot.container 10 lantern 9
replaceitem block ~5 ~-4 ~4 slot.container 11 bamboo 38
replaceitem block ~5 ~-4 ~4 slot.container 12 scaffolding 16
replaceitem block ~5 ~-4 ~4 slot.container 13 melon_slice 13
replaceitem block ~5 ~-4 ~4 slot.container 14 cooked_chicken 10
loot insert ~5 ~-4 ~4 loot "rsf/bamboo_jungle"
loot insert ~5 ~-4 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 mossy_stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 bamboo_planks []
setblock ~-7 ~9 ~-6 torch []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 bamboo_planks []
setblock ~-7 ~9 ~5 torch []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 bamboo_planks []
setblock ~6 ~9 ~-6 torch []
fill ~6 ~1 ~5 ~7 ~8 ~6 bamboo_planks []
setblock ~6 ~9 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 bamboo_planks []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone_wall []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 jungle_log []
setblock ~-7 ~8 ~-6 torch []
setblock ~-7 ~7 ~6 jungle_log []
setblock ~-7 ~8 ~6 torch []
setblock ~7 ~7 ~-6 jungle_log []
setblock ~7 ~8 ~-6 torch []
setblock ~7 ~7 ~6 jungle_log []
setblock ~7 ~8 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~8 ~1 ~-2 ~8 ~6 ~2 scaffolding []
fill ~7 ~6 ~-2 ~9 ~6 ~2 bamboo_mosaic_slab []
setblock ~8 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 3 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 22
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 gold_ingot 6
replaceitem block ~-6 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~-6 ~1 ~4 slot.container 11 bow 1
replaceitem block ~-6 ~1 ~4 slot.container 12 lantern 9
replaceitem block ~-6 ~1 ~4 slot.container 13 bamboo 38
replaceitem block ~-6 ~1 ~4 slot.container 14 scaffolding 16
loot insert ~-6 ~1 ~4 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
