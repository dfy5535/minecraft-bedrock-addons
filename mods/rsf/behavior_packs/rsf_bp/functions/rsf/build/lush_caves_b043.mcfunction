# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3115/4224 | 主题内编号: b043/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·十字四门试炼擂台 (lush_caves_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 2格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tiles []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 moss_block []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 lantern []
setblock ~4 ~-5 ~-3 lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 1 bone 11
replaceitem block ~4 ~-3 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~4 ~-3 ~3 slot.container 3 gunpowder 11
replaceitem block ~4 ~-3 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 5 glow_ink_sac 15
replaceitem block ~4 ~-3 ~3 slot.container 9 diamond 5
replaceitem block ~4 ~-3 ~3 slot.container 10 amethyst_shard 12
replaceitem block ~4 ~-3 ~3 slot.container 11 golden_apple 7
replaceitem block ~4 ~-3 ~3 slot.container 12 water_bucket 1
replaceitem block ~4 ~-3 ~3 slot.container 13 lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 14 glow_berries 17
loot insert ~4 ~-3 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 mossy_stone_bricks []
fill ~-7 ~1 ~-2 ~7 ~6 ~2 mossy_stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 moss_block []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone_wall []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 oak_log []
setblock ~-7 ~8 ~-6 lantern []
setblock ~-7 ~7 ~6 oak_log []
setblock ~-7 ~8 ~6 lantern []
setblock ~7 ~7 ~-6 oak_log []
setblock ~7 ~8 ~-6 lantern []
setblock ~7 ~7 ~6 oak_log []
setblock ~7 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 moss_block []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~-9 ~0 ~-4 ~-9 ~6 ~-2 moss_block []
setblock ~-9 ~7 ~-3 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~5 fletching_table []
setblock ~0 ~1 ~5 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 1 bone 14
replaceitem block ~6 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 14
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 glow_ink_sac 10
replaceitem block ~6 ~1 ~4 slot.container 9 diamond 2
replaceitem block ~6 ~1 ~4 slot.container 10 amethyst_shard 9
replaceitem block ~6 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~6 ~1 ~4 slot.container 12 water_bucket 1
replaceitem block ~6 ~1 ~4 slot.container 13 lantern 10
replaceitem block ~6 ~1 ~4 slot.container 14 glow_berries 21
loot insert ~6 ~1 ~4 loot "rsf/lush_caves"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 rotten_flesh 10
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 9
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 glow_ink_sac 13
replaceitem block ~-6 ~1 ~5 slot.container 4 slime_ball 14
replaceitem block ~-6 ~1 ~5 slot.container 5 string 15
replaceitem block ~-6 ~1 ~5 slot.container 9 diamond 7
replaceitem block ~-6 ~1 ~5 slot.container 10 amethyst_shard 14
replaceitem block ~-6 ~1 ~5 slot.container 11 golden_apple 2
replaceitem block ~-6 ~1 ~5 slot.container 12 water_bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 13 lantern 8
replaceitem block ~-6 ~1 ~5 slot.container 14 glow_berries 19
loot insert ~-6 ~1 ~5 loot "rsf/lush_caves"
loot insert ~-6 ~1 ~5 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
