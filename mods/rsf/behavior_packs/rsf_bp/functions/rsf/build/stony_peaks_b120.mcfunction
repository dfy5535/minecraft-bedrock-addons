# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2424/4224 | 主题内编号: b120/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·引水渠跨桥水培温室 (stony_peaks_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 calcite [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 calcite [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_deepslate []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 calcite []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 phantom_membrane 6
replaceitem block ~4 ~-2 ~2 slot.container 1 bone 15
replaceitem block ~4 ~-2 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~4 ~-2 ~2 slot.container 3 gunpowder 15
replaceitem block ~4 ~-2 ~2 slot.container 4 string 8
replaceitem block ~4 ~-2 ~2 slot.container 5 arrow 17
replaceitem block ~4 ~-2 ~2 slot.container 9 emerald 11
replaceitem block ~4 ~-2 ~2 slot.container 10 cooked_beef 14
replaceitem block ~4 ~-2 ~2 slot.container 11 golden_apple 1
replaceitem block ~4 ~-2 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~-2 ~2 slot.container 13 water_bucket 1
replaceitem block ~4 ~-2 ~2 slot.container 14 shield 1
loot insert ~4 ~-2 ~2 loot "rsf/stony_peaks"
loot insert ~4 ~-2 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 calcite []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 stone_bricks []
fill ~-5 ~7 ~-3 ~5 ~8 ~3 glass []
fill ~-4 ~7 ~-2 ~4 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~8 ~0 ~-6 ~8 ~9 ~-6 cobblestone_wall []
setblock ~8 ~10 ~-6 iron_block []
setblock ~8 ~11 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 crafting_table []
setblock ~-4 ~1 ~3 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 bone 10
replaceitem block ~-5 ~1 ~2 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~2 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~2 slot.container 3 string 11
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~2 slot.container 5 spider_eye 11
replaceitem block ~-5 ~1 ~2 slot.container 9 coal 18
replaceitem block ~-5 ~1 ~2 slot.container 10 emerald 9
replaceitem block ~-5 ~1 ~2 slot.container 11 cooked_beef 12
replaceitem block ~-5 ~1 ~2 slot.container 12 golden_apple 6
replaceitem block ~-5 ~1 ~2 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~2 slot.container 14 water_bucket 1
loot insert ~-5 ~1 ~2 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
