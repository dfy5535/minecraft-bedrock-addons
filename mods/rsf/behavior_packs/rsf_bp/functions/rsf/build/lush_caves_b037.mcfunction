# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3109/4224 | 主题内编号: b037/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·环廊聖柱纪念碑 (lush_caves_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 moss_block [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 moss_block [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
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

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 deepslate_bricks []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 oak_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 oak_log []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 oak_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 oak_log []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 oak_log []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 oak_log []
fill ~0 ~1 ~5 ~0 ~7 ~5 oak_log []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 oak_log []
fill ~2 ~1 ~5 ~2 ~7 ~5 oak_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 oak_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 oak_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 oak_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 oak_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 oak_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 oak_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 oak_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 oak_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 oak_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 oak_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 oak_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-5 ~-6 ~10 ~-5 oak_log []
setblock ~-6 ~11 ~-5 lantern []
fill ~-6 ~8 ~5 ~-6 ~10 ~5 oak_log []
setblock ~-6 ~11 ~5 lantern []
fill ~6 ~8 ~-5 ~6 ~10 ~-5 oak_log []
setblock ~6 ~11 ~-5 lantern []
fill ~6 ~8 ~5 ~6 ~10 ~5 oak_log []
setblock ~6 ~11 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 oak_log []
setblock ~-8 ~5 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 oak_log []
setblock ~-8 ~5 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 oak_log []
setblock ~8 ~5 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~4 ~7 oak_log []
setblock ~8 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~-1 ~-8 ~5 ~1 moss_block []
setblock ~-8 ~6 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 ochre_froglight []
setblock ~0 ~1 ~0 chiseled_deepslate []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 14
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 glow_ink_sac 10
replaceitem block ~5 ~1 ~3 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 5 string 12
replaceitem block ~5 ~1 ~3 slot.container 9 golden_apple 3
replaceitem block ~5 ~1 ~3 slot.container 10 water_bucket 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 9
replaceitem block ~5 ~1 ~3 slot.container 12 glow_berries 20
replaceitem block ~5 ~1 ~3 slot.container 13 moss_block 21
replaceitem block ~5 ~1 ~3 slot.container 14 clay_ball 22
loot insert ~5 ~1 ~3 loot "rsf/lush_caves"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 glow_ink_sac 13
replaceitem block ~-5 ~1 ~4 slot.container 2 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 3 string 15
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 8
replaceitem block ~-5 ~1 ~4 slot.container 10 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 7
replaceitem block ~-5 ~1 ~4 slot.container 12 glow_berries 18
replaceitem block ~-5 ~1 ~4 slot.container 13 moss_block 19
replaceitem block ~-5 ~1 ~4 slot.container 14 clay_ball 20
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
