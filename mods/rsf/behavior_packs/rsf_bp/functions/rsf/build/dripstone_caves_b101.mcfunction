# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3301/4224 | 主题内编号: b101/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·L型驻军兵营军械所 (dripstone_caves_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 tuff []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobbled_deepslate []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 rotten_flesh 18
replaceitem block ~3 ~-3 ~4 slot.container 1 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 2 gunpowder 10
replaceitem block ~3 ~-3 ~4 slot.container 3 string 11
replaceitem block ~3 ~-3 ~4 slot.container 4 spider_eye 8
replaceitem block ~3 ~-3 ~4 slot.container 5 arrow 19
replaceitem block ~3 ~-3 ~4 slot.container 9 lava_bucket 1
replaceitem block ~3 ~-3 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~-3 ~4 slot.container 11 lantern 8
replaceitem block ~3 ~-3 ~4 slot.container 12 pointed_dripstone 15
replaceitem block ~3 ~-3 ~4 slot.container 13 dripstone_block 16
replaceitem block ~3 ~-3 ~4 slot.container 14 iron_ingot 15
loot insert ~3 ~-3 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~8 ~6 deepslate_bricks []
fill ~-5 ~1 ~0 ~5 ~7 ~6 cobbled_deepslate []
fill ~-4 ~1 ~-5 ~-1 ~7 ~5 air []
fill ~-1 ~1 ~1 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dripstone_block []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 deepslate_brick_wall []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~-5 ~9 ~-6 polished_deepslate []
setblock ~-5 ~10 ~-6 torch []
setblock ~-5 ~9 ~6 polished_deepslate []
setblock ~-5 ~10 ~6 torch []
setblock ~5 ~9 ~-6 polished_deepslate []
setblock ~5 ~10 ~-6 torch []
setblock ~5 ~9 ~6 polished_deepslate []
setblock ~5 ~10 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 cobbled_deepslate []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~8 ~0 ~0 ~8 ~6 ~0 dripstone_block []
setblock ~8 ~7 ~0 copper_block []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 copper_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 bone 12
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 10 coal 21
replaceitem block ~4 ~1 ~5 slot.container 11 diamond 8
replaceitem block ~4 ~1 ~5 slot.container 12 cauldron 2
replaceitem block ~4 ~1 ~5 slot.container 13 lava_bucket 1
replaceitem block ~4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
