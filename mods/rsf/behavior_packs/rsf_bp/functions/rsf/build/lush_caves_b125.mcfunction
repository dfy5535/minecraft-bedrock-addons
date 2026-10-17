# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3197/4224 | 主题内编号: b125/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·巨型阶梯金字塔神王殿 (lush_caves_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 moss_block [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 moss_block [] replace water
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 ochre_froglight []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 rotten_flesh 12
replaceitem block ~5 ~-3 ~0 slot.container 1 gunpowder 11
replaceitem block ~5 ~-3 ~0 slot.container 2 ender_pearl 6
replaceitem block ~5 ~-3 ~0 slot.container 3 glow_ink_sac 15
replaceitem block ~5 ~-3 ~0 slot.container 4 slime_ball 16
replaceitem block ~5 ~-3 ~0 slot.container 5 string 17
replaceitem block ~5 ~-3 ~0 slot.container 9 golden_apple 5
replaceitem block ~5 ~-3 ~0 slot.container 10 water_bucket 1
replaceitem block ~5 ~-3 ~0 slot.container 11 lantern 11
replaceitem block ~5 ~-3 ~0 slot.container 12 glow_berries 22
replaceitem block ~5 ~-3 ~0 slot.container 13 moss_block 16
replaceitem block ~5 ~-3 ~0 slot.container 14 clay_ball 17
loot insert ~5 ~-3 ~0 loot "rsf/lush_caves"
loot insert ~5 ~-3 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 moss_block []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 deepslate_bricks []
fill ~-5 ~5 ~-4 ~5 ~9 ~4 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~10 ~-6 ~7 ~10 ~6 deepslate_bricks []
fill ~-6 ~11 ~-5 ~6 ~11 ~5 deepslate_bricks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 ochre_froglight []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-9 ~0 ~0 ~-9 ~3 ~2 moss_block []
setblock ~-9 ~4 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 ochre_froglight []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 14
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 3 glow_ink_sac 10
replaceitem block ~6 ~1 ~4 slot.container 4 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 5 string 12
replaceitem block ~6 ~1 ~4 slot.container 9 moss_block 21
replaceitem block ~6 ~1 ~4 slot.container 10 clay_ball 22
replaceitem block ~6 ~1 ~4 slot.container 11 iron_ingot 8
replaceitem block ~6 ~1 ~4 slot.container 12 gold_ingot 7
replaceitem block ~6 ~1 ~4 slot.container 13 diamond 4
replaceitem block ~6 ~1 ~4 slot.container 14 amethyst_shard 11
loot insert ~6 ~1 ~4 loot "rsf/lush_caves"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 1 glow_ink_sac 13
replaceitem block ~-6 ~1 ~5 slot.container 2 slime_ball 14
replaceitem block ~-6 ~1 ~5 slot.container 3 string 15
replaceitem block ~-6 ~1 ~5 slot.container 4 spider_eye 12
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 17
replaceitem block ~-6 ~1 ~5 slot.container 9 moss_block 19
replaceitem block ~-6 ~1 ~5 slot.container 10 clay_ball 20
replaceitem block ~-6 ~1 ~5 slot.container 11 iron_ingot 13
replaceitem block ~-6 ~1 ~5 slot.container 12 gold_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 13 diamond 2
replaceitem block ~-6 ~1 ~5 slot.container 14 amethyst_shard 9
loot insert ~-6 ~1 ~5 loot "rsf/lush_caves"
loot insert ~-6 ~1 ~5 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~-3 ~0
