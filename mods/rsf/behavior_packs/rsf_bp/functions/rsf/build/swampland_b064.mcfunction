# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1600/4224 | 主题内编号: b064/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·U型冥庭守墓人陵园 (swampland_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 mossy_cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 spruce_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 spruce_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-6 ~-7 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-7 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-7 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-7 ~5 ~6 ~0 ~5 oak_log []
setblock ~-2 ~1 ~-6 cauldron []
setblock ~2 ~4 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 2 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~3 slot.container 4 redstone 14
replaceitem block ~-5 ~1 ~3 slot.container 5 glowstone_dust 13
replaceitem block ~-5 ~1 ~3 slot.container 9 glass_bottle 10
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_cod 8
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 14 lead 4
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
