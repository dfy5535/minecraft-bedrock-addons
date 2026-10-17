# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2365/4224 | 主题内编号: b061/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双子封土古墓地宫 (stony_peaks_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cobblestone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 deepslate_bricks []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~2 anvil []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~4 ~-2 ~2 slot.container 1 gunpowder 15
replaceitem block ~4 ~-2 ~2 slot.container 2 string 8
replaceitem block ~4 ~-2 ~2 slot.container 3 arrow 17
replaceitem block ~4 ~-2 ~2 slot.container 4 spider_eye 8
replaceitem block ~4 ~-2 ~2 slot.container 5 ender_pearl 5
replaceitem block ~4 ~-2 ~2 slot.container 9 emerald 7
replaceitem block ~4 ~-2 ~2 slot.container 10 cooked_beef 10
replaceitem block ~4 ~-2 ~2 slot.container 11 golden_apple 4
replaceitem block ~4 ~-2 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~-2 ~2 slot.container 13 water_bucket 1
replaceitem block ~4 ~-2 ~2 slot.container 14 shield 1
loot insert ~4 ~-2 ~2 loot "rsf/stony_peaks"
loot insert ~4 ~-2 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 deepslate_bricks []
fill ~2 ~1 ~-4 ~7 ~7 ~4 deepslate_bricks []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 stone_bricks []
fill ~-6 ~8 ~-3 ~6 ~8 ~3 cobblestone []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gold_block []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~9 ~0 ~-7 ~9 ~5 ~-7 cobblestone_wall []
setblock ~9 ~6 ~-7 iron_block []
setblock ~9 ~7 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 smithing_table []
setblock ~-5 ~1 ~3 anvil []
setblock ~5 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 spider_eye 11
replaceitem block ~6 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~6 ~1 ~2 slot.container 2 phantom_membrane 9
replaceitem block ~6 ~1 ~2 slot.container 3 bone 10
replaceitem block ~6 ~1 ~2 slot.container 4 rotten_flesh 11
replaceitem block ~6 ~1 ~2 slot.container 5 gunpowder 10
replaceitem block ~6 ~1 ~2 slot.container 9 golden_apple 7
replaceitem block ~6 ~1 ~2 slot.container 10 iron_pickaxe 1
replaceitem block ~6 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~6 ~1 ~2 slot.container 12 shield 1
replaceitem block ~6 ~1 ~2 slot.container 13 lantern 7
replaceitem block ~6 ~1 ~2 slot.container 14 iron_ingot 14
loot insert ~6 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 phantom_membrane 4
replaceitem block ~-6 ~1 ~3 slot.container 1 bone 13
replaceitem block ~-6 ~1 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~-6 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-6 ~1 ~3 slot.container 4 string 14
replaceitem block ~-6 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-6 ~1 ~3 slot.container 9 golden_apple 5
replaceitem block ~-6 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~-6 ~1 ~3 slot.container 11 water_bucket 1
replaceitem block ~-6 ~1 ~3 slot.container 12 shield 1
replaceitem block ~-6 ~1 ~3 slot.container 13 lantern 5
replaceitem block ~-6 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~-6 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-6 ~1 ~3 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
