# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1608/4224 | 主题内编号: b072/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·L型古商会废墟暗窖 (swampland_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 spruce_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~2 torch []
setblock ~3 ~-5 ~-2 torch []
setblock ~3 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~2 slot.container 0 slime_ball 17
replaceitem block ~3 ~-3 ~2 slot.container 1 spider_eye 14
replaceitem block ~3 ~-3 ~2 slot.container 2 fermented_spider_eye 10
replaceitem block ~3 ~-3 ~2 slot.container 3 gunpowder 8
replaceitem block ~3 ~-3 ~2 slot.container 4 redstone 11
replaceitem block ~3 ~-3 ~2 slot.container 5 glowstone_dust 10
replaceitem block ~3 ~-3 ~2 slot.container 9 glass_bottle 6
replaceitem block ~3 ~-3 ~2 slot.container 10 golden_apple 2
replaceitem block ~3 ~-3 ~2 slot.container 11 mushroom_stew 1
replaceitem block ~3 ~-3 ~2 slot.container 12 cooked_cod 11
replaceitem block ~3 ~-3 ~2 slot.container 13 iron_ingot 10
replaceitem block ~3 ~-3 ~2 slot.container 14 lead 7
loot insert ~3 ~-3 ~2 loot "rsf/swampland"
loot insert ~3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~6 ~5 cobblestone []
fill ~-6 ~1 ~0 ~6 ~5 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~-1 ~5 ~4 air []
fill ~-1 ~1 ~1 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 spruce_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 spruce_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 spruce_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-6 ~-6 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-6 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-6 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-6 ~5 ~6 ~0 ~5 oak_log []
setblock ~0 ~1 ~-6 cauldron []
setblock ~0 ~2 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 2 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~3 slot.container 4 redstone 14
replaceitem block ~-5 ~1 ~3 slot.container 5 glowstone_dust 13
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 10 lead 8
replaceitem block ~-5 ~1 ~3 slot.container 11 name_tag 1
replaceitem block ~-5 ~1 ~3 slot.container 12 brewing_stand 2
replaceitem block ~-5 ~1 ~3 slot.container 13 cauldron 3
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 7
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
