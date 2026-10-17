# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2357/4224 | 主题内编号: b053/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·测绘师观景制图站 (stony_peaks_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-4 ~5 ~-1 ~4 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 polished_deepslate []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 polished_deepslate []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 polished_deepslate []
fill ~4 ~1 ~3 ~4 ~7 ~3 polished_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 cobblestone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~7 ~0 ~-5 ~7 ~7 ~-5 cobblestone_wall []
setblock ~7 ~8 ~-5 iron_block []
setblock ~7 ~9 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 2 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 3 bone 10
replaceitem block ~4 ~1 ~2 slot.container 4 rotten_flesh 11
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~2 slot.container 9 raw_iron 13
replaceitem block ~4 ~1 ~2 slot.container 10 coal 22
replaceitem block ~4 ~1 ~2 slot.container 11 emerald 6
replaceitem block ~4 ~1 ~2 slot.container 12 cooked_beef 9
replaceitem block ~4 ~1 ~2 slot.container 13 golden_apple 3
replaceitem block ~4 ~1 ~2 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 phantom_membrane 4
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 13
replaceitem block ~-4 ~1 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 4 string 14
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 9 raw_iron 11
replaceitem block ~-4 ~1 ~3 slot.container 10 coal 20
replaceitem block ~-4 ~1 ~3 slot.container 11 emerald 11
replaceitem block ~-4 ~1 ~3 slot.container 12 cooked_beef 14
replaceitem block ~-4 ~1 ~3 slot.container 13 golden_apple 1
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~-4 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~2 ~0
