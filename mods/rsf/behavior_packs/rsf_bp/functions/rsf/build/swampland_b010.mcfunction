# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1546/4224 | 主题内编号: b010/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·十字交叉深层地牢 (swampland_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 6格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log2
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 spruce_planks [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 spruce_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 spruce_planks []
fill ~-7 ~1 ~-2 ~7 ~5 ~2 spruce_planks []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 oak_fence []
setblock ~7 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 spruce_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-7 ~4 ~-1 ~-7 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 spruce_log []
setblock ~-9 ~5 ~-8 torch []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 spruce_log []
setblock ~-9 ~5 ~8 torch []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 spruce_log []
setblock ~9 ~5 ~-8 torch []
fill ~9 ~0 ~8 ~9 ~4 ~8 spruce_log []
setblock ~9 ~5 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~-7 ~-8 ~-6 ~-7 ~0 ~-6 oak_log []
fill ~-7 ~-8 ~6 ~-7 ~0 ~6 oak_log []
fill ~7 ~-8 ~-6 ~7 ~0 ~-6 oak_log []
fill ~7 ~-8 ~6 ~7 ~0 ~6 oak_log []
setblock ~-3 ~1 ~-7 cauldron []
setblock ~3 ~5 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 brewing_stand []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 fermented_spider_eye 5
replaceitem block ~-6 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-6 ~1 ~4 slot.container 2 redstone 14
replaceitem block ~-6 ~1 ~4 slot.container 3 glowstone_dust 13
replaceitem block ~-6 ~1 ~4 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~-6 ~1 ~4 slot.container 9 cauldron 7
replaceitem block ~-6 ~1 ~4 slot.container 10 lantern 4
replaceitem block ~-6 ~1 ~4 slot.container 11 glass_bottle 7
replaceitem block ~-6 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~-6 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~-6 ~1 ~4 slot.container 14 cooked_cod 12
loot insert ~-6 ~1 ~4 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
