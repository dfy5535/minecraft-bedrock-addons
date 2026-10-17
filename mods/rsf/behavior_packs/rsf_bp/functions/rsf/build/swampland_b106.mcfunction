# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1642/4224 | 主题内编号: b106/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·琉璃穹顶魔药炼金室 (swampland_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
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

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 mossy_cobblestone []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 redstone 11
replaceitem block ~-3 ~-3 ~2 slot.container 1 glowstone_dust 10
replaceitem block ~-3 ~-3 ~2 slot.container 2 bone 13
replaceitem block ~-3 ~-3 ~2 slot.container 3 rotten_flesh 14
replaceitem block ~-3 ~-3 ~2 slot.container 4 slime_ball 17
replaceitem block ~-3 ~-3 ~2 slot.container 5 spider_eye 14
replaceitem block ~-3 ~-3 ~2 slot.container 9 mushroom_stew 1
replaceitem block ~-3 ~-3 ~2 slot.container 10 cooked_cod 14
replaceitem block ~-3 ~-3 ~2 slot.container 11 iron_ingot 6
replaceitem block ~-3 ~-3 ~2 slot.container 12 lead 3
replaceitem block ~-3 ~-3 ~2 slot.container 13 name_tag 1
replaceitem block ~-3 ~-3 ~2 slot.container 14 brewing_stand 4
loot insert ~-3 ~-3 ~2 loot "rsf/swampland"
loot insert ~-3 ~-3 ~2 loot "chests/simple_dungeon"

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
fill ~-5 ~8 ~-4 ~5 ~8 ~4 mossy_stone_bricks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 cobblestone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 slime []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 spruce_log []
setblock ~-7 ~5 ~-6 torch []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 spruce_log []
setblock ~-7 ~5 ~6 torch []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 spruce_log []
setblock ~7 ~5 ~-6 torch []
fill ~7 ~0 ~6 ~7 ~4 ~6 spruce_log []
setblock ~7 ~5 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-5 ~-6 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-6 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-6 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-6 ~4 ~5 ~0 ~4 oak_log []
setblock ~-2 ~1 ~-5 cauldron []
setblock ~2 ~6 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 brewing_stand []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 fermented_spider_eye 5
replaceitem block ~-4 ~1 ~2 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~2 slot.container 2 redstone 14
replaceitem block ~-4 ~1 ~2 slot.container 3 glowstone_dust 13
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~1 ~2 slot.container 9 name_tag 1
replaceitem block ~-4 ~1 ~2 slot.container 10 brewing_stand 6
replaceitem block ~-4 ~1 ~2 slot.container 11 cauldron 7
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 4
replaceitem block ~-4 ~1 ~2 slot.container 13 glass_bottle 7
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_apple 3
loot insert ~-4 ~1 ~2 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
