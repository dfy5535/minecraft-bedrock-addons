# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3093/4224 | 主题内编号: b021/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·U型合院天井秘宝房 (lush_caves_chamber_courtyard_villa)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 moss_block [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 moss_block [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_tiles []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 gold_block []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 ender_pearl 6
replaceitem block ~4 ~-2 ~0 slot.container 1 glow_ink_sac 15
replaceitem block ~4 ~-2 ~0 slot.container 2 slime_ball 16
replaceitem block ~4 ~-2 ~0 slot.container 3 string 17
replaceitem block ~4 ~-2 ~0 slot.container 4 spider_eye 6
replaceitem block ~4 ~-2 ~0 slot.container 5 bone 11
replaceitem block ~4 ~-2 ~0 slot.container 9 iron_ingot 12
replaceitem block ~4 ~-2 ~0 slot.container 10 gold_ingot 11
replaceitem block ~4 ~-2 ~0 slot.container 11 diamond 8
replaceitem block ~4 ~-2 ~0 slot.container 12 amethyst_shard 8
replaceitem block ~4 ~-2 ~0 slot.container 13 golden_apple 3
replaceitem block ~4 ~-2 ~0 slot.container 14 water_bucket 1
loot insert ~4 ~-2 ~0 loot "rsf/lush_caves"
loot insert ~4 ~-2 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 moss_block []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 clay []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 deepslate_brick_slab []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 deepslate_bricks []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 deepslate_brick_slab []
setblock ~0 ~10 ~0 ochre_froglight []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 deepslate_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~0 moss_block []
setblock ~-8 ~5 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 14
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 glow_ink_sac 10
replaceitem block ~5 ~1 ~3 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 5 string 12
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 12
replaceitem block ~5 ~1 ~3 slot.container 10 glow_berries 16
replaceitem block ~5 ~1 ~3 slot.container 11 moss_block 17
replaceitem block ~5 ~1 ~3 slot.container 12 clay_ball 18
replaceitem block ~5 ~1 ~3 slot.container 13 iron_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 14 gold_ingot 10
loot insert ~5 ~1 ~3 loot "rsf/lush_caves"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 glow_ink_sac 13
replaceitem block ~-5 ~1 ~4 slot.container 2 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 3 string 15
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 10 glow_berries 21
replaceitem block ~-5 ~1 ~4 slot.container 11 moss_block 22
replaceitem block ~-5 ~1 ~4 slot.container 12 clay_ball 16
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 14 gold_ingot 8
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
