# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3191/4224 | 主题内编号: b119/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·半地下恒温洞穴苗圃 (lush_caves_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~7 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 deepslate_tiles []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 moss_block []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~3 slot.container 0 slime_ball 16
replaceitem block ~-3 ~-3 ~3 slot.container 1 string 17
replaceitem block ~-3 ~-3 ~3 slot.container 2 spider_eye 6
replaceitem block ~-3 ~-3 ~3 slot.container 3 bone 11
replaceitem block ~-3 ~-3 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~-3 ~3 slot.container 5 gunpowder 11
replaceitem block ~-3 ~-3 ~3 slot.container 9 lantern 6
replaceitem block ~-3 ~-3 ~3 slot.container 10 glow_berries 17
replaceitem block ~-3 ~-3 ~3 slot.container 11 moss_block 18
replaceitem block ~-3 ~-3 ~3 slot.container 12 clay_ball 19
replaceitem block ~-3 ~-3 ~3 slot.container 13 iron_ingot 12
replaceitem block ~-3 ~-3 ~3 slot.container 14 gold_ingot 11
loot insert ~-3 ~-3 ~3 loot "rsf/lush_caves"
loot insert ~-3 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 moss_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 moss_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-5 ~5 ~5 ~5 moss_block []
fill ~-4 ~6 ~-4 ~4 ~7 ~4 glass []
fill ~-3 ~6 ~-3 ~3 ~6 ~3 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-7 ~7 ~2 ~7 cobblestone_wall []
fill ~-6 ~1 ~-6 ~6 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~0 ~1 ~-7 ~7 ~3 moss_block []
setblock ~-7 ~8 ~2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 glow_ink_sac 10
replaceitem block ~4 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~3 slot.container 3 string 12
replaceitem block ~4 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 5 bone 14
replaceitem block ~4 ~1 ~3 slot.container 9 iron_ingot 14
replaceitem block ~4 ~1 ~3 slot.container 10 gold_ingot 6
replaceitem block ~4 ~1 ~3 slot.container 11 diamond 3
replaceitem block ~4 ~1 ~3 slot.container 12 amethyst_shard 10
replaceitem block ~4 ~1 ~3 slot.container 13 golden_apple 5
replaceitem block ~4 ~1 ~3 slot.container 14 water_bucket 1
loot insert ~4 ~1 ~3 loot "rsf/lush_caves"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 slime_ball 14
replaceitem block ~-4 ~1 ~4 slot.container 1 string 15
replaceitem block ~-4 ~1 ~4 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~4 slot.container 3 bone 17
replaceitem block ~-4 ~1 ~4 slot.container 4 rotten_flesh 10
replaceitem block ~-4 ~1 ~4 slot.container 5 gunpowder 9
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~-4 ~1 ~4 slot.container 10 gold_ingot 11
replaceitem block ~-4 ~1 ~4 slot.container 11 diamond 8
replaceitem block ~-4 ~1 ~4 slot.container 12 amethyst_shard 8
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~-4 ~1 ~4 slot.container 14 water_bucket 1
loot insert ~-4 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-4 ~1 ~4 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~-3 ~0
