# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3145/4224 | 主题内编号: b073/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·八方图腾圣火石阵 (lush_caves_totem_eight_pillars)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 moss_block [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 moss_block [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~4 ~-2 ~3 slot.container 1 gunpowder 11
replaceitem block ~4 ~-2 ~3 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 3 glow_ink_sac 15
replaceitem block ~4 ~-2 ~3 slot.container 4 slime_ball 16
replaceitem block ~4 ~-2 ~3 slot.container 5 string 17
replaceitem block ~4 ~-2 ~3 slot.container 9 lantern 11
replaceitem block ~4 ~-2 ~3 slot.container 10 glow_berries 22
replaceitem block ~4 ~-2 ~3 slot.container 11 moss_block 16
replaceitem block ~4 ~-2 ~3 slot.container 12 clay_ball 17
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_ingot 10
replaceitem block ~4 ~-2 ~3 slot.container 14 gold_ingot 9
loot insert ~4 ~-2 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 moss_block []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 air []
fill ~6 ~1 ~5 ~6 ~8 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 oak_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 oak_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 oak_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 oak_log []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 oak_log []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 oak_log []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 oak_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 oak_log []
setblock ~0 ~4 ~-7 chiseled_deepslate []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 oak_log []
setblock ~0 ~4 ~7 chiseled_deepslate []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 oak_log []
setblock ~-8 ~4 ~0 chiseled_deepslate []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 oak_log []
setblock ~8 ~4 ~0 chiseled_deepslate []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~0 ~-8 ~6 ~2 moss_block []
setblock ~-8 ~7 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_deepslate []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 1 string 12
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 3 bone 14
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 14
replaceitem block ~5 ~1 ~3 slot.container 9 diamond 4
replaceitem block ~5 ~1 ~3 slot.container 10 amethyst_shard 11
replaceitem block ~5 ~1 ~3 slot.container 11 golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 12 water_bucket 1
replaceitem block ~5 ~1 ~3 slot.container 13 lantern 12
replaceitem block ~5 ~1 ~3 slot.container 14 glow_berries 16
loot insert ~5 ~1 ~3 loot "rsf/lush_caves"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 10
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 9
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 5 glow_ink_sac 13
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 2
replaceitem block ~-5 ~1 ~4 slot.container 10 amethyst_shard 9
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 12 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 13 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 14 glow_berries 21
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
