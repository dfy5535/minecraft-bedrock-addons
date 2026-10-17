# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3135/4224 | 主题内编号: b063/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·方尖碑镇压古墓穴 (lush_caves_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_tiles []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~0 ~-3 ~2 slot.container 1 gunpowder 11
replaceitem block ~0 ~-3 ~2 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~2 slot.container 3 glow_ink_sac 15
replaceitem block ~0 ~-3 ~2 slot.container 4 slime_ball 16
replaceitem block ~0 ~-3 ~2 slot.container 5 string 17
replaceitem block ~0 ~-3 ~2 slot.container 9 golden_apple 7
replaceitem block ~0 ~-3 ~2 slot.container 10 water_bucket 1
replaceitem block ~0 ~-3 ~2 slot.container 11 lantern 6
replaceitem block ~0 ~-3 ~2 slot.container 12 glow_berries 17
replaceitem block ~0 ~-3 ~2 slot.container 13 moss_block 18
replaceitem block ~0 ~-3 ~2 slot.container 14 clay_ball 19
loot insert ~0 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~2 loot "chests/abandoned_mineshaft"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 10
replaceitem block ~0 ~-3 ~-2 slot.container 1 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-3 ~-2 slot.container 3 glow_ink_sac 13
replaceitem block ~0 ~-3 ~-2 slot.container 4 slime_ball 14
replaceitem block ~0 ~-3 ~-2 slot.container 5 string 15
replaceitem block ~0 ~-3 ~-2 slot.container 9 golden_apple 6
replaceitem block ~0 ~-3 ~-2 slot.container 10 water_bucket 1
replaceitem block ~0 ~-3 ~-2 slot.container 11 lantern 12
replaceitem block ~0 ~-3 ~-2 slot.container 12 glow_berries 16
replaceitem block ~0 ~-3 ~-2 slot.container 13 moss_block 17
replaceitem block ~0 ~-3 ~-2 slot.container 14 clay_ball 18
loot insert ~0 ~-3 ~-2 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~-2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~10 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~10 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~10 ~4 air []
fill ~5 ~1 ~4 ~5 ~10 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 oak_log []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 oak_log []
fill ~4 ~1 ~3 ~4 ~9 ~3 oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 moss_block []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 mossy_stone_bricks []
fill ~0 ~15 ~0 ~0 ~16 ~0 gold_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 oak_log []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 oak_log []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 oak_log []
fill ~6 ~0 ~2 ~6 ~8 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-7 ~0 ~-3 ~-7 ~6 ~-1 moss_block []
setblock ~-7 ~7 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 1 glow_ink_sac 10
replaceitem block ~4 ~1 ~2 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 3 string 12
replaceitem block ~4 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 5 bone 14
replaceitem block ~4 ~1 ~2 slot.container 9 diamond 8
replaceitem block ~4 ~1 ~2 slot.container 10 amethyst_shard 8
replaceitem block ~4 ~1 ~2 slot.container 11 golden_apple 3
replaceitem block ~4 ~1 ~2 slot.container 12 water_bucket 1
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 9
replaceitem block ~4 ~1 ~2 slot.container 14 glow_berries 20
loot insert ~4 ~1 ~2 loot "rsf/lush_caves"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 slime_ball 14
replaceitem block ~-4 ~1 ~3 slot.container 1 string 15
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 17
replaceitem block ~-4 ~1 ~3 slot.container 4 rotten_flesh 10
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 9
replaceitem block ~-4 ~1 ~3 slot.container 9 diamond 6
replaceitem block ~-4 ~1 ~3 slot.container 10 amethyst_shard 13
replaceitem block ~-4 ~1 ~3 slot.container 11 golden_apple 8
replaceitem block ~-4 ~1 ~3 slot.container 12 water_bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 7
replaceitem block ~-4 ~1 ~3 slot.container 14 glow_berries 18
loot insert ~-4 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-4 ~1 ~3 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
