# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3148/4224 | 主题内编号: b076/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·阶梯高台图腾战阵 (lush_caves_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_tiles []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~-4 ~-5 ~-3 lantern []
setblock ~4 ~-5 ~3 lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 bone 11
replaceitem block ~0 ~-3 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~0 ~-3 ~3 slot.container 2 gunpowder 11
replaceitem block ~0 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-3 ~3 slot.container 4 glow_ink_sac 15
replaceitem block ~0 ~-3 ~3 slot.container 5 slime_ball 16
replaceitem block ~0 ~-3 ~3 slot.container 9 amethyst_shard 10
replaceitem block ~0 ~-3 ~3 slot.container 10 golden_apple 5
replaceitem block ~0 ~-3 ~3 slot.container 11 water_bucket 1
replaceitem block ~0 ~-3 ~3 slot.container 12 lantern 11
replaceitem block ~0 ~-3 ~3 slot.container 13 glow_berries 22
replaceitem block ~0 ~-3 ~3 slot.container 14 moss_block 16
loot insert ~0 ~-3 ~3 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 deepslate_tiles []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 moss_block []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 moss_block []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 deepslate_tile_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 moss_block []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 deepslate_tiles []
fill ~0 ~14 ~0 ~0 ~15 ~0 emerald_block []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 polished_deepslate []
setblock ~0 ~4 ~-7 ochre_froglight []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 polished_deepslate []
setblock ~0 ~4 ~7 ochre_froglight []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 polished_deepslate []
setblock ~-8 ~4 ~0 ochre_froglight []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 polished_deepslate []
setblock ~8 ~4 ~0 ochre_froglight []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~0 moss_block []
setblock ~-8 ~5 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 4 glow_ink_sac 10
replaceitem block ~-5 ~1 ~3 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 9 gold_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 8
replaceitem block ~-5 ~1 ~3 slot.container 11 amethyst_shard 8
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 13 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 9
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
