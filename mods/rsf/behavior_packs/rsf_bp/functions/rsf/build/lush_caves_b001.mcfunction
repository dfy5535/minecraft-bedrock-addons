# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3073/4224 | 主题内编号: b001/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·三层阶梯圣火祭坛 (lush_caves_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 moss_block [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 moss_block [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 moss_block []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 slime_ball 16
replaceitem block ~4 ~-3 ~4 slot.container 1 string 17
replaceitem block ~4 ~-3 ~4 slot.container 2 spider_eye 6
replaceitem block ~4 ~-3 ~4 slot.container 3 bone 11
replaceitem block ~4 ~-3 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~4 ~-3 ~4 slot.container 5 gunpowder 11
replaceitem block ~4 ~-3 ~4 slot.container 9 moss_block 20
replaceitem block ~4 ~-3 ~4 slot.container 10 clay_ball 21
replaceitem block ~4 ~-3 ~4 slot.container 11 iron_ingot 14
replaceitem block ~4 ~-3 ~4 slot.container 12 gold_ingot 6
replaceitem block ~4 ~-3 ~4 slot.container 13 diamond 3
replaceitem block ~4 ~-3 ~4 slot.container 14 amethyst_shard 10
loot insert ~4 ~-3 ~4 loot "rsf/lush_caves"
loot insert ~4 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 moss_block []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 deepslate_bricks []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 deepslate_bricks []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-4 ~-5 ~8 ~-4 oak_log []
setblock ~-5 ~9 ~-4 lantern []
fill ~-5 ~6 ~4 ~-5 ~8 ~4 oak_log []
setblock ~-5 ~9 ~4 lantern []
fill ~5 ~6 ~-4 ~5 ~8 ~-4 oak_log []
setblock ~5 ~9 ~-4 lantern []
fill ~5 ~6 ~4 ~5 ~8 ~4 oak_log []
setblock ~5 ~9 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 oak_log []
setblock ~-7 ~5 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 oak_log []
setblock ~-7 ~5 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 oak_log []
setblock ~7 ~5 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~4 ~6 oak_log []
setblock ~7 ~5 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~-1 ~-7 ~4 ~1 moss_block []
setblock ~-7 ~5 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 ochre_froglight []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 1 string 12
replaceitem block ~4 ~1 ~2 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 3 bone 14
replaceitem block ~4 ~1 ~2 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 14
replaceitem block ~4 ~1 ~2 slot.container 9 lantern 6
replaceitem block ~4 ~1 ~2 slot.container 10 glow_berries 17
replaceitem block ~4 ~1 ~2 slot.container 11 moss_block 18
replaceitem block ~4 ~1 ~2 slot.container 12 clay_ball 19
replaceitem block ~4 ~1 ~2 slot.container 13 iron_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 14 gold_ingot 11
loot insert ~4 ~1 ~2 loot "rsf/lush_caves"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 17
replaceitem block ~-4 ~1 ~3 slot.container 2 rotten_flesh 10
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 9
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 5 glow_ink_sac 13
replaceitem block ~-4 ~1 ~3 slot.container 9 lantern 11
replaceitem block ~-4 ~1 ~3 slot.container 10 glow_berries 22
replaceitem block ~-4 ~1 ~3 slot.container 11 moss_block 16
replaceitem block ~-4 ~1 ~3 slot.container 12 clay_ball 17
replaceitem block ~-4 ~1 ~3 slot.container 13 iron_ingot 10
replaceitem block ~-4 ~1 ~3 slot.container 14 gold_ingot 9
loot insert ~-4 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-4 ~1 ~3 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
