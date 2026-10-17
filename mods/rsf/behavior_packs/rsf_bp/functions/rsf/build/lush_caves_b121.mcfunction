# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3193/4224 | 主题内编号: b121/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·卫城廊柱王座大殿与地宫 (lush_caves_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 moss_block [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 moss_block [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 moss_block []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 lantern []
setblock ~5 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 1 glow_ink_sac 15
replaceitem block ~0 ~-3 ~4 slot.container 2 slime_ball 16
replaceitem block ~0 ~-3 ~4 slot.container 3 string 17
replaceitem block ~0 ~-3 ~4 slot.container 4 spider_eye 6
replaceitem block ~0 ~-3 ~4 slot.container 5 bone 11
replaceitem block ~0 ~-3 ~4 slot.container 9 moss_block 16
replaceitem block ~0 ~-3 ~4 slot.container 10 clay_ball 17
replaceitem block ~0 ~-3 ~4 slot.container 11 iron_ingot 10
replaceitem block ~0 ~-3 ~4 slot.container 12 gold_ingot 9
replaceitem block ~0 ~-3 ~4 slot.container 13 diamond 6
replaceitem block ~0 ~-3 ~4 slot.container 14 amethyst_shard 13
loot insert ~0 ~-3 ~4 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~4 loot "chests/abandoned_mineshaft"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 1 glow_ink_sac 13
replaceitem block ~0 ~-3 ~-4 slot.container 2 slime_ball 14
replaceitem block ~0 ~-3 ~-4 slot.container 3 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 spider_eye 12
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 moss_block 22
replaceitem block ~0 ~-3 ~-4 slot.container 10 clay_ball 16
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 9
replaceitem block ~0 ~-3 ~-4 slot.container 12 gold_ingot 8
replaceitem block ~0 ~-3 ~-4 slot.container 13 diamond 5
replaceitem block ~0 ~-3 ~-4 slot.container 14 amethyst_shard 12
loot insert ~0 ~-3 ~-4 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~8 ~6 moss_block []
fill ~-6 ~1 ~0 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 oak_log []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 oak_log []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 oak_log []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 oak_log []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 oak_log []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 oak_log []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 oak_log []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 oak_log []
fill ~-7 ~8 ~-6 ~7 ~8 ~-1 deepslate_bricks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~9 ~-7 ~-8 ~9 ~7 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~8 ~9 ~-7 ~8 ~9 ~7 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~10 ~-6 ~-7 ~10 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~7 ~10 ~-6 ~7 ~10 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~10 ~-6 ~6 ~10 ~6 deepslate_brick_slab []
fill ~0 ~11 ~-7 ~0 ~11 ~7 deepslate_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 deepslate_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~-9 ~0 ~-4 ~-9 ~4 ~-2 moss_block []
setblock ~-9 ~5 ~-3 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 ochre_froglight []
setblock ~0 ~1 ~0 chiseled_deepslate []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 1 string 12
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 3 bone 14
replaceitem block ~6 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~6 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~6 ~1 ~4 slot.container 9 lantern 7
replaceitem block ~6 ~1 ~4 slot.container 10 glow_berries 18
replaceitem block ~6 ~1 ~4 slot.container 11 moss_block 19
replaceitem block ~6 ~1 ~4 slot.container 12 clay_ball 20
replaceitem block ~6 ~1 ~4 slot.container 13 iron_ingot 13
replaceitem block ~6 ~1 ~4 slot.container 14 gold_ingot 12
loot insert ~6 ~1 ~4 loot "rsf/lush_caves"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-6 ~1 ~5 slot.container 1 bone 17
replaceitem block ~-6 ~1 ~5 slot.container 2 rotten_flesh 10
replaceitem block ~-6 ~1 ~5 slot.container 3 gunpowder 9
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 5 glow_ink_sac 13
replaceitem block ~-6 ~1 ~5 slot.container 9 lantern 12
replaceitem block ~-6 ~1 ~5 slot.container 10 glow_berries 16
replaceitem block ~-6 ~1 ~5 slot.container 11 moss_block 17
replaceitem block ~-6 ~1 ~5 slot.container 12 clay_ball 18
replaceitem block ~-6 ~1 ~5 slot.container 13 iron_ingot 11
replaceitem block ~-6 ~1 ~5 slot.container 14 gold_ingot 10
loot insert ~-6 ~1 ~5 loot "rsf/lush_caves"
loot insert ~-6 ~1 ~5 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
