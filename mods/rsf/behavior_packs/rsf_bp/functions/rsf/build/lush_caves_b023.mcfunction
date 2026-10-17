# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3095/4224 | 主题内编号: b023/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双层露台阁楼宝室 (lush_caves_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 deepslate_tiles []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 moss_block []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~4 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-6 ~4 ~-6 ~6 ~4 ~6 stone_brick_slab []
fill ~-4 ~5 ~-4 ~4 ~8 ~4 deepslate_tiles []
fill ~-3 ~5 ~-3 ~3 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-6 ~6 ~8 ~6 stone_brick_slab []
fill ~-4 ~9 ~-4 ~4 ~10 ~4 deepslate_tiles []
fill ~-5 ~11 ~-5 ~5 ~11 ~5 deepslate_tile_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 deepslate_tiles []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-7 ~0 ~0 ~-7 ~6 ~2 moss_block []
setblock ~-7 ~7 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 glow_ink_sac 10
replaceitem block ~4 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~3 slot.container 3 string 12
replaceitem block ~4 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 5 bone 14
replaceitem block ~4 ~1 ~3 slot.container 9 diamond 3
replaceitem block ~4 ~1 ~3 slot.container 10 amethyst_shard 10
replaceitem block ~4 ~1 ~3 slot.container 11 golden_apple 5
replaceitem block ~4 ~1 ~3 slot.container 12 water_bucket 1
replaceitem block ~4 ~1 ~3 slot.container 13 lantern 11
replaceitem block ~4 ~1 ~3 slot.container 14 glow_berries 22
loot insert ~4 ~1 ~3 loot "rsf/lush_caves"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 slime_ball 14
replaceitem block ~-4 ~1 ~4 slot.container 1 string 15
replaceitem block ~-4 ~1 ~4 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~4 slot.container 3 bone 17
replaceitem block ~-4 ~1 ~4 slot.container 4 rotten_flesh 10
replaceitem block ~-4 ~1 ~4 slot.container 5 gunpowder 9
replaceitem block ~-4 ~1 ~4 slot.container 9 diamond 8
replaceitem block ~-4 ~1 ~4 slot.container 10 amethyst_shard 8
replaceitem block ~-4 ~1 ~4 slot.container 11 golden_apple 3
replaceitem block ~-4 ~1 ~4 slot.container 12 water_bucket 1
replaceitem block ~-4 ~1 ~4 slot.container 13 lantern 9
replaceitem block ~-4 ~1 ~4 slot.container 14 glow_berries 20
loot insert ~-4 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-4 ~1 ~4 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~2 ~0
