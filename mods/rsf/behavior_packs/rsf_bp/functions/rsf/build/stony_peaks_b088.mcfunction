# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2392/4224 | 主题内编号: b088/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·矿车铁轨转运仓库 (stony_peaks_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~-3 ~4 slot.container 1 spider_eye 8
replaceitem block ~3 ~-3 ~4 slot.container 2 ender_pearl 5
replaceitem block ~3 ~-3 ~4 slot.container 3 phantom_membrane 6
replaceitem block ~3 ~-3 ~4 slot.container 4 bone 15
replaceitem block ~3 ~-3 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~-3 ~4 slot.container 9 iron_ingot 11
replaceitem block ~3 ~-3 ~4 slot.container 10 raw_iron 10
replaceitem block ~3 ~-3 ~4 slot.container 11 coal 19
replaceitem block ~3 ~-3 ~4 slot.container 12 emerald 10
replaceitem block ~3 ~-3 ~4 slot.container 13 cooked_beef 13
replaceitem block ~3 ~-3 ~4 slot.container 14 golden_apple 7
loot insert ~3 ~-3 ~4 loot "rsf/stony_peaks"
loot insert ~3 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 calcite []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 stone_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 cobblestone []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~7 ~0 ~-9 ~7 ~7 ~-9 cobblestone_wall []
setblock ~7 ~8 ~-9 iron_block []
setblock ~7 ~9 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~4 slot.container 3 string 11
replaceitem block ~-4 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-4 ~1 ~4 slot.container 10 water_bucket 1
replaceitem block ~-4 ~1 ~4 slot.container 11 shield 1
replaceitem block ~-4 ~1 ~4 slot.container 12 lantern 5
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~-4 ~1 ~4 slot.container 14 raw_iron 11
loot insert ~-4 ~1 ~4 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
