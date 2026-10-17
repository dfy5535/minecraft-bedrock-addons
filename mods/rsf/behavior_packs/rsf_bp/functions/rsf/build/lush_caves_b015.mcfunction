# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3087/4224 | 主题内编号: b015/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·竖井阶梯深渊地牢 (lush_caves_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_tiles []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 lantern []
setblock ~3 ~-6 ~-2 lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 slime_ball 16
replaceitem block ~3 ~-4 ~2 slot.container 1 string 17
replaceitem block ~3 ~-4 ~2 slot.container 2 spider_eye 6
replaceitem block ~3 ~-4 ~2 slot.container 3 bone 11
replaceitem block ~3 ~-4 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~3 ~-4 ~2 slot.container 5 gunpowder 11
replaceitem block ~3 ~-4 ~2 slot.container 9 iron_ingot 10
replaceitem block ~3 ~-4 ~2 slot.container 10 gold_ingot 9
replaceitem block ~3 ~-4 ~2 slot.container 11 diamond 6
replaceitem block ~3 ~-4 ~2 slot.container 12 amethyst_shard 13
replaceitem block ~3 ~-4 ~2 slot.container 13 golden_apple 8
replaceitem block ~3 ~-4 ~2 slot.container 14 water_bucket 1
loot insert ~3 ~-4 ~2 loot "rsf/lush_caves"
loot insert ~3 ~-4 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 mossy_stone_bricks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 moss_block []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 deepslate_tiles []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 moss_block []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 mossy_stone_bricks []
fill ~0 ~13 ~0 ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 oak_log []
setblock ~-7 ~5 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 oak_log []
setblock ~-7 ~5 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 oak_log []
setblock ~7 ~5 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~4 ~6 oak_log []
setblock ~7 ~5 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~-3 ~-7 ~3 ~-1 moss_block []
setblock ~-7 ~4 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 1 glow_ink_sac 10
replaceitem block ~4 ~1 ~2 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 3 string 12
replaceitem block ~4 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 5 bone 14
replaceitem block ~4 ~1 ~2 slot.container 9 moss_block 16
replaceitem block ~4 ~1 ~2 slot.container 10 clay_ball 17
replaceitem block ~4 ~1 ~2 slot.container 11 iron_ingot 10
replaceitem block ~4 ~1 ~2 slot.container 12 gold_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 13 diamond 6
replaceitem block ~4 ~1 ~2 slot.container 14 amethyst_shard 13
loot insert ~4 ~1 ~2 loot "rsf/lush_caves"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 slime_ball 14
replaceitem block ~-4 ~1 ~3 slot.container 1 string 15
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 17
replaceitem block ~-4 ~1 ~3 slot.container 4 rotten_flesh 10
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 9
replaceitem block ~-4 ~1 ~3 slot.container 9 moss_block 21
replaceitem block ~-4 ~1 ~3 slot.container 10 clay_ball 22
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_ingot 8
replaceitem block ~-4 ~1 ~3 slot.container 12 gold_ingot 7
replaceitem block ~-4 ~1 ~3 slot.container 13 diamond 4
replaceitem block ~-4 ~1 ~3 slot.container 14 amethyst_shard 11
loot insert ~-4 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-4 ~1 ~3 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
