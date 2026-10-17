# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1565/4224 | 主题内编号: b029/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·奥术星象琉璃塔 (swampland_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 spruce_planks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 cauldron []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 glowstone_dust 10
replaceitem block ~3 ~-2 ~0 slot.container 1 bone 13
replaceitem block ~3 ~-2 ~0 slot.container 2 rotten_flesh 14
replaceitem block ~3 ~-2 ~0 slot.container 3 slime_ball 17
replaceitem block ~3 ~-2 ~0 slot.container 4 spider_eye 14
replaceitem block ~3 ~-2 ~0 slot.container 5 fermented_spider_eye 10
replaceitem block ~3 ~-2 ~0 slot.container 9 golden_apple 3
replaceitem block ~3 ~-2 ~0 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~-2 ~0 slot.container 11 cooked_cod 12
replaceitem block ~3 ~-2 ~0 slot.container 12 iron_ingot 11
replaceitem block ~3 ~-2 ~0 slot.container 13 lead 8
replaceitem block ~3 ~-2 ~0 slot.container 14 name_tag 1
loot insert ~3 ~-2 ~0 loot "rsf/swampland"
loot insert ~3 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~10 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 spruce_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~10 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 spruce_planks []
fill ~-4 ~11 ~-3 ~4 ~12 ~3 glass []
fill ~-3 ~11 ~-2 ~3 ~11 ~2 air []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~-5 ~-5 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-5 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-5 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-5 ~4 ~5 ~0 ~4 oak_log []
setblock ~1 ~1 ~-5 cauldron []
setblock ~-1 ~4 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 glowstone_dust 13
replaceitem block ~4 ~1 ~2 slot.container 1 bone 16
replaceitem block ~4 ~1 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~1 ~2 slot.container 3 slime_ball 12
replaceitem block ~4 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 5 fermented_spider_eye 5
replaceitem block ~4 ~1 ~2 slot.container 9 lead 6
replaceitem block ~4 ~1 ~2 slot.container 10 name_tag 1
replaceitem block ~4 ~1 ~2 slot.container 11 brewing_stand 7
replaceitem block ~4 ~1 ~2 slot.container 12 cauldron 1
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 5
replaceitem block ~4 ~1 ~2 slot.container 14 glass_bottle 8
loot insert ~4 ~1 ~2 loot "rsf/swampland"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~3 slot.container 1 slime_ball 15
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 3 fermented_spider_eye 8
replaceitem block ~-4 ~1 ~3 slot.container 4 gunpowder 14
replaceitem block ~-4 ~1 ~3 slot.container 5 redstone 17
replaceitem block ~-4 ~1 ~3 slot.container 9 lead 4
replaceitem block ~-4 ~1 ~3 slot.container 10 name_tag 1
replaceitem block ~-4 ~1 ~3 slot.container 11 brewing_stand 5
replaceitem block ~-4 ~1 ~3 slot.container 12 cauldron 6
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 10
replaceitem block ~-4 ~1 ~3 slot.container 14 glass_bottle 6
loot insert ~-4 ~1 ~3 loot "rsf/swampland"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-2 ~0
