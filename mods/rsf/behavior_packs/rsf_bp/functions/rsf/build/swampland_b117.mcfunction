# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1653/4224 | 主题内编号: b117/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·环柱生态标本采集馆 (swampland_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 spruce_planks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 spider_eye 14
replaceitem block ~4 ~-2 ~3 slot.container 1 fermented_spider_eye 10
replaceitem block ~4 ~-2 ~3 slot.container 2 gunpowder 8
replaceitem block ~4 ~-2 ~3 slot.container 3 redstone 11
replaceitem block ~4 ~-2 ~3 slot.container 4 glowstone_dust 10
replaceitem block ~4 ~-2 ~3 slot.container 5 bone 13
replaceitem block ~4 ~-2 ~3 slot.container 9 cooked_cod 12
replaceitem block ~4 ~-2 ~3 slot.container 10 iron_ingot 11
replaceitem block ~4 ~-2 ~3 slot.container 11 lead 8
replaceitem block ~4 ~-2 ~3 slot.container 12 name_tag 1
replaceitem block ~4 ~-2 ~3 slot.container 13 brewing_stand 2
replaceitem block ~4 ~-2 ~3 slot.container 14 cauldron 3
loot insert ~4 ~-2 ~3 loot "rsf/swampland"
loot insert ~4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 spruce_planks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 oak_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 oak_log []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 oak_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 oak_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 oak_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 oak_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 oak_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 oak_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 oak_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 oak_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 oak_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 oak_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 oak_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 oak_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 oak_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 oak_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 oak_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 oak_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 oak_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 oak_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 spruce_planks []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-6 ~-5 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-5 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-5 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-5 ~5 ~6 ~0 ~5 oak_log []
setblock ~-3 ~1 ~-6 cauldron []
setblock ~3 ~2 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 glowstone_dust 13
replaceitem block ~5 ~1 ~3 slot.container 1 bone 16
replaceitem block ~5 ~1 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~1 ~3 slot.container 3 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 5 fermented_spider_eye 5
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 5
replaceitem block ~5 ~1 ~3 slot.container 10 glass_bottle 8
replaceitem block ~5 ~1 ~3 slot.container 11 golden_apple 4
replaceitem block ~5 ~1 ~3 slot.container 12 mushroom_stew 1
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_cod 13
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~5 ~1 ~3 loot "rsf/swampland"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 1 slime_ball 15
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 3 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 14
replaceitem block ~-5 ~1 ~4 slot.container 5 redstone 17
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 10 glass_bottle 6
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 2
replaceitem block ~-5 ~1 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_cod 11
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~-5 ~1 ~4 loot "rsf/swampland"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
