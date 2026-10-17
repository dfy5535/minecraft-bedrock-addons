# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3139/4224 | 主题内编号: b067/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·半掩埋下沉庭院遗迹 (lush_caves_ruin_sunken_courtyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tiles []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 moss_block []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~-3 ~3 slot.container 1 gunpowder 11
replaceitem block ~-4 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~-4 ~-3 ~3 slot.container 3 glow_ink_sac 15
replaceitem block ~-4 ~-3 ~3 slot.container 4 slime_ball 16
replaceitem block ~-4 ~-3 ~3 slot.container 5 string 17
replaceitem block ~-4 ~-3 ~3 slot.container 9 iron_ingot 12
replaceitem block ~-4 ~-3 ~3 slot.container 10 gold_ingot 11
replaceitem block ~-4 ~-3 ~3 slot.container 11 diamond 8
replaceitem block ~-4 ~-3 ~3 slot.container 12 amethyst_shard 8
replaceitem block ~-4 ~-3 ~3 slot.container 13 golden_apple 3
replaceitem block ~-4 ~-3 ~3 slot.container 14 water_bucket 1
loot insert ~-4 ~-3 ~3 loot "rsf/lush_caves"
loot insert ~-4 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 deepslate_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 stone_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 deepslate_tiles []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~-1 ~-8 ~5 ~1 moss_block []
setblock ~-8 ~6 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 bone 14
replaceitem block ~5 ~1 ~3 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 14
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 glow_ink_sac 10
replaceitem block ~5 ~1 ~3 slot.container 9 golden_apple 5
replaceitem block ~5 ~1 ~3 slot.container 10 water_bucket 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 11
replaceitem block ~5 ~1 ~3 slot.container 12 glow_berries 22
replaceitem block ~5 ~1 ~3 slot.container 13 moss_block 16
replaceitem block ~5 ~1 ~3 slot.container 14 clay_ball 17
loot insert ~5 ~1 ~3 loot "rsf/lush_caves"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 glow_ink_sac 13
replaceitem block ~-5 ~1 ~4 slot.container 4 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 5 string 15
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 3
replaceitem block ~-5 ~1 ~4 slot.container 10 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 9
replaceitem block ~-5 ~1 ~4 slot.container 12 glow_berries 20
replaceitem block ~-5 ~1 ~4 slot.container 13 moss_block 21
replaceitem block ~-5 ~1 ~4 slot.container 14 clay_ball 22
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
