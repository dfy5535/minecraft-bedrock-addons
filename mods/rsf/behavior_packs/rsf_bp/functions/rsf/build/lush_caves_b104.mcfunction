# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3176/4224 | 主题内编号: b104/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双层指挥台卫戍堡 (lush_caves_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 moss_block []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 bone 11
replaceitem block ~4 ~-3 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~-3 ~3 slot.container 2 gunpowder 11
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 4 glow_ink_sac 15
replaceitem block ~4 ~-3 ~3 slot.container 5 slime_ball 16
replaceitem block ~4 ~-3 ~3 slot.container 9 clay_ball 17
replaceitem block ~4 ~-3 ~3 slot.container 10 iron_ingot 10
replaceitem block ~4 ~-3 ~3 slot.container 11 gold_ingot 9
replaceitem block ~4 ~-3 ~3 slot.container 12 diamond 6
replaceitem block ~4 ~-3 ~3 slot.container 13 amethyst_shard 13
replaceitem block ~4 ~-3 ~3 slot.container 14 golden_apple 8
loot insert ~4 ~-3 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-5 ~6 ~4 ~5 deepslate_tiles []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-7 ~4 ~-6 ~7 ~4 ~6 deepslate_tile_slab []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 moss_block []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-6 ~6 ~8 ~6 stone_brick_slab []
fill ~-4 ~9 ~-4 ~4 ~10 ~4 deepslate_tiles []
fill ~-5 ~11 ~-5 ~5 ~11 ~5 deepslate_tile_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 deepslate_tile_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-8 ~0 ~1 ~-8 ~7 ~3 moss_block []
setblock ~-8 ~8 ~2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 glow_ink_sac 10
replaceitem block ~-5 ~1 ~3 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 2 string 12
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 9 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 12
replaceitem block ~-5 ~1 ~3 slot.container 11 glow_berries 16
replaceitem block ~-5 ~1 ~3 slot.container 12 moss_block 17
replaceitem block ~-5 ~1 ~3 slot.container 13 clay_ball 18
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 11
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
