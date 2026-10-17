# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2375/4224 | 主题内编号: b071/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·残破双子哨所遗迹 (stony_peaks_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 stone_bricks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 stone_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 calcite []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 lantern []
setblock ~5 ~-7 ~0 lantern []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 bone 15
replaceitem block ~0 ~-5 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-5 ~4 slot.container 2 gunpowder 15
replaceitem block ~0 ~-5 ~4 slot.container 3 string 8
replaceitem block ~0 ~-5 ~4 slot.container 4 arrow 17
replaceitem block ~0 ~-5 ~4 slot.container 5 spider_eye 8
replaceitem block ~0 ~-5 ~4 slot.container 9 cooked_beef 11
replaceitem block ~0 ~-5 ~4 slot.container 10 golden_apple 5
replaceitem block ~0 ~-5 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-5 ~4 slot.container 12 water_bucket 1
replaceitem block ~0 ~-5 ~4 slot.container 13 shield 1
replaceitem block ~0 ~-5 ~4 slot.container 14 lantern 5
loot insert ~0 ~-5 ~4 loot "rsf/stony_peaks"
loot insert ~0 ~-5 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 bone 13
replaceitem block ~0 ~-5 ~-4 slot.container 1 rotten_flesh 14
replaceitem block ~0 ~-5 ~-4 slot.container 2 gunpowder 13
replaceitem block ~0 ~-5 ~-4 slot.container 3 string 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 arrow 23
replaceitem block ~0 ~-5 ~-4 slot.container 5 spider_eye 6
replaceitem block ~0 ~-5 ~-4 slot.container 9 cooked_beef 10
replaceitem block ~0 ~-5 ~-4 slot.container 10 golden_apple 4
replaceitem block ~0 ~-5 ~-4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-5 ~-4 slot.container 12 water_bucket 1
replaceitem block ~0 ~-5 ~-4 slot.container 13 shield 1
replaceitem block ~0 ~-5 ~-4 slot.container 14 lantern 4
loot insert ~0 ~-5 ~-4 loot "rsf/stony_peaks"
loot insert ~0 ~-5 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~6 ~8 ~4 stone_bricks []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 cobblestone []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 polished_deepslate []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~8 ~0 ~-5 ~8 ~5 ~-5 cobblestone_wall []
setblock ~8 ~6 ~-5 iron_block []
setblock ~8 ~7 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~2 slot.container 1 bone 10
replaceitem block ~5 ~1 ~2 slot.container 2 rotten_flesh 11
replaceitem block ~5 ~1 ~2 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~2 slot.container 4 string 11
replaceitem block ~5 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~2 slot.container 9 golden_apple 3
replaceitem block ~5 ~1 ~2 slot.container 10 iron_pickaxe 1
replaceitem block ~5 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~5 ~1 ~2 slot.container 12 shield 1
replaceitem block ~5 ~1 ~2 slot.container 13 lantern 10
replaceitem block ~5 ~1 ~2 slot.container 14 iron_ingot 10
loot insert ~5 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 14
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 2 string 14
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~3 slot.container 4 spider_eye 6
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 3
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 1
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 11 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 12 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 13 lantern 8
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 15
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~2 ~0
