# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1654/4224 | 主题内编号: b118/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·L型蜂农与林果采集屋 (swampland_conservatory_l_apiary)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~6 ~5 spruce_planks []
fill ~-6 ~1 ~0 ~6 ~5 ~5 mud_bricks []
fill ~-5 ~1 ~-4 ~-1 ~5 ~4 air []
fill ~-1 ~1 ~1 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 mud_brick_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 mud_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 mud_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 mud_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 spruce_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 oak_log []
setblock ~-7 ~5 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 oak_log []
setblock ~-7 ~5 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 oak_log []
setblock ~7 ~5 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~4 ~6 oak_log []
setblock ~7 ~5 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-6 ~-5 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-5 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-5 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-5 ~5 ~6 ~0 ~5 oak_log []
setblock ~-2 ~1 ~-6 cauldron []
setblock ~2 ~3 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 2 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 4 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~3 slot.container 9 mushroom_stew 1
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_cod 11
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 12 lead 7
replaceitem block ~-5 ~1 ~3 slot.container 13 name_tag 1
replaceitem block ~-5 ~1 ~3 slot.container 14 brewing_stand 1
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
