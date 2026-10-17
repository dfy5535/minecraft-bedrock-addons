# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3142/4224 | 主题内编号: b070/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·风化坍塌阶梯祭台 (lush_caves_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 clay []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 17
replaceitem block ~4 ~-3 ~3 slot.container 1 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 2 bone 11
replaceitem block ~4 ~-3 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~-3 ~3 slot.container 4 gunpowder 11
replaceitem block ~4 ~-3 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 9 glow_berries 18
replaceitem block ~4 ~-3 ~3 slot.container 10 moss_block 19
replaceitem block ~4 ~-3 ~3 slot.container 11 clay_ball 20
replaceitem block ~4 ~-3 ~3 slot.container 12 iron_ingot 13
replaceitem block ~4 ~-3 ~3 slot.container 13 gold_ingot 12
replaceitem block ~4 ~-3 ~3 slot.container 14 diamond 2
loot insert ~4 ~-3 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 deepslate_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 moss_block []
fill ~-4 ~5 ~-3 ~4 ~6 ~3 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 deepslate_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 polished_deepslate []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 shroomlight []
fill ~0 ~0 ~7 ~0 ~3 ~7 polished_deepslate []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 shroomlight []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 polished_deepslate []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 shroomlight []
fill ~8 ~0 ~0 ~8 ~3 ~0 polished_deepslate []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~-3 ~-8 ~3 ~-1 moss_block []
setblock ~-8 ~4 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 glow_ink_sac 10
replaceitem block ~-5 ~1 ~3 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 4 string 12
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 9 amethyst_shard 14
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 11 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 8
replaceitem block ~-5 ~1 ~3 slot.container 13 glow_berries 19
replaceitem block ~-5 ~1 ~3 slot.container 14 moss_block 20
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
