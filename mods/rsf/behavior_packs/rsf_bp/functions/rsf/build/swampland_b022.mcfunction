# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1558/4224 | 主题内编号: b022/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·廊柱书库秘藏室 (swampland_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mud_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 fermented_spider_eye 10
replaceitem block ~4 ~-3 ~3 slot.container 1 gunpowder 8
replaceitem block ~4 ~-3 ~3 slot.container 2 redstone 11
replaceitem block ~4 ~-3 ~3 slot.container 3 glowstone_dust 10
replaceitem block ~4 ~-3 ~3 slot.container 4 bone 13
replaceitem block ~4 ~-3 ~3 slot.container 5 rotten_flesh 14
replaceitem block ~4 ~-3 ~3 slot.container 9 cauldron 1
replaceitem block ~4 ~-3 ~3 slot.container 10 lantern 5
replaceitem block ~4 ~-3 ~3 slot.container 11 glass_bottle 8
replaceitem block ~4 ~-3 ~3 slot.container 12 golden_apple 4
replaceitem block ~4 ~-3 ~3 slot.container 13 mushroom_stew 1
replaceitem block ~4 ~-3 ~3 slot.container 14 cooked_cod 13
loot insert ~4 ~-3 ~3 loot "rsf/swampland"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 mossy_cobblestone []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 spruce_log []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 spruce_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 spruce_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 spruce_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 spruce_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 spruce_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 mossy_cobblestone []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 mud_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 brewing_stand []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-6 ~-6 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-6 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-6 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-6 ~5 ~6 ~0 ~5 oak_log []
setblock ~-2 ~1 ~-6 cauldron []
setblock ~2 ~2 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 2 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 4 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 10 lead 7
replaceitem block ~-5 ~1 ~3 slot.container 11 name_tag 1
replaceitem block ~-5 ~1 ~3 slot.container 12 brewing_stand 1
replaceitem block ~-5 ~1 ~3 slot.container 13 cauldron 2
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 6
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
