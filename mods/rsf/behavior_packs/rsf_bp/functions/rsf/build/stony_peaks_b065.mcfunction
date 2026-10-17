# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2369/4224 | 主题内编号: b065/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·断柱露天古神庙废墟 (stony_peaks_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace water
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 gold_block []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 spider_eye 8
replaceitem block ~4 ~-2 ~0 slot.container 1 ender_pearl 5
replaceitem block ~4 ~-2 ~0 slot.container 2 phantom_membrane 6
replaceitem block ~4 ~-2 ~0 slot.container 3 bone 15
replaceitem block ~4 ~-2 ~0 slot.container 4 rotten_flesh 16
replaceitem block ~4 ~-2 ~0 slot.container 5 gunpowder 15
replaceitem block ~4 ~-2 ~0 slot.container 9 lantern 5
replaceitem block ~4 ~-2 ~0 slot.container 10 iron_ingot 12
replaceitem block ~4 ~-2 ~0 slot.container 11 raw_iron 11
replaceitem block ~4 ~-2 ~0 slot.container 12 coal 20
replaceitem block ~4 ~-2 ~0 slot.container 13 emerald 11
replaceitem block ~4 ~-2 ~0 slot.container 14 cooked_beef 14
loot insert ~4 ~-2 ~0 loot "rsf/stony_peaks"
loot insert ~4 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 stone_bricks []
fill ~-6 ~1 ~-6 ~-6 ~5 ~-6 polished_deepslate []
fill ~-6 ~1 ~6 ~-6 ~5 ~6 polished_deepslate []
fill ~-4 ~1 ~-6 ~-4 ~5 ~-6 polished_deepslate []
fill ~-4 ~1 ~6 ~-4 ~5 ~6 polished_deepslate []
fill ~-2 ~1 ~-6 ~-2 ~5 ~-6 polished_deepslate []
fill ~-2 ~1 ~6 ~-2 ~5 ~6 polished_deepslate []
fill ~0 ~1 ~-6 ~0 ~5 ~-6 polished_deepslate []
fill ~0 ~1 ~6 ~0 ~5 ~6 polished_deepslate []
fill ~2 ~1 ~-6 ~2 ~5 ~-6 polished_deepslate []
fill ~2 ~1 ~6 ~2 ~5 ~6 polished_deepslate []
fill ~4 ~1 ~-6 ~4 ~5 ~-6 polished_deepslate []
fill ~4 ~1 ~6 ~4 ~5 ~6 polished_deepslate []
fill ~6 ~1 ~-6 ~6 ~5 ~-6 polished_deepslate []
fill ~6 ~1 ~6 ~6 ~5 ~6 polished_deepslate []
fill ~-6 ~1 ~-4 ~-6 ~5 ~-4 polished_deepslate []
fill ~6 ~1 ~-4 ~6 ~5 ~-4 polished_deepslate []
fill ~-6 ~1 ~-2 ~-6 ~5 ~-2 polished_deepslate []
fill ~6 ~1 ~-2 ~6 ~5 ~-2 polished_deepslate []
fill ~-6 ~1 ~0 ~-6 ~5 ~0 polished_deepslate []
fill ~6 ~1 ~0 ~6 ~5 ~0 polished_deepslate []
fill ~-6 ~1 ~2 ~-6 ~5 ~2 polished_deepslate []
fill ~6 ~1 ~2 ~6 ~5 ~2 polished_deepslate []
fill ~-6 ~1 ~4 ~-6 ~5 ~4 polished_deepslate []
fill ~6 ~1 ~4 ~6 ~5 ~4 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 deepslate_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~4 ~-8 polished_deepslate []
setblock ~-8 ~5 ~-8 campfire []
fill ~-8 ~0 ~8 ~-8 ~4 ~8 polished_deepslate []
setblock ~-8 ~5 ~8 campfire []
fill ~8 ~0 ~-8 ~8 ~4 ~-8 polished_deepslate []
setblock ~8 ~5 ~-8 campfire []
fill ~8 ~0 ~8 ~8 ~4 ~8 polished_deepslate []
setblock ~8 ~5 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~-7 ~8 ~9 ~-7 cobblestone_wall []
setblock ~8 ~10 ~-7 iron_block []
setblock ~8 ~11 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 11
replaceitem block ~5 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~4 slot.container 2 string 11
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 11
replaceitem block ~5 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~5 ~1 ~4 slot.container 9 water_bucket 1
replaceitem block ~5 ~1 ~4 slot.container 10 shield 1
replaceitem block ~5 ~1 ~4 slot.container 11 lantern 9
replaceitem block ~5 ~1 ~4 slot.container 12 iron_ingot 16
replaceitem block ~5 ~1 ~4 slot.container 13 raw_iron 8
replaceitem block ~5 ~1 ~4 slot.container 14 coal 17
loot insert ~5 ~1 ~4 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 14
replaceitem block ~-5 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-5 ~1 ~5 slot.container 2 spider_eye 6
replaceitem block ~-5 ~1 ~5 slot.container 3 ender_pearl 3
replaceitem block ~-5 ~1 ~5 slot.container 4 phantom_membrane 4
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~5 slot.container 9 water_bucket 1
replaceitem block ~-5 ~1 ~5 slot.container 10 shield 1
replaceitem block ~-5 ~1 ~5 slot.container 11 lantern 7
replaceitem block ~-5 ~1 ~5 slot.container 12 iron_ingot 14
replaceitem block ~-5 ~1 ~5 slot.container 13 raw_iron 13
replaceitem block ~-5 ~1 ~5 slot.container 14 coal 22
loot insert ~-5 ~1 ~5 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~5 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~-2 ~0
