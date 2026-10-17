# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2316/4224 | 主题内编号: b012/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双子暗门地底宝库 (stony_peaks_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 calcite [] replace air
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 calcite [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_deepslate []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 deepslate_bricks []
fill ~-5 ~-6 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~5 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~2 slot.container 0 bone 15
replaceitem block ~5 ~-4 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~-4 ~2 slot.container 2 gunpowder 15
replaceitem block ~5 ~-4 ~2 slot.container 3 string 8
replaceitem block ~5 ~-4 ~2 slot.container 4 arrow 17
replaceitem block ~5 ~-4 ~2 slot.container 5 spider_eye 8
replaceitem block ~5 ~-4 ~2 slot.container 9 coal 18
replaceitem block ~5 ~-4 ~2 slot.container 10 emerald 9
replaceitem block ~5 ~-4 ~2 slot.container 11 cooked_beef 12
replaceitem block ~5 ~-4 ~2 slot.container 12 golden_apple 6
replaceitem block ~5 ~-4 ~2 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~-4 ~2 slot.container 14 water_bucket 1
loot insert ~5 ~-4 ~2 loot "rsf/stony_peaks"
loot insert ~5 ~-4 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 calcite []
fill ~2 ~1 ~-4 ~7 ~7 ~4 calcite []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 stone_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 cobblestone []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~9 ~0 ~-6 ~9 ~6 ~-6 cobblestone_wall []
setblock ~9 ~7 ~-6 iron_block []
setblock ~9 ~8 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-6 ~1 ~2 slot.container 1 spider_eye 11
replaceitem block ~-6 ~1 ~2 slot.container 2 ender_pearl 8
replaceitem block ~-6 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 10
replaceitem block ~-6 ~1 ~2 slot.container 5 rotten_flesh 11
replaceitem block ~-6 ~1 ~2 slot.container 9 shield 1
replaceitem block ~-6 ~1 ~2 slot.container 10 lantern 4
replaceitem block ~-6 ~1 ~2 slot.container 11 iron_ingot 11
replaceitem block ~-6 ~1 ~2 slot.container 12 raw_iron 10
replaceitem block ~-6 ~1 ~2 slot.container 13 coal 19
replaceitem block ~-6 ~1 ~2 slot.container 14 emerald 10
loot insert ~-6 ~1 ~2 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
