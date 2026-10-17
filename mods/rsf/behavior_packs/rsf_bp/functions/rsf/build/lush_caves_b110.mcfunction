# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3182/4224 | 主题内编号: b110/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双子附魔与酿造实验楼 (lush_caves_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 deepslate_bricks [] replace water
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 clay []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 mossy_stone_bricks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 string 17
replaceitem block ~5 ~-3 ~2 slot.container 1 spider_eye 6
replaceitem block ~5 ~-3 ~2 slot.container 2 bone 11
replaceitem block ~5 ~-3 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~-3 ~2 slot.container 4 gunpowder 11
replaceitem block ~5 ~-3 ~2 slot.container 5 ender_pearl 6
replaceitem block ~5 ~-3 ~2 slot.container 9 glow_berries 16
replaceitem block ~5 ~-3 ~2 slot.container 10 moss_block 17
replaceitem block ~5 ~-3 ~2 slot.container 11 clay_ball 18
replaceitem block ~5 ~-3 ~2 slot.container 12 iron_ingot 11
replaceitem block ~5 ~-3 ~2 slot.container 13 gold_ingot 10
replaceitem block ~5 ~-3 ~2 slot.container 14 diamond 7
loot insert ~5 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~5 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 deepslate_bricks []
fill ~2 ~1 ~-4 ~7 ~8 ~4 deepslate_bricks []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 moss_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~7 ~-5 ~8 ~7 ~5 deepslate_brick_slab []
fill ~-6 ~8 ~-3 ~6 ~9 ~3 mossy_stone_bricks []
fill ~-7 ~10 ~-4 ~7 ~10 ~4 stone_brick_slab []
setblock ~0 ~11 ~0 chiseled_deepslate []
setblock ~0 ~12 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_brick_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x5x2) ---
fill ~-9 ~0 ~0 ~-9 ~3 ~2 moss_block []
setblock ~-9 ~4 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 chiseled_deepslate []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gunpowder 14
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 2 glow_ink_sac 10
replaceitem block ~-6 ~1 ~2 slot.container 3 slime_ball 11
replaceitem block ~-6 ~1 ~2 slot.container 4 string 12
replaceitem block ~-6 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~2 slot.container 9 amethyst_shard 12
replaceitem block ~-6 ~1 ~2 slot.container 10 golden_apple 7
replaceitem block ~-6 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~-6 ~1 ~2 slot.container 12 lantern 6
replaceitem block ~-6 ~1 ~2 slot.container 13 glow_berries 17
replaceitem block ~-6 ~1 ~2 slot.container 14 moss_block 18
loot insert ~-6 ~1 ~2 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
