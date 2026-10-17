# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1569/4224 | 主题内编号: b033/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·太阳金顶高耸方尖碑 (swampland_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log2
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mossy_stone_bricks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 spruce_planks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 cauldron []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 glowstone_dust 10
replaceitem block ~5 ~-3 ~0 slot.container 1 bone 13
replaceitem block ~5 ~-3 ~0 slot.container 2 rotten_flesh 14
replaceitem block ~5 ~-3 ~0 slot.container 3 slime_ball 17
replaceitem block ~5 ~-3 ~0 slot.container 4 spider_eye 14
replaceitem block ~5 ~-3 ~0 slot.container 5 fermented_spider_eye 10
replaceitem block ~5 ~-3 ~0 slot.container 9 lantern 4
replaceitem block ~5 ~-3 ~0 slot.container 10 glass_bottle 7
replaceitem block ~5 ~-3 ~0 slot.container 11 golden_apple 3
replaceitem block ~5 ~-3 ~0 slot.container 12 mushroom_stew 1
replaceitem block ~5 ~-3 ~0 slot.container 13 cooked_cod 12
replaceitem block ~5 ~-3 ~0 slot.container 14 iron_ingot 11
loot insert ~5 ~-3 ~0 loot "rsf/swampland"
loot insert ~5 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 mossy_stone_bricks []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 spruce_planks []
fill ~-2 ~5 ~-1 ~2 ~11 ~1 spruce_planks []
fill ~-2 ~1 ~-1 ~2 ~10 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 spruce_planks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 mossy_stone_bricks []
fill ~0 ~17 ~0 ~0 ~18 ~0 cauldron []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~4 ~-5 oak_log []
setblock ~-6 ~5 ~-5 lantern []
fill ~-6 ~0 ~5 ~-6 ~4 ~5 oak_log []
setblock ~-6 ~5 ~5 lantern []
fill ~6 ~0 ~-5 ~6 ~4 ~-5 oak_log []
setblock ~6 ~5 ~-5 lantern []
fill ~6 ~0 ~5 ~6 ~4 ~5 oak_log []
setblock ~6 ~5 ~5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 6x5x3) ---
fill ~-4 ~-5 ~-3 ~-4 ~0 ~-3 oak_log []
fill ~-4 ~-5 ~3 ~-4 ~0 ~3 oak_log []
fill ~4 ~-5 ~-3 ~4 ~0 ~-3 oak_log []
fill ~4 ~-5 ~3 ~4 ~0 ~3 oak_log []
setblock ~-2 ~1 ~-4 cauldron []
setblock ~2 ~3 ~-4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 1 fermented_spider_eye 5
replaceitem block ~3 ~1 ~1 slot.container 2 gunpowder 11
replaceitem block ~3 ~1 ~1 slot.container 3 redstone 14
replaceitem block ~3 ~1 ~1 slot.container 4 glowstone_dust 13
replaceitem block ~3 ~1 ~1 slot.container 5 bone 16
replaceitem block ~3 ~1 ~1 slot.container 9 brewing_stand 2
replaceitem block ~3 ~1 ~1 slot.container 10 cauldron 3
replaceitem block ~3 ~1 ~1 slot.container 11 lantern 7
replaceitem block ~3 ~1 ~1 slot.container 12 glass_bottle 10
replaceitem block ~3 ~1 ~1 slot.container 13 golden_apple 6
replaceitem block ~3 ~1 ~1 slot.container 14 mushroom_stew 1
loot insert ~3 ~1 ~1 loot "rsf/swampland"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 gunpowder 14
replaceitem block ~-3 ~1 ~2 slot.container 1 redstone 17
replaceitem block ~-3 ~1 ~2 slot.container 2 glowstone_dust 8
replaceitem block ~-3 ~1 ~2 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~2 slot.container 5 slime_ball 15
replaceitem block ~-3 ~1 ~2 slot.container 9 brewing_stand 7
replaceitem block ~-3 ~1 ~2 slot.container 10 cauldron 1
replaceitem block ~-3 ~1 ~2 slot.container 11 lantern 5
replaceitem block ~-3 ~1 ~2 slot.container 12 glass_bottle 8
replaceitem block ~-3 ~1 ~2 slot.container 13 golden_apple 4
replaceitem block ~-3 ~1 ~2 slot.container 14 mushroom_stew 1
loot insert ~-3 ~1 ~2 loot "rsf/swampland"
loot insert ~-3 ~1 ~2 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
