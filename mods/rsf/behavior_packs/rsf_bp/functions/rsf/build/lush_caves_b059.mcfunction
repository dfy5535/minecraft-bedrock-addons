# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3131/4224 | 主题内编号: b059/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·阶梯金字塔法老墓室 (lush_caves_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tiles []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_tiles []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 moss_block []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 12
replaceitem block ~0 ~-3 ~-4 slot.container 1 gunpowder 11
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 glow_ink_sac 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 slime_ball 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 lantern 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 glow_berries 22
replaceitem block ~0 ~-3 ~-4 slot.container 11 moss_block 16
replaceitem block ~0 ~-3 ~-4 slot.container 12 clay_ball 17
replaceitem block ~0 ~-3 ~-4 slot.container 13 iron_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 gold_ingot 9
loot insert ~0 ~-3 ~-4 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 mossy_stone_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 moss_block []
fill ~-5 ~5 ~-4 ~5 ~7 ~4 deepslate_tiles []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 moss_block []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 deepslate_tiles []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 oak_log []
setblock ~-9 ~5 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 oak_log []
setblock ~-9 ~5 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 oak_log []
setblock ~9 ~5 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 oak_log []
setblock ~9 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-9 ~0 ~0 ~-9 ~7 ~2 moss_block []
setblock ~-9 ~8 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 1 bone 14
replaceitem block ~6 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 14
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 glow_ink_sac 10
replaceitem block ~6 ~1 ~4 slot.container 9 iron_ingot 10
replaceitem block ~6 ~1 ~4 slot.container 10 gold_ingot 9
replaceitem block ~6 ~1 ~4 slot.container 11 diamond 6
replaceitem block ~6 ~1 ~4 slot.container 12 amethyst_shard 13
replaceitem block ~6 ~1 ~4 slot.container 13 golden_apple 8
replaceitem block ~6 ~1 ~4 slot.container 14 water_bucket 1
loot insert ~6 ~1 ~4 loot "rsf/lush_caves"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 rotten_flesh 10
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 9
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 glow_ink_sac 13
replaceitem block ~-6 ~1 ~5 slot.container 4 slime_ball 14
replaceitem block ~-6 ~1 ~5 slot.container 5 string 15
replaceitem block ~-6 ~1 ~5 slot.container 9 iron_ingot 8
replaceitem block ~-6 ~1 ~5 slot.container 10 gold_ingot 7
replaceitem block ~-6 ~1 ~5 slot.container 11 diamond 4
replaceitem block ~-6 ~1 ~5 slot.container 12 amethyst_shard 11
replaceitem block ~-6 ~1 ~5 slot.container 13 golden_apple 6
replaceitem block ~-6 ~1 ~5 slot.container 14 water_bucket 1
loot insert ~-6 ~1 ~5 loot "rsf/lush_caves"
loot insert ~-6 ~1 ~5 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~-3 ~0
