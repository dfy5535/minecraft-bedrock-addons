# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3151/4224 | 主题内编号: b079/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·四角结界守护柱阵 (lush_caves_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tiles []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_tiles []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 1 bone 11
replaceitem block ~4 ~-2 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~4 ~-2 ~3 slot.container 3 gunpowder 11
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 5 glow_ink_sac 15
replaceitem block ~4 ~-2 ~3 slot.container 9 golden_apple 6
replaceitem block ~4 ~-2 ~3 slot.container 10 water_bucket 1
replaceitem block ~4 ~-2 ~3 slot.container 11 lantern 12
replaceitem block ~4 ~-2 ~3 slot.container 12 glow_berries 16
replaceitem block ~4 ~-2 ~3 slot.container 13 moss_block 17
replaceitem block ~4 ~-2 ~3 slot.container 14 clay_ball 18
loot insert ~4 ~-2 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~9 ~-4 moss_block []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~1 ~4 ~-5 ~9 ~5 moss_block []
setblock ~-6 ~10 ~4 lantern []
fill ~5 ~1 ~-5 ~6 ~9 ~-4 moss_block []
setblock ~5 ~10 ~-5 lantern []
fill ~5 ~1 ~4 ~6 ~9 ~5 moss_block []
setblock ~5 ~10 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 deepslate_tile_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 oak_log []
setblock ~-8 ~5 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 oak_log []
setblock ~-8 ~5 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 oak_log []
setblock ~8 ~5 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~4 ~7 oak_log []
setblock ~8 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~1 ~-8 ~7 ~3 moss_block []
setblock ~-8 ~8 ~2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gold_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 1 glow_ink_sac 10
replaceitem block ~5 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 3 string 12
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 5 bone 14
replaceitem block ~5 ~1 ~3 slot.container 9 iron_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 10 gold_ingot 8
replaceitem block ~5 ~1 ~3 slot.container 11 diamond 5
replaceitem block ~5 ~1 ~3 slot.container 12 amethyst_shard 12
replaceitem block ~5 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~5 ~1 ~3 slot.container 14 water_bucket 1
loot insert ~5 ~1 ~3 loot "rsf/lush_caves"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 1 string 15
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 10
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 9
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 10 gold_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 3
replaceitem block ~-5 ~1 ~4 slot.container 12 amethyst_shard 10
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 14 water_bucket 1
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
