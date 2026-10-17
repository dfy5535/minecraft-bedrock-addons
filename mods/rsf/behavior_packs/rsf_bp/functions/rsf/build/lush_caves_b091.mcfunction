# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3163/4224 | 主题内编号: b091/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·跨水拱桥水神小祠 (lush_caves_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x9 | 地上高度 7格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~9 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 deepslate_tiles []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-2 ~5 ~-1 ~2 moss_block []
fill ~-4 ~-4 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~1 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~-2 ~1 slot.container 1 gunpowder 11
replaceitem block ~-4 ~-2 ~1 slot.container 2 ender_pearl 6
replaceitem block ~-4 ~-2 ~1 slot.container 3 glow_ink_sac 15
replaceitem block ~-4 ~-2 ~1 slot.container 4 slime_ball 16
replaceitem block ~-4 ~-2 ~1 slot.container 5 string 17
replaceitem block ~-4 ~-2 ~1 slot.container 9 diamond 2
replaceitem block ~-4 ~-2 ~1 slot.container 10 amethyst_shard 9
replaceitem block ~-4 ~-2 ~1 slot.container 11 golden_apple 4
replaceitem block ~-4 ~-2 ~1 slot.container 12 water_bucket 1
replaceitem block ~-4 ~-2 ~1 slot.container 13 lantern 10
replaceitem block ~-4 ~-2 ~1 slot.container 14 glow_berries 21
loot insert ~-4 ~-2 ~1 loot "rsf/lush_caves"
loot insert ~-4 ~-2 ~1 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~7 ~3 mossy_stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 stone_brick_slab []
fill ~-5 ~8 ~-2 ~5 ~9 ~2 deepslate_tiles []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 deepslate_tile_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 moss_block []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 lantern []
setblock ~2 ~4 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~0 moss_block []
setblock ~-8 ~5 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~1 slot.container 1 bone 14
replaceitem block ~5 ~1 ~1 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~1 slot.container 3 gunpowder 14
replaceitem block ~5 ~1 ~1 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 5 glow_ink_sac 10
replaceitem block ~5 ~1 ~1 slot.container 9 lantern 12
replaceitem block ~5 ~1 ~1 slot.container 10 glow_berries 16
replaceitem block ~5 ~1 ~1 slot.container 11 moss_block 17
replaceitem block ~5 ~1 ~1 slot.container 12 clay_ball 18
replaceitem block ~5 ~1 ~1 slot.container 13 iron_ingot 11
replaceitem block ~5 ~1 ~1 slot.container 14 gold_ingot 10
loot insert ~5 ~1 ~1 loot "rsf/lush_caves"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rotten_flesh 10
replaceitem block ~-5 ~1 ~2 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~2 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~2 slot.container 3 glow_ink_sac 13
replaceitem block ~-5 ~1 ~2 slot.container 4 slime_ball 14
replaceitem block ~-5 ~1 ~2 slot.container 5 string 15
replaceitem block ~-5 ~1 ~2 slot.container 9 lantern 10
replaceitem block ~-5 ~1 ~2 slot.container 10 glow_berries 21
replaceitem block ~-5 ~1 ~2 slot.container 11 moss_block 22
replaceitem block ~-5 ~1 ~2 slot.container 12 clay_ball 16
replaceitem block ~-5 ~1 ~2 slot.container 13 iron_ingot 9
replaceitem block ~-5 ~1 ~2 slot.container 14 gold_ingot 8
loot insert ~-5 ~1 ~2 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~2 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
