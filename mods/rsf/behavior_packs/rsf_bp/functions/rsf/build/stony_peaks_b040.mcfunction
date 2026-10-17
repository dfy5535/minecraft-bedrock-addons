# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2344/4224 | 主题内编号: b040/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·崩裂远古符文石碑 (stony_peaks_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 spider_eye 8
replaceitem block ~5 ~-3 ~0 slot.container 1 ender_pearl 5
replaceitem block ~5 ~-3 ~0 slot.container 2 phantom_membrane 6
replaceitem block ~5 ~-3 ~0 slot.container 3 bone 15
replaceitem block ~5 ~-3 ~0 slot.container 4 rotten_flesh 16
replaceitem block ~5 ~-3 ~0 slot.container 5 gunpowder 15
replaceitem block ~5 ~-3 ~0 slot.container 9 emerald 11
replaceitem block ~5 ~-3 ~0 slot.container 10 cooked_beef 14
replaceitem block ~5 ~-3 ~0 slot.container 11 golden_apple 1
replaceitem block ~5 ~-3 ~0 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~-3 ~0 slot.container 13 water_bucket 1
replaceitem block ~5 ~-3 ~0 slot.container 14 shield 1
loot insert ~5 ~-3 ~0 loot "rsf/stony_peaks"
loot insert ~5 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 calcite []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 deepslate_bricks []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 stone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 spruce_log []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 spruce_log []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 spruce_log []
fill ~6 ~0 ~2 ~6 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~7 ~0 ~-7 ~7 ~9 ~-7 cobblestone_wall []
setblock ~7 ~10 ~-7 iron_block []
setblock ~7 ~11 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 iron_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 10
replaceitem block ~-4 ~1 ~2 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 3 string 11
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 11
replaceitem block ~-4 ~1 ~2 slot.container 9 coal 22
replaceitem block ~-4 ~1 ~2 slot.container 10 emerald 6
replaceitem block ~-4 ~1 ~2 slot.container 11 cooked_beef 9
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_apple 3
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_pickaxe 1
replaceitem block ~-4 ~1 ~2 slot.container 14 water_bucket 1
loot insert ~-4 ~1 ~2 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
