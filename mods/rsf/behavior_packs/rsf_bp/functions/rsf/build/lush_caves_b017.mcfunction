# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3089/4224 | 主题内编号: b017/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双坡顶皇家藏宝室 (lush_caves_chamber_gabled_treasury)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 moss_block [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 moss_block [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 deepslate_bricks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 moss_block []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~6 ~-5 oak_log []
fill ~-5 ~1 ~5 ~-5 ~6 ~5 oak_log []
fill ~5 ~1 ~-5 ~5 ~6 ~-5 oak_log []
fill ~5 ~1 ~5 ~5 ~6 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 deepslate_brick_wall []
setblock ~5 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 deepslate_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 deepslate_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 deepslate_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-7 ~0 ~-1 ~-7 ~5 ~1 moss_block []
setblock ~-7 ~6 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-4 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 ochre_froglight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 slime_ball 11
replaceitem block ~4 ~1 ~3 slot.container 1 string 12
replaceitem block ~4 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 3 bone 14
replaceitem block ~4 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 14
replaceitem block ~4 ~1 ~3 slot.container 9 golden_apple 4
replaceitem block ~4 ~1 ~3 slot.container 10 water_bucket 1
replaceitem block ~4 ~1 ~3 slot.container 11 lantern 10
replaceitem block ~4 ~1 ~3 slot.container 12 glow_berries 21
replaceitem block ~4 ~1 ~3 slot.container 13 moss_block 22
replaceitem block ~4 ~1 ~3 slot.container 14 clay_ball 16
loot insert ~4 ~1 ~3 loot "rsf/lush_caves"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 17
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 10
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 9
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~4 slot.container 5 glow_ink_sac 13
replaceitem block ~-4 ~1 ~4 slot.container 9 golden_apple 2
replaceitem block ~-4 ~1 ~4 slot.container 10 water_bucket 1
replaceitem block ~-4 ~1 ~4 slot.container 11 lantern 8
replaceitem block ~-4 ~1 ~4 slot.container 12 glow_berries 19
replaceitem block ~-4 ~1 ~4 slot.container 13 moss_block 20
replaceitem block ~-4 ~1 ~4 slot.container 14 clay_ball 21
loot insert ~-4 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-4 ~1 ~4 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~-2 ~0
