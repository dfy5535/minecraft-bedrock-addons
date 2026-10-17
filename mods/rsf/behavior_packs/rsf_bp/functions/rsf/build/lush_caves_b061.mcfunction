# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3133/4224 | 主题内编号: b061/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双子封土古墓地宫 (lush_caves_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 moss_block [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 moss_block [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mossy_stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 clay []
setblock ~0 ~0 ~0 ochre_froglight []

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
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 moss_block []
fill ~2 ~1 ~-4 ~7 ~7 ~4 moss_block []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 deepslate_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 deepslate_bricks []
fill ~-6 ~8 ~-3 ~6 ~8 ~3 deepslate_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 ochre_froglight []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 deepslate_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~-1 ~-9 ~4 ~1 moss_block []
setblock ~-9 ~5 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_deepslate []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~6 ~1 ~2 slot.container 1 gunpowder 14
replaceitem block ~6 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~2 slot.container 3 glow_ink_sac 10
replaceitem block ~6 ~1 ~2 slot.container 4 slime_ball 11
replaceitem block ~6 ~1 ~2 slot.container 5 string 12
replaceitem block ~6 ~1 ~2 slot.container 9 lantern 10
replaceitem block ~6 ~1 ~2 slot.container 10 glow_berries 21
replaceitem block ~6 ~1 ~2 slot.container 11 moss_block 22
replaceitem block ~6 ~1 ~2 slot.container 12 clay_ball 16
replaceitem block ~6 ~1 ~2 slot.container 13 iron_ingot 9
replaceitem block ~6 ~1 ~2 slot.container 14 gold_ingot 8
loot insert ~6 ~1 ~2 loot "rsf/lush_caves"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~3 slot.container 1 glow_ink_sac 13
replaceitem block ~-6 ~1 ~3 slot.container 2 slime_ball 14
replaceitem block ~-6 ~1 ~3 slot.container 3 string 15
replaceitem block ~-6 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-6 ~1 ~3 slot.container 5 bone 17
replaceitem block ~-6 ~1 ~3 slot.container 9 lantern 8
replaceitem block ~-6 ~1 ~3 slot.container 10 glow_berries 19
replaceitem block ~-6 ~1 ~3 slot.container 11 moss_block 20
replaceitem block ~-6 ~1 ~3 slot.container 12 clay_ball 21
replaceitem block ~-6 ~1 ~3 slot.container 13 iron_ingot 14
replaceitem block ~-6 ~1 ~3 slot.container 14 gold_ingot 6
loot insert ~-6 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-6 ~1 ~3 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
