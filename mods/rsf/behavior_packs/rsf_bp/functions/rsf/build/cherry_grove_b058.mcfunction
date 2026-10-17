# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1850/4224 | 主题内编号: b058/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·十字拱顶家族陵墓 (cherry_grove_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cherry_planks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cherry_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cherry_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cherry_planks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_lantern []
setblock ~4 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-4 ~3 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~3 slot.container 2 string 15
replaceitem block ~0 ~-4 ~3 slot.container 3 gunpowder 6
replaceitem block ~0 ~-4 ~3 slot.container 4 arrow 17
replaceitem block ~0 ~-4 ~3 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-4 ~3 slot.container 9 honey_bottle 5
replaceitem block ~0 ~-4 ~3 slot.container 10 honeycomb 8
replaceitem block ~0 ~-4 ~3 slot.container 11 golden_apple 5
replaceitem block ~0 ~-4 ~3 slot.container 12 iron_ingot 10
replaceitem block ~0 ~-4 ~3 slot.container 13 emerald 9
replaceitem block ~0 ~-4 ~3 slot.container 14 amethyst_shard 12
loot insert ~0 ~-4 ~3 loot "rsf/cherry_grove"
loot insert ~0 ~-4 ~3 loot "chests/village/village_plains_house"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 11
replaceitem block ~0 ~-4 ~-3 slot.container 1 bone 12
replaceitem block ~0 ~-4 ~-3 slot.container 2 string 13
replaceitem block ~0 ~-4 ~-3 slot.container 3 gunpowder 12
replaceitem block ~0 ~-4 ~-3 slot.container 4 arrow 23
replaceitem block ~0 ~-4 ~-3 slot.container 5 ender_pearl 2
replaceitem block ~0 ~-4 ~-3 slot.container 9 honey_bottle 4
replaceitem block ~0 ~-4 ~-3 slot.container 10 honeycomb 7
replaceitem block ~0 ~-4 ~-3 slot.container 11 golden_apple 4
replaceitem block ~0 ~-4 ~-3 slot.container 12 iron_ingot 9
replaceitem block ~0 ~-4 ~-3 slot.container 13 emerald 8
replaceitem block ~0 ~-4 ~-3 slot.container 14 amethyst_shard 11
loot insert ~0 ~-4 ~-3 loot "rsf/cherry_grove"
loot insert ~0 ~-4 ~-3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~5 ~5 cherry_planks []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 cherry_planks []
fill ~-1 ~1 ~-4 ~1 ~4 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cherry_fence []
setblock ~6 ~2 ~0 cherry_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 cherry_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 cherry_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 cherry_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 cherry_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 cherry_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 polished_deepslate []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 cherry_log []
setblock ~-8 ~4 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 cherry_log []
setblock ~-8 ~4 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 cherry_log []
setblock ~8 ~4 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 cherry_log []
setblock ~8 ~4 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-2 ~0 ~-8 ~-2 ~7 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~7 ~-8 cherry_log []
fill ~-3 ~7 ~-8 ~3 ~7 ~-8 cherry_slab []
fill ~-2 ~6 ~-8 ~2 ~6 ~-8 stripped_cherry_log []
setblock ~-2 ~8 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 10
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 7
replaceitem block ~-5 ~1 ~3 slot.container 4 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 5 feather 15
replaceitem block ~-5 ~1 ~3 slot.container 9 cherry_log 18
replaceitem block ~-5 ~1 ~3 slot.container 10 cherry_sapling 7
replaceitem block ~-5 ~1 ~3 slot.container 11 honey_bottle 8
replaceitem block ~-5 ~1 ~3 slot.container 12 honeycomb 11
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 6
loot insert ~-5 ~1 ~3 loot "rsf/cherry_grove"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon allay ~0 ~-4 ~0
