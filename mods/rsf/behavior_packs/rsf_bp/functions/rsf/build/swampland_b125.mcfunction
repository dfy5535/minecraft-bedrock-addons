# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1661/4224 | 主题内编号: b125/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·巨型阶梯金字塔神王殿 (swampland_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_bricks []
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
fill ~-7 ~1 ~-6 ~7 ~2 ~6 mossy_stone_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 spruce_planks []
fill ~-5 ~5 ~-4 ~5 ~9 ~4 spruce_planks []
fill ~-5 ~1 ~-4 ~5 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~10 ~-6 ~7 ~10 ~6 spruce_planks []
fill ~-6 ~11 ~-5 ~6 ~11 ~5 spruce_planks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 cauldron []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~-7 ~-6 ~-6 ~-7 ~0 ~-6 oak_log []
fill ~-7 ~-6 ~6 ~-7 ~0 ~6 oak_log []
fill ~7 ~-6 ~-6 ~7 ~0 ~-6 oak_log []
fill ~7 ~-6 ~6 ~7 ~0 ~6 oak_log []
setblock ~0 ~1 ~-7 cauldron []
setblock ~0 ~5 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 glowstone_dust 13
replaceitem block ~6 ~1 ~4 slot.container 1 bone 16
replaceitem block ~6 ~1 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~6 ~1 ~4 slot.container 3 slime_ball 12
replaceitem block ~6 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 5 fermented_spider_eye 5
replaceitem block ~6 ~1 ~4 slot.container 9 cooked_cod 10
replaceitem block ~6 ~1 ~4 slot.container 10 iron_ingot 9
replaceitem block ~6 ~1 ~4 slot.container 11 lead 6
replaceitem block ~6 ~1 ~4 slot.container 12 name_tag 1
replaceitem block ~6 ~1 ~4 slot.container 13 brewing_stand 7
replaceitem block ~6 ~1 ~4 slot.container 14 cauldron 1
loot insert ~6 ~1 ~4 loot "rsf/swampland"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~5 slot.container 1 slime_ball 15
replaceitem block ~-6 ~1 ~5 slot.container 2 spider_eye 12
replaceitem block ~-6 ~1 ~5 slot.container 3 fermented_spider_eye 8
replaceitem block ~-6 ~1 ~5 slot.container 4 gunpowder 14
replaceitem block ~-6 ~1 ~5 slot.container 5 redstone 17
replaceitem block ~-6 ~1 ~5 slot.container 9 cooked_cod 8
replaceitem block ~-6 ~1 ~5 slot.container 10 iron_ingot 7
replaceitem block ~-6 ~1 ~5 slot.container 11 lead 4
replaceitem block ~-6 ~1 ~5 slot.container 12 name_tag 1
replaceitem block ~-6 ~1 ~5 slot.container 13 brewing_stand 5
replaceitem block ~-6 ~1 ~5 slot.container 14 cauldron 6
loot insert ~-6 ~1 ~5 loot "rsf/swampland"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-3 ~0
