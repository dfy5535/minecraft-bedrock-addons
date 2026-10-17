# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3112/4224 | 主题内编号: b040/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·崩裂远古符文石碑 (lush_caves_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 moss_block []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 bone 11
replaceitem block ~3 ~-3 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~-3 ~2 slot.container 2 gunpowder 11
replaceitem block ~3 ~-3 ~2 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 4 glow_ink_sac 15
replaceitem block ~3 ~-3 ~2 slot.container 5 slime_ball 16
replaceitem block ~3 ~-3 ~2 slot.container 9 glow_berries 16
replaceitem block ~3 ~-3 ~2 slot.container 10 moss_block 17
replaceitem block ~3 ~-3 ~2 slot.container 11 clay_ball 18
replaceitem block ~3 ~-3 ~2 slot.container 12 iron_ingot 11
replaceitem block ~3 ~-3 ~2 slot.container 13 gold_ingot 10
replaceitem block ~3 ~-3 ~2 slot.container 14 diamond 7
loot insert ~3 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~3 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_tiles []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 moss_block []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 moss_block []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 deepslate_tile_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 deepslate_tile_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 polished_deepslate []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 polished_deepslate []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 polished_deepslate []
fill ~6 ~0 ~2 ~6 ~7 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-7 ~0 ~-2 ~-7 ~3 ~0 moss_block []
setblock ~-7 ~4 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 glow_ink_sac 10
replaceitem block ~-4 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 2 string 12
replaceitem block ~-4 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 9 amethyst_shard 12
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_apple 7
replaceitem block ~-4 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 6
replaceitem block ~-4 ~1 ~2 slot.container 13 glow_berries 17
replaceitem block ~-4 ~1 ~2 slot.container 14 moss_block 18
loot insert ~-4 ~1 ~2 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
