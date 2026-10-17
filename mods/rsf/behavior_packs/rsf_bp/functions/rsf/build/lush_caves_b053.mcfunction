# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3125/4224 | 主题内编号: b053/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·测绘师观景制图站 (lush_caves_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 moss_block [] replace air
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 moss_block [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-4 ~5 ~-1 ~4 deepslate_bricks []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 moss_block []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 oak_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 oak_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 deepslate_bricks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 deepslate_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 ochre_froglight []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 deepslate_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~-7 ~0 ~-1 ~-7 ~6 ~1 moss_block []
setblock ~-7 ~7 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~2 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 3 glow_ink_sac 10
replaceitem block ~4 ~1 ~2 slot.container 4 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 5 string 12
replaceitem block ~4 ~1 ~2 slot.container 9 diamond 5
replaceitem block ~4 ~1 ~2 slot.container 10 amethyst_shard 12
replaceitem block ~4 ~1 ~2 slot.container 11 golden_apple 7
replaceitem block ~4 ~1 ~2 slot.container 12 water_bucket 1
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 6
replaceitem block ~4 ~1 ~2 slot.container 14 glow_berries 17
loot insert ~4 ~1 ~2 loot "rsf/lush_caves"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 1 glow_ink_sac 13
replaceitem block ~-4 ~1 ~3 slot.container 2 slime_ball 14
replaceitem block ~-4 ~1 ~3 slot.container 3 string 15
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 17
replaceitem block ~-4 ~1 ~3 slot.container 9 diamond 3
replaceitem block ~-4 ~1 ~3 slot.container 10 amethyst_shard 10
replaceitem block ~-4 ~1 ~3 slot.container 11 golden_apple 5
replaceitem block ~-4 ~1 ~3 slot.container 12 water_bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 11
replaceitem block ~-4 ~1 ~3 slot.container 14 glow_berries 22
loot insert ~-4 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-4 ~1 ~3 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~2 ~0
