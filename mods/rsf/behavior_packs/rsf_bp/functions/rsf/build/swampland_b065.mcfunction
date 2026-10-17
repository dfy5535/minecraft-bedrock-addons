# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1601/4224 | 主题内编号: b065/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·断柱露天古神庙废墟 (swampland_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 spruce_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

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

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 spruce_planks []
fill ~-6 ~1 ~-6 ~-6 ~5 ~-6 oak_log []
fill ~-6 ~1 ~6 ~-6 ~5 ~6 oak_log []
fill ~-4 ~1 ~-6 ~-4 ~5 ~-6 oak_log []
fill ~-4 ~1 ~6 ~-4 ~5 ~6 oak_log []
fill ~-2 ~1 ~-6 ~-2 ~5 ~-6 oak_log []
fill ~-2 ~1 ~6 ~-2 ~5 ~6 oak_log []
fill ~0 ~1 ~-6 ~0 ~5 ~-6 oak_log []
fill ~0 ~1 ~6 ~0 ~5 ~6 oak_log []
fill ~2 ~1 ~-6 ~2 ~5 ~-6 oak_log []
fill ~2 ~1 ~6 ~2 ~5 ~6 oak_log []
fill ~4 ~1 ~-6 ~4 ~5 ~-6 oak_log []
fill ~4 ~1 ~6 ~4 ~5 ~6 oak_log []
fill ~6 ~1 ~-6 ~6 ~5 ~-6 oak_log []
fill ~6 ~1 ~6 ~6 ~5 ~6 oak_log []
fill ~-6 ~1 ~-4 ~-6 ~5 ~-4 oak_log []
fill ~6 ~1 ~-4 ~6 ~5 ~-4 oak_log []
fill ~-6 ~1 ~-2 ~-6 ~5 ~-2 oak_log []
fill ~6 ~1 ~-2 ~6 ~5 ~-2 oak_log []
fill ~-6 ~1 ~0 ~-6 ~5 ~0 oak_log []
fill ~6 ~1 ~0 ~6 ~5 ~0 oak_log []
fill ~-6 ~1 ~2 ~-6 ~5 ~2 oak_log []
fill ~6 ~1 ~2 ~6 ~5 ~2 oak_log []
fill ~-6 ~1 ~4 ~-6 ~5 ~4 oak_log []
fill ~6 ~1 ~4 ~6 ~5 ~4 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 spruce_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~4 ~-8 oak_log []
setblock ~-8 ~5 ~-8 lantern []
fill ~-8 ~0 ~8 ~-8 ~4 ~8 oak_log []
setblock ~-8 ~5 ~8 lantern []
fill ~8 ~0 ~-8 ~8 ~4 ~-8 oak_log []
setblock ~8 ~5 ~-8 lantern []
fill ~8 ~0 ~8 ~8 ~4 ~8 oak_log []
setblock ~8 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-6 ~-5 ~-6 ~-6 ~0 ~-6 oak_log []
fill ~-6 ~-5 ~6 ~-6 ~0 ~6 oak_log []
fill ~6 ~-5 ~-6 ~6 ~0 ~-6 oak_log []
fill ~6 ~-5 ~6 ~6 ~0 ~6 oak_log []
setblock ~-1 ~1 ~-7 cauldron []
setblock ~1 ~5 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~4 slot.container 1 fermented_spider_eye 5
replaceitem block ~5 ~1 ~4 slot.container 2 gunpowder 11
replaceitem block ~5 ~1 ~4 slot.container 3 redstone 14
replaceitem block ~5 ~1 ~4 slot.container 4 glowstone_dust 13
replaceitem block ~5 ~1 ~4 slot.container 5 bone 16
replaceitem block ~5 ~1 ~4 slot.container 9 cooked_cod 13
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 11 lead 2
replaceitem block ~5 ~1 ~4 slot.container 12 name_tag 1
replaceitem block ~5 ~1 ~4 slot.container 13 brewing_stand 3
replaceitem block ~5 ~1 ~4 slot.container 14 cauldron 4
loot insert ~5 ~1 ~4 loot "rsf/swampland"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 gunpowder 14
replaceitem block ~-5 ~1 ~5 slot.container 1 redstone 17
replaceitem block ~-5 ~1 ~5 slot.container 2 glowstone_dust 8
replaceitem block ~-5 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 5 slime_ball 15
replaceitem block ~-5 ~1 ~5 slot.container 9 cooked_cod 11
replaceitem block ~-5 ~1 ~5 slot.container 10 iron_ingot 10
replaceitem block ~-5 ~1 ~5 slot.container 11 lead 7
replaceitem block ~-5 ~1 ~5 slot.container 12 name_tag 1
replaceitem block ~-5 ~1 ~5 slot.container 13 brewing_stand 1
replaceitem block ~-5 ~1 ~5 slot.container 14 cauldron 2
loot insert ~-5 ~1 ~5 loot "rsf/swampland"
loot insert ~-5 ~1 ~5 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-2 ~0
