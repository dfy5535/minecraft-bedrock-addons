# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3077/4224 | 主题内编号: b005/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·下沉圣泉秘宝祭坛 (lush_caves_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 moss_block [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 moss_block [] replace water
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_bricks []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 deepslate_bricks []
setblock ~0 ~-6 ~0 chiseled_deepslate []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 spider_eye 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 11
replaceitem block ~0 ~-3 ~-4 slot.container 2 rotten_flesh 12
replaceitem block ~0 ~-3 ~-4 slot.container 3 gunpowder 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 5 glow_ink_sac 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 diamond 7
replaceitem block ~0 ~-3 ~-4 slot.container 12 amethyst_shard 14
replaceitem block ~0 ~-3 ~-4 slot.container 13 golden_apple 2
replaceitem block ~0 ~-3 ~-4 slot.container 14 water_bucket 1
loot insert ~0 ~-3 ~-4 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 moss_block []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 deepslate_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 deepslate_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-4 ~-5 ~7 ~-4 oak_log []
setblock ~-5 ~8 ~-4 lantern []
fill ~-5 ~5 ~4 ~-5 ~7 ~4 oak_log []
setblock ~-5 ~8 ~4 lantern []
fill ~5 ~5 ~-4 ~5 ~7 ~-4 oak_log []
setblock ~5 ~8 ~-4 lantern []
fill ~5 ~5 ~4 ~5 ~7 ~4 oak_log []
setblock ~5 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_brick_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~-7 ~0 ~-1 ~-7 ~3 ~1 moss_block []
setblock ~-7 ~4 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~2 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 3 glow_ink_sac 10
replaceitem block ~4 ~1 ~2 slot.container 4 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 5 string 12
replaceitem block ~4 ~1 ~2 slot.container 9 moss_block 20
replaceitem block ~4 ~1 ~2 slot.container 10 clay_ball 21
replaceitem block ~4 ~1 ~2 slot.container 11 iron_ingot 14
replaceitem block ~4 ~1 ~2 slot.container 12 gold_ingot 6
replaceitem block ~4 ~1 ~2 slot.container 13 diamond 3
replaceitem block ~4 ~1 ~2 slot.container 14 amethyst_shard 10
loot insert ~4 ~1 ~2 loot "rsf/lush_caves"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 1 glow_ink_sac 13
replaceitem block ~-4 ~1 ~3 slot.container 2 slime_ball 14
replaceitem block ~-4 ~1 ~3 slot.container 3 string 15
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 17
replaceitem block ~-4 ~1 ~3 slot.container 9 moss_block 18
replaceitem block ~-4 ~1 ~3 slot.container 10 clay_ball 19
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 12 gold_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 13 diamond 8
replaceitem block ~-4 ~1 ~3 slot.container 14 amethyst_shard 8
loot insert ~-4 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-4 ~1 ~3 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~-3 ~0
