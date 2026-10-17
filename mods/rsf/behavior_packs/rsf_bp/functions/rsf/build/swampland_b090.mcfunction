# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1626/4224 | 主题内编号: b090/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·八角攒尖悬灯神龛 (swampland_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 spruce_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 spruce_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mud_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 lantern []
setblock ~4 ~-5 ~-3 lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 8
replaceitem block ~4 ~-3 ~3 slot.container 1 redstone 11
replaceitem block ~4 ~-3 ~3 slot.container 2 glowstone_dust 10
replaceitem block ~4 ~-3 ~3 slot.container 3 bone 13
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~4 ~-3 ~3 slot.container 5 slime_ball 17
replaceitem block ~4 ~-3 ~3 slot.container 9 brewing_stand 1
replaceitem block ~4 ~-3 ~3 slot.container 10 cauldron 2
replaceitem block ~4 ~-3 ~3 slot.container 11 lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 12 glass_bottle 9
replaceitem block ~4 ~-3 ~3 slot.container 13 golden_apple 5
replaceitem block ~4 ~-3 ~3 slot.container 14 mushroom_stew 1
loot insert ~4 ~-3 ~3 loot "rsf/swampland"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 spruce_planks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 spruce_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 mossy_cobblestone []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 mud_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 brewing_stand []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 spruce_log []
setblock ~-7 ~5 ~-6 torch []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 spruce_log []
setblock ~-7 ~5 ~6 torch []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 spruce_log []
setblock ~7 ~5 ~-6 torch []
fill ~7 ~0 ~6 ~7 ~4 ~6 spruce_log []
setblock ~7 ~5 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-5 ~-6 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-6 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-6 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-6 ~4 ~5 ~0 ~4 oak_log []
setblock ~2 ~1 ~-5 cauldron []
setblock ~-2 ~5 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 brewing_stand []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 fermented_spider_eye 5
replaceitem block ~-4 ~1 ~2 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~2 slot.container 2 redstone 14
replaceitem block ~-4 ~1 ~2 slot.container 3 glowstone_dust 13
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~1 ~2 slot.container 9 cauldron 3
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 7
replaceitem block ~-4 ~1 ~2 slot.container 11 glass_bottle 10
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 13 mushroom_stew 1
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_cod 8
loot insert ~-4 ~1 ~2 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
