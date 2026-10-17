# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3187/4224 | 主题内编号: b115/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·阶梯立体生态种植台 (lush_caves_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
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

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 moss_block []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~-2 ~3 slot.container 1 gunpowder 11
replaceitem block ~-4 ~-2 ~3 slot.container 2 ender_pearl 6
replaceitem block ~-4 ~-2 ~3 slot.container 3 glow_ink_sac 15
replaceitem block ~-4 ~-2 ~3 slot.container 4 slime_ball 16
replaceitem block ~-4 ~-2 ~3 slot.container 5 string 17
replaceitem block ~-4 ~-2 ~3 slot.container 9 golden_apple 5
replaceitem block ~-4 ~-2 ~3 slot.container 10 water_bucket 1
replaceitem block ~-4 ~-2 ~3 slot.container 11 lantern 11
replaceitem block ~-4 ~-2 ~3 slot.container 12 glow_berries 22
replaceitem block ~-4 ~-2 ~3 slot.container 13 moss_block 16
replaceitem block ~-4 ~-2 ~3 slot.container 14 clay_ball 17
loot insert ~-4 ~-2 ~3 loot "rsf/lush_caves"
loot insert ~-4 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 mossy_stone_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 moss_block []
fill ~-4 ~5 ~-3 ~4 ~6 ~3 deepslate_tiles []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 oak_log []
setblock ~-6 ~9 ~-5 lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 oak_log []
setblock ~-6 ~9 ~5 lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 oak_log []
setblock ~6 ~9 ~-5 lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 oak_log []
setblock ~6 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 polished_deepslate []
setblock ~0 ~4 ~-8 ochre_froglight []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 polished_deepslate []
setblock ~0 ~4 ~8 ochre_froglight []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 polished_deepslate []
setblock ~-9 ~4 ~0 ochre_froglight []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 polished_deepslate []
setblock ~9 ~4 ~0 ochre_froglight []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~-3 ~-8 ~3 ~-1 moss_block []
setblock ~-8 ~4 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 bone 14
replaceitem block ~5 ~1 ~3 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 14
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 glow_ink_sac 10
replaceitem block ~5 ~1 ~3 slot.container 9 moss_block 18
replaceitem block ~5 ~1 ~3 slot.container 10 clay_ball 19
replaceitem block ~5 ~1 ~3 slot.container 11 iron_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 12 gold_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 13 diamond 8
replaceitem block ~5 ~1 ~3 slot.container 14 amethyst_shard 8
loot insert ~5 ~1 ~3 loot "rsf/lush_caves"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 glow_ink_sac 13
replaceitem block ~-5 ~1 ~4 slot.container 4 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 5 string 15
replaceitem block ~-5 ~1 ~4 slot.container 9 moss_block 16
replaceitem block ~-5 ~1 ~4 slot.container 10 clay_ball 17
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 12 gold_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 13 diamond 6
replaceitem block ~-5 ~1 ~4 slot.container 14 amethyst_shard 13
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
