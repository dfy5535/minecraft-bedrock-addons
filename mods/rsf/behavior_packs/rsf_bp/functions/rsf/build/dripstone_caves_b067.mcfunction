# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3267/4224 | 主题内编号: b067/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·半掩埋下沉庭院遗迹 (dripstone_caves_ruin_sunken_courtyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 dripstone_block []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 spider_eye 8
replaceitem block ~-3 ~-4 ~4 slot.container 1 arrow 19
replaceitem block ~-3 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-4 ~4 slot.container 3 copper_ingot 21
replaceitem block ~-3 ~-4 ~4 slot.container 4 rotten_flesh 18
replaceitem block ~-3 ~-4 ~4 slot.container 5 bone 17
replaceitem block ~-3 ~-4 ~4 slot.container 9 lava_bucket 1
replaceitem block ~-3 ~-4 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~-3 ~-4 ~4 slot.container 11 lantern 7
replaceitem block ~-3 ~-4 ~4 slot.container 12 pointed_dripstone 14
replaceitem block ~-3 ~-4 ~4 slot.container 13 dripstone_block 15
replaceitem block ~-3 ~-4 ~4 slot.container 14 iron_ingot 14
loot insert ~-3 ~-4 ~4 loot "rsf/dripstone_caves"
loot insert ~-3 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 deepslate_tiles []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 polished_deepslate []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 deepslate_tile_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 dripstone_block []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~2 ~8 ~7 ~2 dripstone_block []
setblock ~8 ~8 ~2 copper_block []
setblock ~8 ~9 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 1 string 14
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 copper_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 9 dripstone_block 17
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 12 coal 17
replaceitem block ~4 ~1 ~5 slot.container 13 diamond 4
replaceitem block ~4 ~1 ~5 slot.container 14 cauldron 5
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
