# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1150/4224 | 主题内编号: b126/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双子主塔天桥宫殿与暗牢 (bamboo_jungle_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-7 ~9 ~12 ~7 air [] replace leaves
fill ~-9 ~1 ~-7 ~9 ~12 ~7 air [] replace leaves2
fill ~-9 ~1 ~-7 ~9 ~12 ~7 air [] replace log
fill ~-9 ~1 ~-7 ~9 ~12 ~7 air [] replace log2
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-6 ~8 ~0 ~6 bamboo_mosaic_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 mossy_cobblestone []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 mossy_stone_bricks []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 torch []
setblock ~5 ~-6 ~-3 torch []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 string 17
replaceitem block ~5 ~-4 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~-4 ~3 slot.container 2 bone 17
replaceitem block ~5 ~-4 ~3 slot.container 3 spider_eye 6
replaceitem block ~5 ~-4 ~3 slot.container 4 gunpowder 9
replaceitem block ~5 ~-4 ~3 slot.container 5 slime_ball 8
replaceitem block ~5 ~-4 ~3 slot.container 9 melon_slice 16
replaceitem block ~5 ~-4 ~3 slot.container 10 cooked_chicken 13
replaceitem block ~5 ~-4 ~3 slot.container 11 iron_ingot 12
replaceitem block ~5 ~-4 ~3 slot.container 12 emerald 4
replaceitem block ~5 ~-4 ~3 slot.container 13 gold_ingot 5
replaceitem block ~5 ~-4 ~3 slot.container 14 golden_apple 3
loot insert ~5 ~-4 ~3 loot "rsf/bamboo_jungle"
loot insert ~5 ~-4 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~9 ~5 mossy_stone_bricks []
fill ~2 ~1 ~-5 ~7 ~9 ~5 mossy_stone_bricks []
fill ~-6 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~6 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 bamboo_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 bamboo_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 mossy_stone_bricks []
fill ~0 ~14 ~0 ~0 ~15 ~0 scaffolding []
setblock ~0 ~16 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 bamboo_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~8 ~1 ~-2 ~8 ~4 ~2 scaffolding []
fill ~7 ~4 ~-2 ~9 ~4 ~2 bamboo_mosaic_slab []
setblock ~8 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 arrow 22
replaceitem block ~-6 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~3 slot.container 2 string 12
replaceitem block ~-6 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-6 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~3 slot.container 9 bamboo 34
replaceitem block ~-6 ~1 ~3 slot.container 10 scaffolding 19
replaceitem block ~-6 ~1 ~3 slot.container 11 melon_slice 16
replaceitem block ~-6 ~1 ~3 slot.container 12 cooked_chicken 13
replaceitem block ~-6 ~1 ~3 slot.container 13 iron_ingot 12
replaceitem block ~-6 ~1 ~3 slot.container 14 emerald 4
loot insert ~-6 ~1 ~3 loot "rsf/bamboo_jungle"
summon panda ~0 ~1 ~-1
summon parrot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
