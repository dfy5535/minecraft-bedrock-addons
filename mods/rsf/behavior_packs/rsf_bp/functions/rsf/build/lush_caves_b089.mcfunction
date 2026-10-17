# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3161/4224 | 主题内编号: b089/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·四柱挑檐祈愿凉亭 (lush_caves_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x9 | 地上高度 7格 | 地下深度 2格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 moss_block [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 moss_block [] replace water
fill ~-5 ~1 ~-4 ~5 ~9 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 deepslate_bricks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~7 ~3 moss_block []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 oak_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 oak_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 deepslate_brick_wall []
setblock ~4 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~9 ~-4 ~4 ~9 ~4 deepslate_tile_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-4 ~8 ~-1 ~-4 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 deepslate_bricks []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 oak_log []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 oak_log []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 deepslate_brick_slab []
setblock ~0 ~3 ~-5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 6x4x6) ---
fill ~-6 ~0 ~-1 ~-6 ~7 ~1 moss_block []
setblock ~-6 ~8 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~2 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 slime_ball 11
replaceitem block ~3 ~1 ~1 slot.container 1 string 12
replaceitem block ~3 ~1 ~1 slot.container 2 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 3 bone 14
replaceitem block ~3 ~1 ~1 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~1 slot.container 5 gunpowder 14
replaceitem block ~3 ~1 ~1 slot.container 9 iron_ingot 12
replaceitem block ~3 ~1 ~1 slot.container 10 gold_ingot 11
replaceitem block ~3 ~1 ~1 slot.container 11 diamond 8
replaceitem block ~3 ~1 ~1 slot.container 12 amethyst_shard 8
replaceitem block ~3 ~1 ~1 slot.container 13 golden_apple 3
replaceitem block ~3 ~1 ~1 slot.container 14 water_bucket 1
loot insert ~3 ~1 ~1 loot "rsf/lush_caves"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-3 ~1 ~2 slot.container 1 bone 17
replaceitem block ~-3 ~1 ~2 slot.container 2 rotten_flesh 10
replaceitem block ~-3 ~1 ~2 slot.container 3 gunpowder 9
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 5 glow_ink_sac 13
replaceitem block ~-3 ~1 ~2 slot.container 9 iron_ingot 10
replaceitem block ~-3 ~1 ~2 slot.container 10 gold_ingot 9
replaceitem block ~-3 ~1 ~2 slot.container 11 diamond 6
replaceitem block ~-3 ~1 ~2 slot.container 12 amethyst_shard 13
replaceitem block ~-3 ~1 ~2 slot.container 13 golden_apple 8
replaceitem block ~-3 ~1 ~2 slot.container 14 water_bucket 1
loot insert ~-3 ~1 ~2 loot "rsf/lush_caves"
loot insert ~-3 ~1 ~2 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~2 ~0
