# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3134/4224 | 主题内编号: b062/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·下沉阶梯深渊藏骨堂 (lush_caves_crypt_sunken_ossuary)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 6格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 clay []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-7 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-7 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-7 ~3 shroomlight []
setblock ~4 ~-7 ~-3 shroomlight []
setblock ~4 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-5 ~3 slot.container 0 glow_ink_sac 15
replaceitem block ~4 ~-5 ~3 slot.container 1 slime_ball 16
replaceitem block ~4 ~-5 ~3 slot.container 2 string 17
replaceitem block ~4 ~-5 ~3 slot.container 3 spider_eye 6
replaceitem block ~4 ~-5 ~3 slot.container 4 bone 11
replaceitem block ~4 ~-5 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~-5 ~3 slot.container 9 gold_ingot 6
replaceitem block ~4 ~-5 ~3 slot.container 10 diamond 3
replaceitem block ~4 ~-5 ~3 slot.container 11 amethyst_shard 10
replaceitem block ~4 ~-5 ~3 slot.container 12 golden_apple 5
replaceitem block ~4 ~-5 ~3 slot.container 13 water_bucket 1
replaceitem block ~4 ~-5 ~3 slot.container 14 lantern 11
loot insert ~4 ~-5 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-5 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 moss_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 moss_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 deepslate_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 deepslate_brick_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-8 ~0 ~-1 ~-8 ~5 ~1 moss_block []
setblock ~-8 ~6 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 glow_ink_sac 10
replaceitem block ~-5 ~1 ~3 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 4 string 12
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 9 clay_ball 21
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 3
replaceitem block ~-5 ~1 ~3 slot.container 13 amethyst_shard 10
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 5
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-5 ~0
