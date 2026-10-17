# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1824/4224 | 主题内编号: b032/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·断顶残垣古哨塔 (cherry_grove_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-6 ~6 ~12 ~6 air [] replace leaves
fill ~-6 ~1 ~-6 ~6 ~12 ~6 air [] replace leaves2
fill ~-6 ~1 ~-6 ~6 ~12 ~6 air [] replace log
fill ~-6 ~1 ~-6 ~6 ~12 ~6 air [] replace log2
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 stone_bricks [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 stone_bricks [] replace water
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_brick_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 quartz_block []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 calcite []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 cherry_planks []
setblock ~0 ~-6 ~0 amethyst_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 string 15
replaceitem block ~0 ~-3 ~-2 slot.container 1 gunpowder 6
replaceitem block ~0 ~-3 ~-2 slot.container 2 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 3 ender_pearl 4
replaceitem block ~0 ~-3 ~-2 slot.container 4 phantom_membrane 5
replaceitem block ~0 ~-3 ~-2 slot.container 5 feather 12
replaceitem block ~0 ~-3 ~-2 slot.container 9 bow 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 lantern 5
replaceitem block ~0 ~-3 ~-2 slot.container 11 cherry_log 18
replaceitem block ~0 ~-3 ~-2 slot.container 12 cherry_sapling 7
replaceitem block ~0 ~-3 ~-2 slot.container 13 honey_bottle 8
replaceitem block ~0 ~-3 ~-2 slot.container 14 honeycomb 11
loot insert ~0 ~-3 ~-2 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~-2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~8 ~4 stone_bricks []
fill ~-3 ~1 ~-3 ~3 ~7 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~8 ~-4 stripped_cherry_log []
fill ~-4 ~1 ~4 ~-4 ~8 ~4 stripped_cherry_log []
fill ~4 ~1 ~-4 ~4 ~8 ~-4 stripped_cherry_log []
fill ~4 ~1 ~4 ~4 ~8 ~4 stripped_cherry_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~8 ~-4 ~4 ~8 ~4 stone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-4 ~7 ~-1 ~-4 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 stripped_cherry_log []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 stripped_cherry_log []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 stripped_cherry_log []
fill ~5 ~0 ~2 ~5 ~7 ~2 stripped_cherry_log []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 5x7x4) ---
fill ~-2 ~0 ~-8 ~-2 ~6 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~6 ~-8 cherry_log []
fill ~-3 ~6 ~-8 ~3 ~6 ~-8 cherry_slab []
fill ~-2 ~5 ~-8 ~2 ~5 ~-8 stripped_cherry_log []
setblock ~-1 ~7 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~2 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 rotten_flesh 8
replaceitem block ~-3 ~1 ~2 slot.container 1 bone 9
replaceitem block ~-3 ~1 ~2 slot.container 2 string 10
replaceitem block ~-3 ~1 ~2 slot.container 3 gunpowder 9
replaceitem block ~-3 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-3 ~1 ~2 slot.container 5 ender_pearl 7
replaceitem block ~-3 ~1 ~2 slot.container 9 honey_bottle 8
replaceitem block ~-3 ~1 ~2 slot.container 10 honeycomb 11
replaceitem block ~-3 ~1 ~2 slot.container 11 golden_apple 8
replaceitem block ~-3 ~1 ~2 slot.container 12 iron_ingot 6
replaceitem block ~-3 ~1 ~2 slot.container 13 emerald 5
replaceitem block ~-3 ~1 ~2 slot.container 14 amethyst_shard 8
loot insert ~-3 ~1 ~2 loot "rsf/cherry_grove"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
