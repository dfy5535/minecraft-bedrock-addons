# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3085/4224 | 主题内编号: b013/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·地底熔炉苦工地牢 (lush_caves_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 moss_block [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 moss_block [] replace water
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 moss_block []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 slime_ball 16
replaceitem block ~4 ~-3 ~4 slot.container 1 string 17
replaceitem block ~4 ~-3 ~4 slot.container 2 spider_eye 6
replaceitem block ~4 ~-3 ~4 slot.container 3 bone 11
replaceitem block ~4 ~-3 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~4 ~-3 ~4 slot.container 5 gunpowder 11
replaceitem block ~4 ~-3 ~4 slot.container 9 moss_block 20
replaceitem block ~4 ~-3 ~4 slot.container 10 clay_ball 21
replaceitem block ~4 ~-3 ~4 slot.container 11 iron_ingot 14
replaceitem block ~4 ~-3 ~4 slot.container 12 gold_ingot 6
replaceitem block ~4 ~-3 ~4 slot.container 13 diamond 3
replaceitem block ~4 ~-3 ~4 slot.container 14 amethyst_shard 10
loot insert ~4 ~-3 ~4 loot "rsf/lush_caves"
loot insert ~4 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~6 ~6 moss_block []
fill ~-5 ~1 ~-5 ~5 ~5 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~6 ~-6 oak_log []
fill ~-6 ~1 ~6 ~-6 ~6 ~6 oak_log []
fill ~6 ~1 ~-6 ~6 ~6 ~-6 oak_log []
fill ~6 ~1 ~6 ~6 ~6 ~6 oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 deepslate_brick_wall []
setblock ~6 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 deepslate_bricks []
fill ~-6 ~7 ~-6 ~6 ~7 ~6 deepslate_brick_wall []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 air []
setblock ~-6 ~7 ~-6 oak_log []
setblock ~-6 ~8 ~-6 lantern []
setblock ~-6 ~7 ~6 oak_log []
setblock ~-6 ~8 ~6 lantern []
setblock ~6 ~7 ~-6 oak_log []
setblock ~6 ~8 ~-6 lantern []
setblock ~6 ~7 ~6 oak_log []
setblock ~6 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 deepslate_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-8 ~0 ~-4 ~-8 ~6 ~-2 moss_block []
setblock ~-8 ~7 ~-3 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 1 gunpowder 14
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 3 glow_ink_sac 10
replaceitem block ~5 ~1 ~4 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~4 slot.container 5 string 12
replaceitem block ~5 ~1 ~4 slot.container 9 diamond 7
replaceitem block ~5 ~1 ~4 slot.container 10 amethyst_shard 14
replaceitem block ~5 ~1 ~4 slot.container 11 golden_apple 2
replaceitem block ~5 ~1 ~4 slot.container 12 water_bucket 1
replaceitem block ~5 ~1 ~4 slot.container 13 lantern 8
replaceitem block ~5 ~1 ~4 slot.container 14 glow_berries 19
loot insert ~5 ~1 ~4 loot "rsf/lush_caves"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 1 glow_ink_sac 13
replaceitem block ~-5 ~1 ~5 slot.container 2 slime_ball 14
replaceitem block ~-5 ~1 ~5 slot.container 3 string 15
replaceitem block ~-5 ~1 ~5 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~5 slot.container 9 diamond 5
replaceitem block ~-5 ~1 ~5 slot.container 10 amethyst_shard 12
replaceitem block ~-5 ~1 ~5 slot.container 11 golden_apple 7
replaceitem block ~-5 ~1 ~5 slot.container 12 water_bucket 1
replaceitem block ~-5 ~1 ~5 slot.container 13 lantern 6
replaceitem block ~-5 ~1 ~5 slot.container 14 glow_berries 17
loot insert ~-5 ~1 ~5 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~5 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
