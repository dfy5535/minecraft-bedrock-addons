# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3167/4224 | 主题内编号: b095/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双子灯笼守卫神龛 (lush_caves_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x9 | 地上高度 7格 | 地下深度 2格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 mossy_stone_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~9 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 deepslate_tiles []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 deepslate_bricks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 deepslate_bricks []
setblock ~0 ~-6 ~0 chiseled_deepslate []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 glow_ink_sac 15
replaceitem block ~0 ~-3 ~-2 slot.container 2 slime_ball 16
replaceitem block ~0 ~-3 ~-2 slot.container 3 string 17
replaceitem block ~0 ~-3 ~-2 slot.container 4 spider_eye 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 bone 11
replaceitem block ~0 ~-3 ~-2 slot.container 9 diamond 2
replaceitem block ~0 ~-3 ~-2 slot.container 10 amethyst_shard 9
replaceitem block ~0 ~-3 ~-2 slot.container 11 golden_apple 4
replaceitem block ~0 ~-3 ~-2 slot.container 12 water_bucket 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 lantern 10
replaceitem block ~0 ~-3 ~-2 slot.container 14 glow_berries 21
loot insert ~0 ~-3 ~-2 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~-2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~8 ~3 mossy_stone_bricks []
fill ~2 ~1 ~-3 ~6 ~8 ~3 mossy_stone_bricks []
fill ~-5 ~1 ~-2 ~-3 ~7 ~2 air []
fill ~3 ~1 ~-2 ~5 ~7 ~2 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 moss_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 stone_brick_slab []
fill ~-5 ~8 ~-2 ~5 ~9 ~2 deepslate_tiles []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 deepslate_tile_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~4 ~-5 oak_log []
setblock ~-8 ~5 ~-5 lantern []
fill ~-8 ~0 ~5 ~-8 ~4 ~5 oak_log []
setblock ~-8 ~5 ~5 lantern []
fill ~8 ~0 ~-5 ~8 ~4 ~-5 oak_log []
setblock ~8 ~5 ~-5 lantern []
fill ~8 ~0 ~5 ~8 ~4 ~5 oak_log []
setblock ~8 ~5 ~5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x4x2) ---
fill ~-8 ~0 ~-1 ~-8 ~3 ~1 moss_block []
setblock ~-8 ~4 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~2 smoker []
setblock ~5 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 1 glow_ink_sac 10
replaceitem block ~5 ~1 ~1 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~1 slot.container 3 string 12
replaceitem block ~5 ~1 ~1 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~1 slot.container 5 bone 14
replaceitem block ~5 ~1 ~1 slot.container 9 moss_block 19
replaceitem block ~5 ~1 ~1 slot.container 10 clay_ball 20
replaceitem block ~5 ~1 ~1 slot.container 11 iron_ingot 13
replaceitem block ~5 ~1 ~1 slot.container 12 gold_ingot 12
replaceitem block ~5 ~1 ~1 slot.container 13 diamond 2
replaceitem block ~5 ~1 ~1 slot.container 14 amethyst_shard 9
loot insert ~5 ~1 ~1 loot "rsf/lush_caves"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 slime_ball 14
replaceitem block ~-5 ~1 ~2 slot.container 1 string 15
replaceitem block ~-5 ~1 ~2 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 17
replaceitem block ~-5 ~1 ~2 slot.container 4 rotten_flesh 10
replaceitem block ~-5 ~1 ~2 slot.container 5 gunpowder 9
replaceitem block ~-5 ~1 ~2 slot.container 9 moss_block 17
replaceitem block ~-5 ~1 ~2 slot.container 10 clay_ball 18
replaceitem block ~-5 ~1 ~2 slot.container 11 iron_ingot 11
replaceitem block ~-5 ~1 ~2 slot.container 12 gold_ingot 10
replaceitem block ~-5 ~1 ~2 slot.container 13 diamond 7
replaceitem block ~-5 ~1 ~2 slot.container 14 amethyst_shard 14
loot insert ~-5 ~1 ~2 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~2 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~2 ~0
