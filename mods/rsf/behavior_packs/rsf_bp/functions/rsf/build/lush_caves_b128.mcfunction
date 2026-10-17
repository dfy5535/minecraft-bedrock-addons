# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3200/4224 | 主题内编号: b128/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·U型紫禁朝堂大殿与地底金库 (lush_caves_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 deepslate_tiles [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 deepslate_tiles [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 bone 11
replaceitem block ~5 ~-4 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~-4 ~4 slot.container 2 gunpowder 11
replaceitem block ~5 ~-4 ~4 slot.container 3 ender_pearl 6
replaceitem block ~5 ~-4 ~4 slot.container 4 glow_ink_sac 15
replaceitem block ~5 ~-4 ~4 slot.container 5 slime_ball 16
replaceitem block ~5 ~-4 ~4 slot.container 9 amethyst_shard 8
replaceitem block ~5 ~-4 ~4 slot.container 10 golden_apple 3
replaceitem block ~5 ~-4 ~4 slot.container 11 water_bucket 1
replaceitem block ~5 ~-4 ~4 slot.container 12 lantern 9
replaceitem block ~5 ~-4 ~4 slot.container 13 glow_berries 20
replaceitem block ~5 ~-4 ~4 slot.container 14 moss_block 21
loot insert ~5 ~-4 ~4 loot "rsf/lush_caves"
loot insert ~5 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 deepslate_tiles []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mossy_stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~8 ~-7 ~8 ~8 ~7 deepslate_tile_slab []
fill ~-6 ~9 ~-5 ~6 ~10 ~5 moss_block []
fill ~-7 ~11 ~-6 ~7 ~11 ~6 deepslate_brick_slab []
setblock ~0 ~12 ~0 emerald_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 deepslate_tile_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~-9 ~0 ~-3 ~-9 ~6 ~-1 moss_block []
setblock ~-9 ~7 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 glow_ink_sac 10
replaceitem block ~-6 ~1 ~4 slot.container 1 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 2 string 12
replaceitem block ~-6 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 4 bone 14
replaceitem block ~-6 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~4 slot.container 9 glow_berries 17
replaceitem block ~-6 ~1 ~4 slot.container 10 moss_block 18
replaceitem block ~-6 ~1 ~4 slot.container 11 clay_ball 19
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 13 gold_ingot 11
replaceitem block ~-6 ~1 ~4 slot.container 14 diamond 8
loot insert ~-6 ~1 ~4 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
