# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3105/4224 | 主题内编号: b033/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·太阳金顶高耸方尖碑 (lush_caves_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 moss_block [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 moss_block [] replace water
fill ~-5 ~1 ~-4 ~5 ~13 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 deepslate_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 deepslate_bricks []
setblock ~0 ~-5 ~0 chiseled_deepslate []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 spider_eye 6
replaceitem block ~0 ~-2 ~-1 slot.container 1 bone 11
replaceitem block ~0 ~-2 ~-1 slot.container 2 rotten_flesh 12
replaceitem block ~0 ~-2 ~-1 slot.container 3 gunpowder 11
replaceitem block ~0 ~-2 ~-1 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-2 ~-1 slot.container 5 glow_ink_sac 15
replaceitem block ~0 ~-2 ~-1 slot.container 9 moss_block 16
replaceitem block ~0 ~-2 ~-1 slot.container 10 clay_ball 17
replaceitem block ~0 ~-2 ~-1 slot.container 11 iron_ingot 10
replaceitem block ~0 ~-2 ~-1 slot.container 12 gold_ingot 9
replaceitem block ~0 ~-2 ~-1 slot.container 13 diamond 6
replaceitem block ~0 ~-2 ~-1 slot.container 14 amethyst_shard 13
loot insert ~0 ~-2 ~-1 loot "rsf/lush_caves"
loot insert ~0 ~-2 ~-1 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 moss_block []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 deepslate_bricks []
fill ~-2 ~5 ~-1 ~2 ~11 ~1 deepslate_bricks []
fill ~-2 ~1 ~-1 ~2 ~10 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 deepslate_bricks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 moss_block []
fill ~0 ~17 ~0 ~0 ~18 ~0 ochre_froglight []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~4 ~-5 oak_log []
setblock ~-6 ~5 ~-5 lantern []
fill ~-6 ~0 ~5 ~-6 ~4 ~5 oak_log []
setblock ~-6 ~5 ~5 lantern []
fill ~6 ~0 ~-5 ~6 ~4 ~-5 oak_log []
setblock ~6 ~5 ~-5 lantern []
fill ~6 ~0 ~5 ~6 ~4 ~5 oak_log []
setblock ~6 ~5 ~5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 6x5x5) ---
fill ~-6 ~0 ~0 ~-6 ~6 ~2 moss_block []
setblock ~-6 ~7 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 slime_ball 11
replaceitem block ~3 ~1 ~1 slot.container 1 string 12
replaceitem block ~3 ~1 ~1 slot.container 2 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 3 bone 14
replaceitem block ~3 ~1 ~1 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~1 slot.container 5 gunpowder 14
replaceitem block ~3 ~1 ~1 slot.container 9 diamond 6
replaceitem block ~3 ~1 ~1 slot.container 10 amethyst_shard 13
replaceitem block ~3 ~1 ~1 slot.container 11 golden_apple 8
replaceitem block ~3 ~1 ~1 slot.container 12 water_bucket 1
replaceitem block ~3 ~1 ~1 slot.container 13 lantern 7
replaceitem block ~3 ~1 ~1 slot.container 14 glow_berries 18
loot insert ~3 ~1 ~1 loot "rsf/lush_caves"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-3 ~1 ~2 slot.container 1 bone 17
replaceitem block ~-3 ~1 ~2 slot.container 2 rotten_flesh 10
replaceitem block ~-3 ~1 ~2 slot.container 3 gunpowder 9
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 5 glow_ink_sac 13
replaceitem block ~-3 ~1 ~2 slot.container 9 diamond 4
replaceitem block ~-3 ~1 ~2 slot.container 10 amethyst_shard 11
replaceitem block ~-3 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~-3 ~1 ~2 slot.container 12 water_bucket 1
replaceitem block ~-3 ~1 ~2 slot.container 13 lantern 12
replaceitem block ~-3 ~1 ~2 slot.container 14 glow_berries 16
loot insert ~-3 ~1 ~2 loot "rsf/lush_caves"
loot insert ~-3 ~1 ~2 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
