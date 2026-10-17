# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3113/4224 | 主题内编号: b041/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·八角看台古罗马斗技场 (lush_caves_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 moss_block [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 moss_block [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 moss_block []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 ochre_froglight []
setblock ~-5 ~-4 ~-4 lantern []
setblock ~5 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 slime_ball 16
replaceitem block ~0 ~-2 ~4 slot.container 1 string 17
replaceitem block ~0 ~-2 ~4 slot.container 2 spider_eye 6
replaceitem block ~0 ~-2 ~4 slot.container 3 bone 11
replaceitem block ~0 ~-2 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~0 ~-2 ~4 slot.container 5 gunpowder 11
replaceitem block ~0 ~-2 ~4 slot.container 9 moss_block 18
replaceitem block ~0 ~-2 ~4 slot.container 10 clay_ball 19
replaceitem block ~0 ~-2 ~4 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-2 ~4 slot.container 12 gold_ingot 11
replaceitem block ~0 ~-2 ~4 slot.container 13 diamond 8
replaceitem block ~0 ~-2 ~4 slot.container 14 amethyst_shard 8
loot insert ~0 ~-2 ~4 loot "rsf/lush_caves"
loot insert ~0 ~-2 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 moss_block []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 air []
fill ~7 ~1 ~6 ~7 ~7 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 oak_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 oak_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 oak_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 oak_log []
setblock ~-7 ~9 ~-6 lantern []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 oak_log []
setblock ~-7 ~9 ~6 lantern []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 oak_log []
setblock ~7 ~9 ~-6 lantern []
fill ~7 ~6 ~6 ~7 ~8 ~6 oak_log []
setblock ~7 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 oak_log []
setblock ~-9 ~5 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 oak_log []
setblock ~-9 ~5 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 oak_log []
setblock ~9 ~5 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 oak_log []
setblock ~9 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~0 ~-9 ~4 ~2 moss_block []
setblock ~-9 ~5 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 1 string 12
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 3 bone 14
replaceitem block ~6 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~6 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~6 ~1 ~4 slot.container 9 lantern 11
replaceitem block ~6 ~1 ~4 slot.container 10 glow_berries 22
replaceitem block ~6 ~1 ~4 slot.container 11 moss_block 16
replaceitem block ~6 ~1 ~4 slot.container 12 clay_ball 17
replaceitem block ~6 ~1 ~4 slot.container 13 iron_ingot 10
replaceitem block ~6 ~1 ~4 slot.container 14 gold_ingot 9
loot insert ~6 ~1 ~4 loot "rsf/lush_caves"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-6 ~1 ~5 slot.container 1 bone 17
replaceitem block ~-6 ~1 ~5 slot.container 2 rotten_flesh 10
replaceitem block ~-6 ~1 ~5 slot.container 3 gunpowder 9
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 5 glow_ink_sac 13
replaceitem block ~-6 ~1 ~5 slot.container 9 lantern 9
replaceitem block ~-6 ~1 ~5 slot.container 10 glow_berries 20
replaceitem block ~-6 ~1 ~5 slot.container 11 moss_block 21
replaceitem block ~-6 ~1 ~5 slot.container 12 clay_ball 22
replaceitem block ~-6 ~1 ~5 slot.container 13 iron_ingot 8
replaceitem block ~-6 ~1 ~5 slot.container 14 gold_ingot 7
loot insert ~-6 ~1 ~5 loot "rsf/lush_caves"
loot insert ~-6 ~1 ~5 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~-2 ~0
