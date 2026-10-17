# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3323/4224 | 主题内编号: b123/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·四角塔楼领主城堡复合体 (dripstone_caves_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_tailor]
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

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 lantern []
setblock ~4 ~-6 ~-5 lantern []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 spider_eye 8
replaceitem block ~4 ~-4 ~5 slot.container 1 arrow 19
replaceitem block ~4 ~-4 ~5 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~5 slot.container 3 copper_ingot 21
replaceitem block ~4 ~-4 ~5 slot.container 4 rotten_flesh 18
replaceitem block ~4 ~-4 ~5 slot.container 5 bone 17
replaceitem block ~4 ~-4 ~5 slot.container 9 dripstone_block 12
replaceitem block ~4 ~-4 ~5 slot.container 10 iron_ingot 11
replaceitem block ~4 ~-4 ~5 slot.container 11 gold_ingot 8
replaceitem block ~4 ~-4 ~5 slot.container 12 coal 19
replaceitem block ~4 ~-4 ~5 slot.container 13 diamond 6
replaceitem block ~4 ~-4 ~5 slot.container 14 cauldron 7
loot insert ~4 ~-4 ~5 loot "rsf/dripstone_caves"
loot insert ~4 ~-4 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 deepslate_tiles []
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~11 ~-6 dripstone_block []
setblock ~-6 ~12 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~11 ~7 dripstone_block []
setblock ~-6 ~12 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~11 ~-6 dripstone_block []
setblock ~5 ~12 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~11 ~7 dripstone_block []
setblock ~5 ~12 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 dripstone_block []
fill ~-6 ~10 ~-7 ~6 ~10 ~7 deepslate_tile_wall []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 air []
setblock ~-6 ~10 ~-7 chiseled_deepslate []
setblock ~-6 ~11 ~-7 lantern []
setblock ~-6 ~10 ~7 chiseled_deepslate []
setblock ~-6 ~11 ~7 lantern []
setblock ~6 ~10 ~-7 chiseled_deepslate []
setblock ~6 ~11 ~-7 lantern []
setblock ~6 ~10 ~7 chiseled_deepslate []
setblock ~6 ~11 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 deepslate_tile_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x10x6) ---
fill ~9 ~0 ~-2 ~9 ~8 ~-2 dripstone_block []
setblock ~9 ~9 ~-2 copper_block []
setblock ~9 ~10 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 1 string 14
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 copper_ingot 16
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 11
replaceitem block ~5 ~1 ~6 slot.container 10 pointed_dripstone 18
replaceitem block ~5 ~1 ~6 slot.container 11 dripstone_block 12
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 14 coal 19
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
