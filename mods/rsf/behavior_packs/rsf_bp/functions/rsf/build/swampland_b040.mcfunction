# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1576/4224 | 主题内编号: b040/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·崩裂远古符文石碑 (swampland_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[trial_pit] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 bookshelf []
setblock ~-4 ~-5 ~-3 soul_lantern []
setblock ~4 ~-5 ~3 soul_lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 redstone 11
replaceitem block ~0 ~-3 ~3 slot.container 1 glowstone_dust 10
replaceitem block ~0 ~-3 ~3 slot.container 2 bone 13
replaceitem block ~0 ~-3 ~3 slot.container 3 rotten_flesh 14
replaceitem block ~0 ~-3 ~3 slot.container 4 slime_ball 17
replaceitem block ~0 ~-3 ~3 slot.container 5 spider_eye 14
replaceitem block ~0 ~-3 ~3 slot.container 9 cauldron 7
replaceitem block ~0 ~-3 ~3 slot.container 10 lantern 4
replaceitem block ~0 ~-3 ~3 slot.container 11 glass_bottle 7
replaceitem block ~0 ~-3 ~3 slot.container 12 golden_apple 3
replaceitem block ~0 ~-3 ~3 slot.container 13 mushroom_stew 1
replaceitem block ~0 ~-3 ~3 slot.container 14 cooked_cod 12
loot insert ~0 ~-3 ~3 loot "rsf/swampland"
loot insert ~0 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 cobblestone []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 spruce_planks []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 mossy_stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 spruce_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 spruce_log []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 spruce_log []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 spruce_log []
fill ~6 ~0 ~2 ~6 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-5 ~-6 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-6 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-6 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-6 ~4 ~5 ~0 ~4 oak_log []
setblock ~2 ~1 ~-5 cauldron []
setblock ~-2 ~5 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 bookshelf []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 slime_ball 12
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 2 fermented_spider_eye 5
replaceitem block ~-4 ~1 ~2 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~2 slot.container 4 redstone 14
replaceitem block ~-4 ~1 ~2 slot.container 5 glowstone_dust 13
replaceitem block ~-4 ~1 ~2 slot.container 9 cauldron 2
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 6
replaceitem block ~-4 ~1 ~2 slot.container 11 glass_bottle 9
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_apple 5
replaceitem block ~-4 ~1 ~2 slot.container 13 mushroom_stew 1
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_cod 14
loot insert ~-4 ~1 ~2 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
