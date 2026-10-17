# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3138/4224 | 主题内编号: b066/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·崩塌角楼古堡残垣 (lush_caves_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 clay []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 shroomlight []
setblock ~4 ~-5 ~-3 shroomlight []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 bone 11
replaceitem block ~4 ~-3 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~-3 ~3 slot.container 2 gunpowder 11
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 4 glow_ink_sac 15
replaceitem block ~4 ~-3 ~3 slot.container 5 slime_ball 16
replaceitem block ~4 ~-3 ~3 slot.container 9 amethyst_shard 12
replaceitem block ~4 ~-3 ~3 slot.container 10 golden_apple 7
replaceitem block ~4 ~-3 ~3 slot.container 11 water_bucket 1
replaceitem block ~4 ~-3 ~3 slot.container 12 lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 13 glow_berries 17
replaceitem block ~4 ~-3 ~3 slot.container 14 moss_block 18
loot insert ~4 ~-3 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~9 ~-4 moss_block []
setblock ~-6 ~10 ~-5 shroomlight []
fill ~-6 ~1 ~4 ~-5 ~9 ~5 moss_block []
setblock ~-6 ~10 ~4 shroomlight []
fill ~5 ~1 ~-5 ~6 ~9 ~-4 moss_block []
setblock ~5 ~10 ~-5 shroomlight []
fill ~5 ~1 ~4 ~6 ~9 ~5 moss_block []
setblock ~5 ~10 ~4 shroomlight []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 deepslate_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 polished_deepslate []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 polished_deepslate []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 polished_deepslate []
fill ~7 ~0 ~2 ~7 ~6 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x7x3) ---
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
replaceitem block ~-5 ~1 ~3 slot.container 0 string 12
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 9 gold_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 5
replaceitem block ~-5 ~1 ~3 slot.container 11 amethyst_shard 12
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 13 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 6
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
