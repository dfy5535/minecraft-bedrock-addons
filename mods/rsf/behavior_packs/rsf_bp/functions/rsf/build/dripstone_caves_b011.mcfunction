# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3211/4224 | 主题内编号: b011/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·深渊困兽角斗地牢 (dripstone_caves_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 deepslate_tiles []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 gunpowder 10
replaceitem block ~0 ~-4 ~4 slot.container 1 string 11
replaceitem block ~0 ~-4 ~4 slot.container 2 spider_eye 8
replaceitem block ~0 ~-4 ~4 slot.container 3 arrow 19
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 copper_ingot 21
replaceitem block ~0 ~-4 ~4 slot.container 9 diamond 4
replaceitem block ~0 ~-4 ~4 slot.container 10 cauldron 5
replaceitem block ~0 ~-4 ~4 slot.container 11 lava_bucket 1
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~4 slot.container 13 lantern 12
replaceitem block ~0 ~-4 ~4 slot.container 14 pointed_dripstone 12
loot insert ~0 ~-4 ~4 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 deepslate_tiles []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 air []
fill ~5 ~1 ~6 ~5 ~8 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 chiseled_deepslate []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 chiseled_deepslate []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 chiseled_deepslate []
fill ~4 ~1 ~5 ~4 ~7 ~5 chiseled_deepslate []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 chiseled_deepslate []
setblock ~-5 ~10 ~-6 lantern []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 chiseled_deepslate []
setblock ~-5 ~10 ~6 lantern []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 chiseled_deepslate []
setblock ~5 ~10 ~-6 lantern []
fill ~5 ~7 ~6 ~5 ~9 ~6 chiseled_deepslate []
setblock ~5 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 deepslate_tile_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~8 ~0 ~0 ~8 ~6 ~0 dripstone_block []
setblock ~8 ~7 ~0 copper_block []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 1 string 14
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 copper_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 10 coal 22
replaceitem block ~4 ~1 ~5 slot.container 11 diamond 2
replaceitem block ~4 ~1 ~5 slot.container 12 cauldron 3
replaceitem block ~4 ~1 ~5 slot.container 13 lava_bucket 1
replaceitem block ~4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
