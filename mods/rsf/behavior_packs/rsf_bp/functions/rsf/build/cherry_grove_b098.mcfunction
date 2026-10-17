# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1890/4224 | 主题内编号: b098/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·四角炮楼重装要塞 (cherry_grove_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cherry_planks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cherry_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cherry_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cherry_planks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 soul_lantern []
setblock ~5 ~-6 ~-4 soul_lantern []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 arrow 17
replaceitem block ~5 ~-4 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~-4 ~4 slot.container 2 phantom_membrane 5
replaceitem block ~5 ~-4 ~4 slot.container 3 feather 12
replaceitem block ~5 ~-4 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~-4 ~4 slot.container 5 bone 14
replaceitem block ~5 ~-4 ~4 slot.container 9 honey_bottle 6
replaceitem block ~5 ~-4 ~4 slot.container 10 honeycomb 9
replaceitem block ~5 ~-4 ~4 slot.container 11 golden_apple 6
replaceitem block ~5 ~-4 ~4 slot.container 12 iron_ingot 11
replaceitem block ~5 ~-4 ~4 slot.container 13 emerald 10
replaceitem block ~5 ~-4 ~4 slot.container 14 amethyst_shard 6
loot insert ~5 ~-4 ~4 loot "rsf/cherry_grove"
loot insert ~5 ~-4 ~4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 cherry_planks []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 polished_deepslate []
setblock ~-7 ~9 ~-6 soul_lantern []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 polished_deepslate []
setblock ~-7 ~9 ~5 soul_lantern []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 polished_deepslate []
setblock ~6 ~9 ~-6 soul_lantern []
fill ~6 ~1 ~5 ~7 ~8 ~6 polished_deepslate []
setblock ~6 ~9 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 polished_deepslate []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cherry_fence []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 cherry_log []
setblock ~-7 ~8 ~-6 soul_lantern []
setblock ~-7 ~7 ~6 cherry_log []
setblock ~-7 ~8 ~6 soul_lantern []
setblock ~7 ~7 ~-6 cherry_log []
setblock ~7 ~8 ~-6 soul_lantern []
setblock ~7 ~7 ~6 cherry_log []
setblock ~7 ~8 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cherry_fence []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-2 ~0 ~-10 ~-2 ~7 ~-10 cherry_log []
fill ~2 ~0 ~-10 ~2 ~7 ~-10 cherry_log []
fill ~-3 ~7 ~-10 ~3 ~7 ~-10 cherry_slab []
fill ~-2 ~6 ~-10 ~2 ~6 ~-10 stripped_cherry_log []
setblock ~0 ~8 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 string 10
replaceitem block ~-6 ~1 ~4 slot.container 1 gunpowder 9
replaceitem block ~-6 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 3 ender_pearl 7
replaceitem block ~-6 ~1 ~4 slot.container 4 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 5 feather 15
replaceitem block ~-6 ~1 ~4 slot.container 9 cherry_log 16
replaceitem block ~-6 ~1 ~4 slot.container 10 cherry_sapling 5
replaceitem block ~-6 ~1 ~4 slot.container 11 honey_bottle 6
replaceitem block ~-6 ~1 ~4 slot.container 12 honeycomb 9
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~-6 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~-6 ~1 ~4 loot "rsf/cherry_grove"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
