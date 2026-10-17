# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1106/4224 | 主题内编号: b082/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·竖井井架矿工物资站 (bamboo_jungle_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 6格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_mosaic_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 torch []
setblock ~3 ~-7 ~-2 torch []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 gunpowder 9
replaceitem block ~3 ~-5 ~2 slot.container 1 slime_ball 8
replaceitem block ~3 ~-5 ~2 slot.container 2 arrow 19
replaceitem block ~3 ~-5 ~2 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-5 ~2 slot.container 4 string 17
replaceitem block ~3 ~-5 ~2 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~-5 ~2 slot.container 9 bamboo 34
replaceitem block ~3 ~-5 ~2 slot.container 10 scaffolding 19
replaceitem block ~3 ~-5 ~2 slot.container 11 melon_slice 16
replaceitem block ~3 ~-5 ~2 slot.container 12 cooked_chicken 13
replaceitem block ~3 ~-5 ~2 slot.container 13 iron_ingot 12
replaceitem block ~3 ~-5 ~2 slot.container 14 emerald 4
loot insert ~3 ~-5 ~2 loot "rsf/bamboo_jungle"
loot insert ~3 ~-5 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~3 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~2 ~3 air []
fill ~-6 ~3 ~-5 ~6 ~3 ~5 bamboo_mosaic_slab []
fill ~-4 ~4 ~-3 ~4 ~7 ~3 bamboo_mosaic []
fill ~-3 ~4 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~4 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 bamboo_planks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 bamboo_mosaic []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 scaffolding []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 bamboo_planks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~6 ~1 ~-2 ~6 ~5 ~2 scaffolding []
fill ~5 ~5 ~-2 ~7 ~5 ~2 bamboo_mosaic_slab []
setblock ~6 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 3 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 22
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 9 bow 1
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 5
replaceitem block ~-4 ~1 ~2 slot.container 11 bamboo 34
replaceitem block ~-4 ~1 ~2 slot.container 12 scaffolding 19
replaceitem block ~-4 ~1 ~2 slot.container 13 melon_slice 16
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_chicken 13
loot insert ~-4 ~1 ~2 loot "rsf/bamboo_jungle"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon panda ~1 ~1 ~1
summon parrot ~0 ~-5 ~0
