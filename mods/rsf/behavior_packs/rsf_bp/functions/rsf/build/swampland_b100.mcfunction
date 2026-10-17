# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1636/4224 | 主题内编号: b100/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·半地下暗堡火力点 (swampland_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 5格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 slime_ball 17
replaceitem block ~3 ~-4 ~2 slot.container 1 spider_eye 14
replaceitem block ~3 ~-4 ~2 slot.container 2 fermented_spider_eye 10
replaceitem block ~3 ~-4 ~2 slot.container 3 gunpowder 8
replaceitem block ~3 ~-4 ~2 slot.container 4 redstone 11
replaceitem block ~3 ~-4 ~2 slot.container 5 glowstone_dust 10
replaceitem block ~3 ~-4 ~2 slot.container 9 iron_ingot 10
replaceitem block ~3 ~-4 ~2 slot.container 10 lead 7
replaceitem block ~3 ~-4 ~2 slot.container 11 name_tag 1
replaceitem block ~3 ~-4 ~2 slot.container 12 brewing_stand 1
replaceitem block ~3 ~-4 ~2 slot.container 13 cauldron 2
replaceitem block ~3 ~-4 ~2 slot.container 14 lantern 6
loot insert ~3 ~-4 ~2 loot "rsf/swampland"
loot insert ~3 ~-4 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-4 ~5 ~5 ~4 spruce_planks []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 spruce_fence []
fill ~-4 ~6 ~-3 ~4 ~6 ~3 air []
setblock ~-5 ~6 ~-4 spruce_log []
setblock ~-5 ~7 ~-4 soul_lantern []
setblock ~-5 ~6 ~4 spruce_log []
setblock ~-5 ~7 ~4 soul_lantern []
setblock ~5 ~6 ~-4 spruce_log []
setblock ~5 ~7 ~-4 soul_lantern []
setblock ~5 ~6 ~4 spruce_log []
setblock ~5 ~7 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-5 ~-7 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-7 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-7 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-7 ~4 ~5 ~0 ~4 oak_log []
setblock ~2 ~1 ~-5 cauldron []
setblock ~-2 ~5 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 redstone 14
replaceitem block ~-4 ~1 ~2 slot.container 1 glowstone_dust 13
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~1 ~2 slot.container 4 slime_ball 12
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 9 cauldron 6
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 10
replaceitem block ~-4 ~1 ~2 slot.container 11 glass_bottle 6
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 13 mushroom_stew 1
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_cod 11
loot insert ~-4 ~1 ~2 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
