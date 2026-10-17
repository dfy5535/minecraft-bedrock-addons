# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1882/4224 | 主题内编号: b090/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·八角攒尖悬灯神龛 (cherry_grove_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cherry_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cherry_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 cherry_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 phantom_membrane 5
replaceitem block ~3 ~-3 ~2 slot.container 1 feather 12
replaceitem block ~3 ~-3 ~2 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~-3 ~2 slot.container 3 bone 14
replaceitem block ~3 ~-3 ~2 slot.container 4 string 15
replaceitem block ~3 ~-3 ~2 slot.container 5 gunpowder 6
replaceitem block ~3 ~-3 ~2 slot.container 9 cherry_log 18
replaceitem block ~3 ~-3 ~2 slot.container 10 cherry_sapling 7
replaceitem block ~3 ~-3 ~2 slot.container 11 honey_bottle 8
replaceitem block ~3 ~-3 ~2 slot.container 12 honeycomb 11
replaceitem block ~3 ~-3 ~2 slot.container 13 golden_apple 8
replaceitem block ~3 ~-3 ~2 slot.container 14 iron_ingot 6
loot insert ~3 ~-3 ~2 loot "rsf/cherry_grove"
loot insert ~3 ~-3 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 cherry_planks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 air []
fill ~5 ~1 ~4 ~5 ~7 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 cherry_log []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 cherry_log []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 cherry_log []
fill ~4 ~1 ~3 ~4 ~6 ~3 cherry_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 polished_deepslate []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 cherry_planks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gold_block []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 cherry_log []
setblock ~-7 ~4 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 cherry_log []
setblock ~-7 ~4 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 cherry_log []
setblock ~7 ~4 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 cherry_log []
setblock ~7 ~4 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x5x2) ---
fill ~-2 ~0 ~-6 ~-2 ~4 ~-6 cherry_log []
fill ~2 ~0 ~-6 ~2 ~4 ~-6 cherry_log []
fill ~-3 ~4 ~-6 ~3 ~4 ~-6 cherry_slab []
fill ~-2 ~3 ~-6 ~2 ~3 ~-6 stripped_cherry_log []
setblock ~-2 ~5 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 10
replaceitem block ~-4 ~1 ~2 slot.container 1 gunpowder 9
replaceitem block ~-4 ~1 ~2 slot.container 2 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 7
replaceitem block ~-4 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 5 feather 15
replaceitem block ~-4 ~1 ~2 slot.container 9 emerald 10
replaceitem block ~-4 ~1 ~2 slot.container 10 amethyst_shard 6
replaceitem block ~-4 ~1 ~2 slot.container 11 bow 1
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 6
replaceitem block ~-4 ~1 ~2 slot.container 13 cherry_log 19
replaceitem block ~-4 ~1 ~2 slot.container 14 cherry_sapling 8
loot insert ~-4 ~1 ~2 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
