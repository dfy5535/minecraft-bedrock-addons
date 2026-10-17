# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3195/4224 | 主题内编号: b123/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·四角塔楼领主城堡复合体 (lush_caves_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tiles []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 lantern []
setblock ~5 ~-5 ~-4 lantern []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~5 ~-3 ~4 slot.container 1 gunpowder 11
replaceitem block ~5 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~5 ~-3 ~4 slot.container 3 glow_ink_sac 15
replaceitem block ~5 ~-3 ~4 slot.container 4 slime_ball 16
replaceitem block ~5 ~-3 ~4 slot.container 5 string 17
replaceitem block ~5 ~-3 ~4 slot.container 9 golden_apple 7
replaceitem block ~5 ~-3 ~4 slot.container 10 water_bucket 1
replaceitem block ~5 ~-3 ~4 slot.container 11 lantern 6
replaceitem block ~5 ~-3 ~4 slot.container 12 glow_berries 17
replaceitem block ~5 ~-3 ~4 slot.container 13 moss_block 18
replaceitem block ~5 ~-3 ~4 slot.container 14 clay_ball 19
loot insert ~5 ~-3 ~4 loot "rsf/lush_caves"
loot insert ~5 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 mossy_stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~10 ~-5 moss_block []
setblock ~-7 ~11 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~10 ~6 moss_block []
setblock ~-7 ~11 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~10 ~-5 moss_block []
setblock ~6 ~11 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~10 ~6 moss_block []
setblock ~6 ~11 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 moss_block []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~-2 ~-9 ~6 ~0 moss_block []
setblock ~-9 ~7 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~-5 ~1 ~5 anvil []
setblock ~5 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 1 bone 14
replaceitem block ~6 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 14
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 glow_ink_sac 10
replaceitem block ~6 ~1 ~4 slot.container 9 diamond 5
replaceitem block ~6 ~1 ~4 slot.container 10 amethyst_shard 12
replaceitem block ~6 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~6 ~1 ~4 slot.container 12 water_bucket 1
replaceitem block ~6 ~1 ~4 slot.container 13 lantern 6
replaceitem block ~6 ~1 ~4 slot.container 14 glow_berries 17
loot insert ~6 ~1 ~4 loot "rsf/lush_caves"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 rotten_flesh 10
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 9
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 glow_ink_sac 13
replaceitem block ~-6 ~1 ~5 slot.container 4 slime_ball 14
replaceitem block ~-6 ~1 ~5 slot.container 5 string 15
replaceitem block ~-6 ~1 ~5 slot.container 9 diamond 3
replaceitem block ~-6 ~1 ~5 slot.container 10 amethyst_shard 10
replaceitem block ~-6 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~-6 ~1 ~5 slot.container 12 water_bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 13 lantern 11
replaceitem block ~-6 ~1 ~5 slot.container 14 glow_berries 22
loot insert ~-6 ~1 ~5 loot "rsf/lush_caves"
loot insert ~-6 ~1 ~5 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
