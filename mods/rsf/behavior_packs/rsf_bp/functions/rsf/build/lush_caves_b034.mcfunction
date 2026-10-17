# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3106/4224 | 主题内编号: b034/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双子对称铭文方尖碑 (lush_caves_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x9 | 地上高度 10格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~12 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 clay []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-2 ~5 ~-1 ~2 mossy_stone_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~1 slot.container 0 gunpowder 11
replaceitem block ~4 ~-3 ~1 slot.container 1 ender_pearl 6
replaceitem block ~4 ~-3 ~1 slot.container 2 glow_ink_sac 15
replaceitem block ~4 ~-3 ~1 slot.container 3 slime_ball 16
replaceitem block ~4 ~-3 ~1 slot.container 4 string 17
replaceitem block ~4 ~-3 ~1 slot.container 5 spider_eye 6
replaceitem block ~4 ~-3 ~1 slot.container 9 clay_ball 17
replaceitem block ~4 ~-3 ~1 slot.container 10 iron_ingot 10
replaceitem block ~4 ~-3 ~1 slot.container 11 gold_ingot 9
replaceitem block ~4 ~-3 ~1 slot.container 12 diamond 6
replaceitem block ~4 ~-3 ~1 slot.container 13 amethyst_shard 13
replaceitem block ~4 ~-3 ~1 slot.container 14 golden_apple 8
loot insert ~4 ~-3 ~1 loot "rsf/lush_caves"
loot insert ~4 ~-3 ~1 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~11 ~3 deepslate_bricks []
fill ~2 ~1 ~-3 ~6 ~11 ~3 deepslate_bricks []
fill ~-5 ~1 ~-2 ~-3 ~10 ~2 air []
fill ~3 ~1 ~-2 ~5 ~10 ~2 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 moss_block []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 moss_block []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 deepslate_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 chiseled_deepslate []
setblock ~0 ~18 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 moss_block []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 shroomlight []
setblock ~2 ~4 ~-6 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~0 moss_block []
setblock ~-8 ~8 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 smoker []
setblock ~-5 ~1 ~3 furnace []
setblock ~0 ~1 ~3 crafting_table []
setblock ~6 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 string 12
replaceitem block ~-5 ~1 ~1 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~1 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~1 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~1 slot.container 4 gunpowder 14
replaceitem block ~-5 ~1 ~1 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~1 slot.container 9 water_bucket 1
replaceitem block ~-5 ~1 ~1 slot.container 10 lantern 12
replaceitem block ~-5 ~1 ~1 slot.container 11 glow_berries 16
replaceitem block ~-5 ~1 ~1 slot.container 12 moss_block 17
replaceitem block ~-5 ~1 ~1 slot.container 13 clay_ball 18
replaceitem block ~-5 ~1 ~1 slot.container 14 iron_ingot 11
loot insert ~-5 ~1 ~1 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
