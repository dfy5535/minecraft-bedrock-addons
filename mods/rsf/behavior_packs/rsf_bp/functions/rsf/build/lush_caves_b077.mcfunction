# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3149/4224 | 主题内编号: b077/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双子鸟居图腾神道 (lush_caves_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 moss_block [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 moss_block [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 gold_block []
setblock ~-4 ~-5 ~-3 lantern []
setblock ~4 ~-5 ~3 lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 spider_eye 6
replaceitem block ~0 ~-3 ~3 slot.container 1 bone 11
replaceitem block ~0 ~-3 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~0 ~-3 ~3 slot.container 3 gunpowder 11
replaceitem block ~0 ~-3 ~3 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~3 slot.container 5 glow_ink_sac 15
replaceitem block ~0 ~-3 ~3 slot.container 9 moss_block 16
replaceitem block ~0 ~-3 ~3 slot.container 10 clay_ball 17
replaceitem block ~0 ~-3 ~3 slot.container 11 iron_ingot 10
replaceitem block ~0 ~-3 ~3 slot.container 12 gold_ingot 9
replaceitem block ~0 ~-3 ~3 slot.container 13 diamond 6
replaceitem block ~0 ~-3 ~3 slot.container 14 amethyst_shard 13
loot insert ~0 ~-3 ~3 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 moss_block []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-5 ~7 ~7 ~5 deepslate_brick_slab []
fill ~-5 ~8 ~-3 ~5 ~9 ~3 deepslate_bricks []
fill ~-6 ~10 ~-4 ~6 ~10 ~4 deepslate_brick_slab []
setblock ~0 ~11 ~0 ochre_froglight []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 deepslate_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~-8 ~0 ~-1 ~-8 ~5 ~1 moss_block []
setblock ~-8 ~6 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-5 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~2 slot.container 1 gunpowder 14
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 3 glow_ink_sac 10
replaceitem block ~5 ~1 ~2 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~2 slot.container 5 string 12
replaceitem block ~5 ~1 ~2 slot.container 9 golden_apple 8
replaceitem block ~5 ~1 ~2 slot.container 10 water_bucket 1
replaceitem block ~5 ~1 ~2 slot.container 11 lantern 7
replaceitem block ~5 ~1 ~2 slot.container 12 glow_berries 18
replaceitem block ~5 ~1 ~2 slot.container 13 moss_block 19
replaceitem block ~5 ~1 ~2 slot.container 14 clay_ball 20
loot insert ~5 ~1 ~2 loot "rsf/lush_caves"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~3 slot.container 1 glow_ink_sac 13
replaceitem block ~-5 ~1 ~3 slot.container 2 slime_ball 14
replaceitem block ~-5 ~1 ~3 slot.container 3 string 15
replaceitem block ~-5 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 10 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 11 lantern 12
replaceitem block ~-5 ~1 ~3 slot.container 12 glow_berries 16
replaceitem block ~-5 ~1 ~3 slot.container 13 moss_block 17
replaceitem block ~-5 ~1 ~3 slot.container 14 clay_ball 18
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~3 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~2 ~0
