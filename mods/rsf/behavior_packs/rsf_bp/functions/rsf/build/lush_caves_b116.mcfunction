# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3188/4224 | 主题内编号: b116/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·U型围合秘密花园驿站 (lush_caves_conservatory_u_garden)
# 建筑构造: 主体[u_courtyard] + 屋顶[dome_glass] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 moss_block []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 deepslate_tiles []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 mossy_stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 moss_block []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 glass []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 moss_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~0 moss_block []
setblock ~-8 ~5 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 4 glow_ink_sac 10
replaceitem block ~-5 ~1 ~3 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 9 gold_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 6
replaceitem block ~-5 ~1 ~3 slot.container 11 amethyst_shard 13
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 13 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 7
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
