# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3127/4224 | 主题内编号: b055/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·木栅栏防御拓荒哨所 (lush_caves_outpost_palisade_fort)
# 建筑构造: 主体[fortress_citadel] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
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
replaceitem block ~4 ~-2 ~3 slot.container 9 diamond 3
replaceitem block ~4 ~-2 ~3 slot.container 10 amethyst_shard 10
replaceitem block ~4 ~-2 ~3 slot.container 11 golden_apple 5
replaceitem block ~4 ~-2 ~3 slot.container 12 water_bucket 1
replaceitem block ~4 ~-2 ~3 slot.container 13 lantern 11
replaceitem block ~4 ~-2 ~3 slot.container 14 glow_berries 22
loot insert ~4 ~-2 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~8 ~-4 moss_block []
setblock ~-6 ~9 ~-5 lantern []
fill ~-6 ~1 ~4 ~-5 ~8 ~5 moss_block []
setblock ~-6 ~9 ~4 lantern []
fill ~5 ~1 ~-5 ~6 ~8 ~-4 moss_block []
setblock ~5 ~9 ~-5 lantern []
fill ~5 ~1 ~4 ~6 ~8 ~5 moss_block []
setblock ~5 ~9 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 deepslate_tile_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~-3 ~-8 ~3 ~-1 moss_block []
setblock ~-8 ~4 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 1 glow_ink_sac 10
replaceitem block ~5 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 3 string 12
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 5 bone 14
replaceitem block ~5 ~1 ~3 slot.container 9 moss_block 21
replaceitem block ~5 ~1 ~3 slot.container 10 clay_ball 22
replaceitem block ~5 ~1 ~3 slot.container 11 iron_ingot 8
replaceitem block ~5 ~1 ~3 slot.container 12 gold_ingot 7
replaceitem block ~5 ~1 ~3 slot.container 13 diamond 4
replaceitem block ~5 ~1 ~3 slot.container 14 amethyst_shard 11
loot insert ~5 ~1 ~3 loot "rsf/lush_caves"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 1 string 15
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 10
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 9
replaceitem block ~-5 ~1 ~4 slot.container 9 moss_block 19
replaceitem block ~-5 ~1 ~4 slot.container 10 clay_ball 20
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 13
replaceitem block ~-5 ~1 ~4 slot.container 12 gold_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 13 diamond 2
replaceitem block ~-5 ~1 ~4 slot.container 14 amethyst_shard 9
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
