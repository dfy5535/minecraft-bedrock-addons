# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3153/4224 | 主题内编号: b081/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双高炉重工冶炼密室 (lush_caves_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 moss_block [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 moss_block [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 moss_block []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~3 ~-3 ~3 slot.container 1 gunpowder 11
replaceitem block ~3 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~3 slot.container 3 glow_ink_sac 15
replaceitem block ~3 ~-3 ~3 slot.container 4 slime_ball 16
replaceitem block ~3 ~-3 ~3 slot.container 5 string 17
replaceitem block ~3 ~-3 ~3 slot.container 9 diamond 4
replaceitem block ~3 ~-3 ~3 slot.container 10 amethyst_shard 11
replaceitem block ~3 ~-3 ~3 slot.container 11 golden_apple 6
replaceitem block ~3 ~-3 ~3 slot.container 12 water_bucket 1
replaceitem block ~3 ~-3 ~3 slot.container 13 lantern 12
replaceitem block ~3 ~-3 ~3 slot.container 14 glow_berries 16
loot insert ~3 ~-3 ~3 loot "rsf/lush_caves"
loot insert ~3 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 moss_block []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-5 ~1 ~5 ~-6 ~9 ~5 deepslate_bricks []
setblock ~-5 ~10 ~5 lantern []
fill ~-1 ~1 ~-5 ~1 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 deepslate_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 deepslate_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 deepslate_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~0 moss_block []
setblock ~-7 ~5 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 slime_ball 11
replaceitem block ~4 ~1 ~3 slot.container 1 string 12
replaceitem block ~4 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 3 bone 14
replaceitem block ~4 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 14
replaceitem block ~4 ~1 ~3 slot.container 9 lantern 9
replaceitem block ~4 ~1 ~3 slot.container 10 glow_berries 20
replaceitem block ~4 ~1 ~3 slot.container 11 moss_block 21
replaceitem block ~4 ~1 ~3 slot.container 12 clay_ball 22
replaceitem block ~4 ~1 ~3 slot.container 13 iron_ingot 8
replaceitem block ~4 ~1 ~3 slot.container 14 gold_ingot 7
loot insert ~4 ~1 ~3 loot "rsf/lush_caves"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 17
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 10
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 9
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~4 slot.container 5 glow_ink_sac 13
replaceitem block ~-4 ~1 ~4 slot.container 9 lantern 7
replaceitem block ~-4 ~1 ~4 slot.container 10 glow_berries 18
replaceitem block ~-4 ~1 ~4 slot.container 11 moss_block 19
replaceitem block ~-4 ~1 ~4 slot.container 12 clay_ball 20
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_ingot 13
replaceitem block ~-4 ~1 ~4 slot.container 14 gold_ingot 12
loot insert ~-4 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-4 ~1 ~4 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
