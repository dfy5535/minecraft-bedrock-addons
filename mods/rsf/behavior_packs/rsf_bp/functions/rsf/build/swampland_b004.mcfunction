# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1540/4224 | 主题内编号: b004/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双子火盆高台神坛 (swampland_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log2
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cobblestone [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cobblestone [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 spruce_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mossy_stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 spruce_planks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 spruce_planks []
setblock ~0 ~-6 ~0 brewing_stand []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 14
replaceitem block ~0 ~-3 ~-2 slot.container 1 slime_ball 17
replaceitem block ~0 ~-3 ~-2 slot.container 2 spider_eye 14
replaceitem block ~0 ~-3 ~-2 slot.container 3 fermented_spider_eye 10
replaceitem block ~0 ~-3 ~-2 slot.container 4 gunpowder 8
replaceitem block ~0 ~-3 ~-2 slot.container 5 redstone 11
replaceitem block ~0 ~-3 ~-2 slot.container 9 brewing_stand 5
replaceitem block ~0 ~-3 ~-2 slot.container 10 cauldron 6
replaceitem block ~0 ~-3 ~-2 slot.container 11 lantern 10
replaceitem block ~0 ~-3 ~-2 slot.container 12 glass_bottle 6
replaceitem block ~0 ~-3 ~-2 slot.container 13 golden_apple 2
replaceitem block ~0 ~-3 ~-2 slot.container 14 mushroom_stew 1
loot insert ~0 ~-3 ~-2 loot "rsf/swampland"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 cobblestone []
fill ~2 ~1 ~-4 ~7 ~8 ~4 cobblestone []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 spruce_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-4 ~-7 ~9 ~-4 spruce_log []
setblock ~-7 ~10 ~-4 soul_lantern []
fill ~-7 ~7 ~4 ~-7 ~9 ~4 spruce_log []
setblock ~-7 ~10 ~4 soul_lantern []
fill ~7 ~7 ~-4 ~7 ~9 ~-4 spruce_log []
setblock ~7 ~10 ~-4 soul_lantern []
fill ~7 ~7 ~4 ~7 ~9 ~4 spruce_log []
setblock ~7 ~10 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 spruce_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 spruce_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 spruce_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~-7 ~-5 ~-4 ~-7 ~0 ~-4 oak_log []
fill ~-7 ~-5 ~4 ~-7 ~0 ~4 oak_log []
fill ~7 ~-5 ~-4 ~7 ~0 ~-4 oak_log []
fill ~7 ~-5 ~4 ~7 ~0 ~4 oak_log []
setblock ~-2 ~1 ~-5 cauldron []
setblock ~2 ~4 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 redstone 14
replaceitem block ~-6 ~1 ~2 slot.container 1 glowstone_dust 13
replaceitem block ~-6 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-6 ~1 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-6 ~1 ~2 slot.container 4 slime_ball 12
replaceitem block ~-6 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~2 slot.container 9 glass_bottle 6
replaceitem block ~-6 ~1 ~2 slot.container 10 golden_apple 2
replaceitem block ~-6 ~1 ~2 slot.container 11 mushroom_stew 1
replaceitem block ~-6 ~1 ~2 slot.container 12 cooked_cod 11
replaceitem block ~-6 ~1 ~2 slot.container 13 iron_ingot 10
replaceitem block ~-6 ~1 ~2 slot.container 14 lead 7
loot insert ~-6 ~1 ~2 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
