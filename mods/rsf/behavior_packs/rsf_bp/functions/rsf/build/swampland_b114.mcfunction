# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1650/4224 | 主题内编号: b114/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双联拱顶植物培育馆 (swampland_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 spruce_planks [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 spruce_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 spruce_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mud_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 slime []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 rotten_flesh 14
replaceitem block ~4 ~-2 ~0 slot.container 1 slime_ball 17
replaceitem block ~4 ~-2 ~0 slot.container 2 spider_eye 14
replaceitem block ~4 ~-2 ~0 slot.container 3 fermented_spider_eye 10
replaceitem block ~4 ~-2 ~0 slot.container 4 gunpowder 8
replaceitem block ~4 ~-2 ~0 slot.container 5 redstone 11
replaceitem block ~4 ~-2 ~0 slot.container 9 lead 3
replaceitem block ~4 ~-2 ~0 slot.container 10 name_tag 1
replaceitem block ~4 ~-2 ~0 slot.container 11 brewing_stand 4
replaceitem block ~4 ~-2 ~0 slot.container 12 cauldron 5
replaceitem block ~4 ~-2 ~0 slot.container 13 lantern 9
replaceitem block ~4 ~-2 ~0 slot.container 14 glass_bottle 12
loot insert ~4 ~-2 ~0 loot "rsf/swampland"
loot insert ~4 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 spruce_planks []
fill ~2 ~1 ~-4 ~7 ~7 ~4 spruce_planks []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 mossy_cobblestone []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 mossy_cobblestone []
fill ~-6 ~7 ~-3 ~6 ~8 ~3 glass []
fill ~-5 ~7 ~-2 ~5 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 packed_mud []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-7 ~-5 ~-4 ~-7 ~0 ~-4 oak_log []
fill ~-7 ~-5 ~4 ~-7 ~0 ~4 oak_log []
fill ~7 ~-5 ~-4 ~7 ~0 ~-4 oak_log []
fill ~7 ~-5 ~4 ~7 ~0 ~4 oak_log []
setblock ~3 ~1 ~-5 cauldron []
setblock ~-3 ~4 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 smoker []
setblock ~-5 ~1 ~3 furnace []
setblock ~0 ~1 ~3 crafting_table []
setblock ~6 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 fermented_spider_eye 5
replaceitem block ~-6 ~1 ~2 slot.container 1 gunpowder 11
replaceitem block ~-6 ~1 ~2 slot.container 2 redstone 14
replaceitem block ~-6 ~1 ~2 slot.container 3 glowstone_dust 13
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~-6 ~1 ~2 slot.container 9 glass_bottle 11
replaceitem block ~-6 ~1 ~2 slot.container 10 golden_apple 7
replaceitem block ~-6 ~1 ~2 slot.container 11 mushroom_stew 1
replaceitem block ~-6 ~1 ~2 slot.container 12 cooked_cod 9
replaceitem block ~-6 ~1 ~2 slot.container 13 iron_ingot 8
replaceitem block ~-6 ~1 ~2 slot.container 14 lead 5
loot insert ~-6 ~1 ~2 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
