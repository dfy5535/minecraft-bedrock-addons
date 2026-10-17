# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3081/4224 | 主题内编号: b009/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·铁栏双室地下死牢 (lush_caves_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 moss_block [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 moss_block [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 moss_block []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 lantern []
setblock ~4 ~-5 ~-3 lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 1 bone 11
replaceitem block ~4 ~-3 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~4 ~-3 ~3 slot.container 3 gunpowder 11
replaceitem block ~4 ~-3 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 5 glow_ink_sac 15
replaceitem block ~4 ~-3 ~3 slot.container 9 diamond 5
replaceitem block ~4 ~-3 ~3 slot.container 10 amethyst_shard 12
replaceitem block ~4 ~-3 ~3 slot.container 11 golden_apple 7
replaceitem block ~4 ~-3 ~3 slot.container 12 water_bucket 1
replaceitem block ~4 ~-3 ~3 slot.container 13 lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 14 glow_berries 17
loot insert ~4 ~-3 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 moss_block []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 deepslate_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 deepslate_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 deepslate_bricks []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 deepslate_brick_wall []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 air []
setblock ~-6 ~6 ~-5 oak_log []
setblock ~-6 ~7 ~-5 lantern []
setblock ~-6 ~6 ~5 oak_log []
setblock ~-6 ~7 ~5 lantern []
setblock ~6 ~6 ~-5 oak_log []
setblock ~6 ~7 ~-5 lantern []
setblock ~6 ~6 ~5 oak_log []
setblock ~6 ~7 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 deepslate_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~1 ~-8 ~7 ~3 moss_block []
setblock ~-8 ~8 ~2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 1 string 12
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 3 bone 14
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 14
replaceitem block ~5 ~1 ~3 slot.container 9 iron_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 10 gold_ingot 8
replaceitem block ~5 ~1 ~3 slot.container 11 diamond 5
replaceitem block ~5 ~1 ~3 slot.container 12 amethyst_shard 12
replaceitem block ~5 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~5 ~1 ~3 slot.container 14 water_bucket 1
loot insert ~5 ~1 ~3 loot "rsf/lush_caves"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 10
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 9
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 5 glow_ink_sac 13
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 10 gold_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 3
replaceitem block ~-5 ~1 ~4 slot.container 12 amethyst_shard 10
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 14 water_bucket 1
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
