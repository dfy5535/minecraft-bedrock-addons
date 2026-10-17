# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3327/4224 | 主题内编号: b127/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·万神殿巨型穹顶与试炼宫 (dripstone_caves_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 deepslate_tiles [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 deepslate_tiles [] replace water
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-4 ~-6 ~-5 lantern []
setblock ~4 ~-6 ~5 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 copper_ingot 21
replaceitem block ~0 ~-4 ~5 slot.container 2 rotten_flesh 18
replaceitem block ~0 ~-4 ~5 slot.container 3 bone 17
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 10
replaceitem block ~0 ~-4 ~5 slot.container 5 string 11
replaceitem block ~0 ~-4 ~5 slot.container 9 gold_ingot 12
replaceitem block ~0 ~-4 ~5 slot.container 10 coal 16
replaceitem block ~0 ~-4 ~5 slot.container 11 diamond 3
replaceitem block ~0 ~-4 ~5 slot.container 12 cauldron 4
replaceitem block ~0 ~-4 ~5 slot.container 13 lava_bucket 1
replaceitem block ~0 ~-4 ~5 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-4 ~5 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 dripstone_block []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 chiseled_deepslate []
fill ~-6 ~1 ~7 ~-6 ~8 ~7 chiseled_deepslate []
fill ~-4 ~1 ~-7 ~-4 ~8 ~-7 chiseled_deepslate []
fill ~-4 ~1 ~7 ~-4 ~8 ~7 chiseled_deepslate []
fill ~-2 ~1 ~-7 ~-2 ~8 ~-7 chiseled_deepslate []
fill ~-2 ~1 ~7 ~-2 ~8 ~7 chiseled_deepslate []
fill ~0 ~1 ~-7 ~0 ~8 ~-7 chiseled_deepslate []
fill ~0 ~1 ~7 ~0 ~8 ~7 chiseled_deepslate []
fill ~2 ~1 ~-7 ~2 ~8 ~-7 chiseled_deepslate []
fill ~2 ~1 ~7 ~2 ~8 ~7 chiseled_deepslate []
fill ~4 ~1 ~-7 ~4 ~8 ~-7 chiseled_deepslate []
fill ~4 ~1 ~7 ~4 ~8 ~7 chiseled_deepslate []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 chiseled_deepslate []
fill ~6 ~1 ~7 ~6 ~8 ~7 chiseled_deepslate []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 chiseled_deepslate []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 chiseled_deepslate []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 chiseled_deepslate []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 chiseled_deepslate []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 chiseled_deepslate []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 chiseled_deepslate []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 chiseled_deepslate []
fill ~6 ~1 ~1 ~6 ~8 ~1 chiseled_deepslate []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 chiseled_deepslate []
fill ~6 ~1 ~3 ~6 ~8 ~3 chiseled_deepslate []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 chiseled_deepslate []
fill ~6 ~1 ~5 ~6 ~8 ~5 chiseled_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 dripstone_block []
fill ~-5 ~10 ~-6 ~5 ~11 ~6 glass []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 chiseled_deepslate []
setblock ~0 ~4 ~-9 copper_block []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 chiseled_deepslate []
setblock ~0 ~4 ~9 copper_block []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_deepslate []
setblock ~-8 ~4 ~0 copper_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_deepslate []
setblock ~8 ~4 ~0 copper_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~9 ~0 ~2 ~9 ~7 ~2 dripstone_block []
setblock ~9 ~8 ~2 copper_block []
setblock ~9 ~9 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 1 copper_ingot 16
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 3 bone 12
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 5 string 14
replaceitem block ~5 ~1 ~6 slot.container 9 dripstone_block 14
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 12 coal 21
replaceitem block ~5 ~1 ~6 slot.container 13 diamond 8
replaceitem block ~5 ~1 ~6 slot.container 14 cauldron 2
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
