# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3129/4224 | 主题内编号: b057/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·中央石棺帝王地下陵寝 (lush_caves_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 moss_block [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 moss_block [] replace water
fill ~-7 ~1 ~-7 ~7 ~7 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_bricks []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 deepslate_bricks []
setblock ~0 ~-6 ~0 chiseled_deepslate []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 spider_eye 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 11
replaceitem block ~0 ~-3 ~-4 slot.container 2 rotten_flesh 12
replaceitem block ~0 ~-3 ~-4 slot.container 3 gunpowder 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 5 glow_ink_sac 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 diamond 7
replaceitem block ~0 ~-3 ~-4 slot.container 12 amethyst_shard 14
replaceitem block ~0 ~-3 ~-4 slot.container 13 golden_apple 2
replaceitem block ~0 ~-3 ~-4 slot.container 14 water_bucket 1
loot insert ~0 ~-3 ~-4 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 moss_block []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 deepslate_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 deepslate_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 deepslate_bricks []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 deepslate_bricks []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 ochre_froglight []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 deepslate_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~0 moss_block []
setblock ~-8 ~6 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 ochre_froglight []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~4 slot.container 1 string 12
replaceitem block ~5 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~4 slot.container 3 bone 14
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~5 ~1 ~4 slot.container 9 golden_apple 2
replaceitem block ~5 ~1 ~4 slot.container 10 water_bucket 1
replaceitem block ~5 ~1 ~4 slot.container 11 lantern 8
replaceitem block ~5 ~1 ~4 slot.container 12 glow_berries 19
replaceitem block ~5 ~1 ~4 slot.container 13 moss_block 20
replaceitem block ~5 ~1 ~4 slot.container 14 clay_ball 21
loot insert ~5 ~1 ~4 loot "rsf/lush_caves"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~5 slot.container 1 bone 17
replaceitem block ~-5 ~1 ~5 slot.container 2 rotten_flesh 10
replaceitem block ~-5 ~1 ~5 slot.container 3 gunpowder 9
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 5 glow_ink_sac 13
replaceitem block ~-5 ~1 ~5 slot.container 9 golden_apple 7
replaceitem block ~-5 ~1 ~5 slot.container 10 water_bucket 1
replaceitem block ~-5 ~1 ~5 slot.container 11 lantern 6
replaceitem block ~-5 ~1 ~5 slot.container 12 glow_berries 17
replaceitem block ~-5 ~1 ~5 slot.container 13 moss_block 18
replaceitem block ~-5 ~1 ~5 slot.container 14 clay_ball 19
loot insert ~-5 ~1 ~5 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~5 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
