# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0382/4224 | 主题内编号: b126/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·双子主塔天桥宫殿与暗牢 (birch_forest_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-7 ~9 ~12 ~7 air [] replace leaves
fill ~-9 ~1 ~-7 ~9 ~12 ~7 air [] replace leaves2
fill ~-9 ~1 ~-7 ~9 ~12 ~7 air [] replace log
fill ~-9 ~1 ~-7 ~9 ~12 ~7 air [] replace log2
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-8 ~0 ~-6 ~8 ~0 ~6 birch_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_bricks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 mossy_cobblestone []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 campfire []
setblock ~5 ~-6 ~-3 campfire []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~-4 ~3 slot.container 1 bone 14
replaceitem block ~5 ~-4 ~3 slot.container 2 string 15
replaceitem block ~5 ~-4 ~3 slot.container 3 gunpowder 6
replaceitem block ~5 ~-4 ~3 slot.container 4 arrow 17
replaceitem block ~5 ~-4 ~3 slot.container 5 spider_eye 6
replaceitem block ~5 ~-4 ~3 slot.container 9 shears 1
replaceitem block ~5 ~-4 ~3 slot.container 10 torch 16
replaceitem block ~5 ~-4 ~3 slot.container 11 honeycomb 7
replaceitem block ~5 ~-4 ~3 slot.container 12 honey_bottle 5
replaceitem block ~5 ~-4 ~3 slot.container 13 birch_log 19
replaceitem block ~5 ~-4 ~3 slot.container 14 cooked_chicken 12
loot insert ~5 ~-4 ~3 loot "rsf/birch_forest"
loot insert ~5 ~-4 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~9 ~5 mossy_cobblestone []
fill ~2 ~1 ~-5 ~7 ~9 ~5 mossy_cobblestone []
fill ~-6 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~6 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 birch_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 birch_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 mossy_cobblestone []
fill ~0 ~14 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 birch_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 cobblestone []
fill ~9 ~1 ~-2 ~9 ~7 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~7 ~2 birch_log []
fill ~8 ~8 ~-2 ~9 ~8 ~2 birch_slab []
setblock ~8 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~2 smithing_table []
setblock ~-4 ~1 ~2 anvil []
setblock ~4 ~1 ~2 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 feather 14
replaceitem block ~-6 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-6 ~1 ~3 slot.container 2 rotten_flesh 10
replaceitem block ~-6 ~1 ~3 slot.container 3 bone 9
replaceitem block ~-6 ~1 ~3 slot.container 4 string 10
replaceitem block ~-6 ~1 ~3 slot.container 5 gunpowder 9
replaceitem block ~-6 ~1 ~3 slot.container 9 golden_carrot 8
replaceitem block ~-6 ~1 ~3 slot.container 10 iron_sword 1
replaceitem block ~-6 ~1 ~3 slot.container 11 shears 1
replaceitem block ~-6 ~1 ~3 slot.container 12 torch 16
replaceitem block ~-6 ~1 ~3 slot.container 13 honeycomb 7
replaceitem block ~-6 ~1 ~3 slot.container 14 honey_bottle 5
loot insert ~-6 ~1 ~3 loot "rsf/birch_forest"
summon bee ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
