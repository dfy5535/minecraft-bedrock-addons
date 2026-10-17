# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1918/4224 | 主题内编号: b126/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双子主塔天桥宫殿与暗牢 (cherry_grove_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-7 ~9 ~12 ~7 air [] replace leaves
fill ~-9 ~1 ~-7 ~9 ~12 ~7 air [] replace leaves2
fill ~-9 ~1 ~-7 ~9 ~12 ~7 air [] replace log
fill ~-9 ~1 ~-7 ~9 ~12 ~7 air [] replace log2
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 cherry_planks [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 cherry_planks [] replace water
fill ~-8 ~0 ~-6 ~8 ~0 ~6 cherry_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_bricks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 cherry_planks []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 soul_lantern []
setblock ~5 ~-6 ~-3 soul_lantern []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~-4 ~3 slot.container 1 bone 14
replaceitem block ~5 ~-4 ~3 slot.container 2 string 15
replaceitem block ~5 ~-4 ~3 slot.container 3 gunpowder 6
replaceitem block ~5 ~-4 ~3 slot.container 4 arrow 17
replaceitem block ~5 ~-4 ~3 slot.container 5 ender_pearl 4
replaceitem block ~5 ~-4 ~3 slot.container 9 emerald 6
replaceitem block ~5 ~-4 ~3 slot.container 10 amethyst_shard 9
replaceitem block ~5 ~-4 ~3 slot.container 11 bow 1
replaceitem block ~5 ~-4 ~3 slot.container 12 lantern 9
replaceitem block ~5 ~-4 ~3 slot.container 13 cherry_log 22
replaceitem block ~5 ~-4 ~3 slot.container 14 cherry_sapling 4
loot insert ~5 ~-4 ~3 loot "rsf/cherry_grove"
loot insert ~5 ~-4 ~3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~9 ~5 cherry_planks []
fill ~2 ~1 ~-5 ~7 ~9 ~5 cherry_planks []
fill ~-6 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~6 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 polished_deepslate []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 polished_deepslate []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cherry_planks []
fill ~0 ~14 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_deepslate []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-2 ~0 ~-7 ~-2 ~5 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~5 ~-7 cherry_log []
fill ~-3 ~5 ~-7 ~3 ~5 ~-7 cherry_slab []
fill ~-2 ~4 ~-7 ~2 ~4 ~-7 stripped_cherry_log []
setblock ~0 ~6 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 phantom_membrane 8
replaceitem block ~-6 ~1 ~3 slot.container 1 feather 15
replaceitem block ~-6 ~1 ~3 slot.container 2 rotten_flesh 8
replaceitem block ~-6 ~1 ~3 slot.container 3 bone 9
replaceitem block ~-6 ~1 ~3 slot.container 4 string 10
replaceitem block ~-6 ~1 ~3 slot.container 5 gunpowder 9
replaceitem block ~-6 ~1 ~3 slot.container 9 golden_apple 2
replaceitem block ~-6 ~1 ~3 slot.container 10 iron_ingot 7
replaceitem block ~-6 ~1 ~3 slot.container 11 emerald 6
replaceitem block ~-6 ~1 ~3 slot.container 12 amethyst_shard 9
replaceitem block ~-6 ~1 ~3 slot.container 13 bow 1
replaceitem block ~-6 ~1 ~3 slot.container 14 lantern 9
loot insert ~-6 ~1 ~3 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
