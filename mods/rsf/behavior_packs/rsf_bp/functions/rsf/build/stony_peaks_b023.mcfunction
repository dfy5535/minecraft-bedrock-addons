# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2327/4224 | 主题内编号: b023/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双层露台阁楼宝室 (stony_peaks_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 calcite []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 lantern []
setblock ~3 ~-7 ~-2 lantern []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 arrow 17
replaceitem block ~3 ~-5 ~2 slot.container 1 spider_eye 8
replaceitem block ~3 ~-5 ~2 slot.container 2 ender_pearl 5
replaceitem block ~3 ~-5 ~2 slot.container 3 phantom_membrane 6
replaceitem block ~3 ~-5 ~2 slot.container 4 bone 15
replaceitem block ~3 ~-5 ~2 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~-5 ~2 slot.container 9 iron_ingot 11
replaceitem block ~3 ~-5 ~2 slot.container 10 raw_iron 10
replaceitem block ~3 ~-5 ~2 slot.container 11 coal 19
replaceitem block ~3 ~-5 ~2 slot.container 12 emerald 10
replaceitem block ~3 ~-5 ~2 slot.container 13 cooked_beef 13
replaceitem block ~3 ~-5 ~2 slot.container 14 golden_apple 7
loot insert ~3 ~-5 ~2 loot "rsf/stony_peaks"
loot insert ~3 ~-5 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~4 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-6 ~4 ~-6 ~6 ~4 ~6 stone_brick_slab []
fill ~-4 ~5 ~-4 ~4 ~8 ~4 calcite []
fill ~-3 ~5 ~-3 ~3 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-6 ~6 ~8 ~6 stone_brick_slab []
fill ~-4 ~9 ~-4 ~4 ~10 ~4 calcite []
fill ~-5 ~11 ~-5 ~5 ~11 ~5 stone_brick_slab []
setblock ~0 ~12 ~0 emerald_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 calcite []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~0 ~-6 ~7 ~7 ~-6 cobblestone_wall []
setblock ~7 ~8 ~-6 iron_block []
setblock ~7 ~9 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 phantom_membrane 9
replaceitem block ~4 ~1 ~3 slot.container 1 bone 10
replaceitem block ~4 ~1 ~3 slot.container 2 rotten_flesh 11
replaceitem block ~4 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~3 slot.container 4 string 11
replaceitem block ~4 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 9 raw_iron 11
replaceitem block ~4 ~1 ~3 slot.container 10 coal 20
replaceitem block ~4 ~1 ~3 slot.container 11 emerald 11
replaceitem block ~4 ~1 ~3 slot.container 12 cooked_beef 14
replaceitem block ~4 ~1 ~3 slot.container 13 golden_apple 1
replaceitem block ~4 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~3 loot "rsf/stony_peaks"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 14
replaceitem block ~-4 ~1 ~4 slot.container 1 gunpowder 13
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~4 slot.container 4 spider_eye 6
replaceitem block ~-4 ~1 ~4 slot.container 5 ender_pearl 3
replaceitem block ~-4 ~1 ~4 slot.container 9 raw_iron 9
replaceitem block ~-4 ~1 ~4 slot.container 10 coal 18
replaceitem block ~-4 ~1 ~4 slot.container 11 emerald 9
replaceitem block ~-4 ~1 ~4 slot.container 12 cooked_beef 12
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~-4 ~1 ~4 loot "rsf/stony_peaks"
loot insert ~-4 ~1 ~4 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~2 ~0
