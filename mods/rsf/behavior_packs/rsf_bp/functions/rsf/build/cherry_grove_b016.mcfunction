# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1808/4224 | 主题内编号: b016/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·要塞地底重装暗牢 (cherry_grove_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 lantern []
setblock ~5 ~-6 ~0 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 phantom_membrane 5
replaceitem block ~0 ~-4 ~4 slot.container 1 feather 12
replaceitem block ~0 ~-4 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~0 ~-4 ~4 slot.container 3 bone 14
replaceitem block ~0 ~-4 ~4 slot.container 4 string 15
replaceitem block ~0 ~-4 ~4 slot.container 5 gunpowder 6
replaceitem block ~0 ~-4 ~4 slot.container 9 emerald 5
replaceitem block ~0 ~-4 ~4 slot.container 10 amethyst_shard 8
replaceitem block ~0 ~-4 ~4 slot.container 11 bow 1
replaceitem block ~0 ~-4 ~4 slot.container 12 lantern 8
replaceitem block ~0 ~-4 ~4 slot.container 13 cherry_log 21
replaceitem block ~0 ~-4 ~4 slot.container 14 cherry_sapling 10
loot insert ~0 ~-4 ~4 loot "rsf/cherry_grove"
loot insert ~0 ~-4 ~4 loot "chests/village/village_plains_house"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 phantom_membrane 3
replaceitem block ~0 ~-4 ~-4 slot.container 1 feather 10
replaceitem block ~0 ~-4 ~-4 slot.container 2 rotten_flesh 11
replaceitem block ~0 ~-4 ~-4 slot.container 3 bone 12
replaceitem block ~0 ~-4 ~-4 slot.container 4 string 13
replaceitem block ~0 ~-4 ~-4 slot.container 5 gunpowder 12
replaceitem block ~0 ~-4 ~-4 slot.container 9 emerald 4
replaceitem block ~0 ~-4 ~-4 slot.container 10 amethyst_shard 7
replaceitem block ~0 ~-4 ~-4 slot.container 11 bow 1
replaceitem block ~0 ~-4 ~-4 slot.container 12 lantern 7
replaceitem block ~0 ~-4 ~-4 slot.container 13 cherry_log 20
replaceitem block ~0 ~-4 ~-4 slot.container 14 cherry_sapling 9
loot insert ~0 ~-4 ~-4 loot "rsf/cherry_grove"
loot insert ~0 ~-4 ~-4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~5 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~4 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~7 ~-5 cherry_planks []
setblock ~-7 ~8 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~7 ~6 cherry_planks []
setblock ~-7 ~8 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~7 ~-5 cherry_planks []
setblock ~6 ~8 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~7 ~6 cherry_planks []
setblock ~6 ~8 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 cherry_planks []
fill ~-7 ~6 ~-6 ~7 ~6 ~6 cobblestone_wall []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 air []
setblock ~-7 ~6 ~-6 stripped_cherry_log []
setblock ~-7 ~7 ~-6 lantern []
setblock ~-7 ~6 ~6 stripped_cherry_log []
setblock ~-7 ~7 ~6 lantern []
setblock ~7 ~6 ~-6 stripped_cherry_log []
setblock ~7 ~7 ~-6 lantern []
setblock ~7 ~6 ~6 stripped_cherry_log []
setblock ~7 ~7 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-2 ~0 ~-9 ~-2 ~5 ~-9 cherry_log []
fill ~2 ~0 ~-9 ~2 ~5 ~-9 cherry_log []
fill ~-3 ~5 ~-9 ~3 ~5 ~-9 cherry_slab []
fill ~-2 ~4 ~-9 ~2 ~4 ~-9 stripped_cherry_log []
setblock ~2 ~6 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 8
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 9
replaceitem block ~-6 ~1 ~4 slot.container 2 string 10
replaceitem block ~-6 ~1 ~4 slot.container 3 gunpowder 9
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 7
replaceitem block ~-6 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~-6 ~1 ~4 slot.container 10 iron_ingot 9
replaceitem block ~-6 ~1 ~4 slot.container 11 emerald 8
replaceitem block ~-6 ~1 ~4 slot.container 12 amethyst_shard 11
replaceitem block ~-6 ~1 ~4 slot.container 13 bow 1
replaceitem block ~-6 ~1 ~4 slot.container 14 lantern 4
loot insert ~-6 ~1 ~4 loot "rsf/cherry_grove"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon allay ~0 ~-4 ~0
