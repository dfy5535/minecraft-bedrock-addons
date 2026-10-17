# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1620/4224 | 主题内编号: b084/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·露天采石场与矿道库 (swampland_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~3 slot.container 0 slime_ball 17
replaceitem block ~4 ~-4 ~3 slot.container 1 spider_eye 14
replaceitem block ~4 ~-4 ~3 slot.container 2 fermented_spider_eye 10
replaceitem block ~4 ~-4 ~3 slot.container 3 gunpowder 8
replaceitem block ~4 ~-4 ~3 slot.container 4 redstone 11
replaceitem block ~4 ~-4 ~3 slot.container 5 glowstone_dust 10
replaceitem block ~4 ~-4 ~3 slot.container 9 iron_ingot 12
replaceitem block ~4 ~-4 ~3 slot.container 10 lead 2
replaceitem block ~4 ~-4 ~3 slot.container 11 name_tag 1
replaceitem block ~4 ~-4 ~3 slot.container 12 brewing_stand 3
replaceitem block ~4 ~-4 ~3 slot.container 13 cauldron 4
replaceitem block ~4 ~-4 ~3 slot.container 14 lantern 8
loot insert ~4 ~-4 ~3 loot "rsf/swampland"
loot insert ~4 ~-4 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-5 ~5 ~5 ~5 mossy_stone_bricks []
fill ~-4 ~6 ~-4 ~4 ~7 ~4 glass []
fill ~-3 ~6 ~-3 ~3 ~6 ~3 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 spruce_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-6 ~-7 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-7 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-7 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-7 ~5 ~6 ~0 ~5 oak_log []
setblock ~0 ~1 ~-6 cauldron []
setblock ~0 ~4 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 redstone 14
replaceitem block ~-5 ~1 ~3 slot.container 1 glowstone_dust 13
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 4 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 9 glass_bottle 9
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_cod 14
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 14 lead 3
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
