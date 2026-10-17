# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1894/4224 | 主题内编号: b102/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双子箭塔联防碉楼 (cherry_grove_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cherry_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cherry_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 cherry_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 cherry_planks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 soul_lantern []
setblock ~5 ~-5 ~-2 soul_lantern []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~-3 ~2 slot.container 1 bone 14
replaceitem block ~5 ~-3 ~2 slot.container 2 string 15
replaceitem block ~5 ~-3 ~2 slot.container 3 gunpowder 6
replaceitem block ~5 ~-3 ~2 slot.container 4 arrow 17
replaceitem block ~5 ~-3 ~2 slot.container 5 ender_pearl 4
replaceitem block ~5 ~-3 ~2 slot.container 9 golden_apple 8
replaceitem block ~5 ~-3 ~2 slot.container 10 iron_ingot 6
replaceitem block ~5 ~-3 ~2 slot.container 11 emerald 5
replaceitem block ~5 ~-3 ~2 slot.container 12 amethyst_shard 8
replaceitem block ~5 ~-3 ~2 slot.container 13 bow 1
replaceitem block ~5 ~-3 ~2 slot.container 14 lantern 8
loot insert ~5 ~-3 ~2 loot "rsf/cherry_grove"
loot insert ~5 ~-3 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 cherry_planks []
fill ~2 ~1 ~-4 ~7 ~8 ~4 cherry_planks []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 polished_deepslate []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 polished_deepslate []
fill ~-7 ~8 ~-4 ~7 ~8 ~4 cherry_fence []
fill ~-6 ~8 ~-3 ~6 ~8 ~3 air []
setblock ~-7 ~8 ~-4 cherry_log []
setblock ~-7 ~9 ~-4 soul_lantern []
setblock ~-7 ~8 ~4 cherry_log []
setblock ~-7 ~9 ~4 soul_lantern []
setblock ~7 ~8 ~-4 cherry_log []
setblock ~7 ~9 ~-4 soul_lantern []
setblock ~7 ~8 ~4 cherry_log []
setblock ~7 ~9 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 cherry_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 cherry_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 cherry_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 cherry_log []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~-2 ~0 ~-6 ~-2 ~6 ~-6 cherry_log []
fill ~2 ~0 ~-6 ~2 ~6 ~-6 cherry_log []
fill ~-3 ~6 ~-6 ~3 ~6 ~-6 cherry_slab []
fill ~-2 ~5 ~-6 ~2 ~5 ~-6 stripped_cherry_log []
setblock ~-3 ~7 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 phantom_membrane 8
replaceitem block ~-6 ~1 ~2 slot.container 1 feather 15
replaceitem block ~-6 ~1 ~2 slot.container 2 rotten_flesh 8
replaceitem block ~-6 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-6 ~1 ~2 slot.container 4 string 10
replaceitem block ~-6 ~1 ~2 slot.container 5 gunpowder 9
replaceitem block ~-6 ~1 ~2 slot.container 9 honey_bottle 8
replaceitem block ~-6 ~1 ~2 slot.container 10 honeycomb 11
replaceitem block ~-6 ~1 ~2 slot.container 11 golden_apple 8
replaceitem block ~-6 ~1 ~2 slot.container 12 iron_ingot 6
replaceitem block ~-6 ~1 ~2 slot.container 13 emerald 5
replaceitem block ~-6 ~1 ~2 slot.container 14 amethyst_shard 8
loot insert ~-6 ~1 ~2 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
