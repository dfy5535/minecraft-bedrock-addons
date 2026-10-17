# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3114/4224 | 主题内编号: b042/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·地底铁栏死斗深坑 (lush_caves_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 clay []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~3 shroomlight []
setblock ~4 ~-6 ~-3 shroomlight []
setblock ~4 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~3 slot.container 0 bone 11
replaceitem block ~4 ~-4 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~-4 ~3 slot.container 2 gunpowder 11
replaceitem block ~4 ~-4 ~3 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-4 ~3 slot.container 4 glow_ink_sac 15
replaceitem block ~4 ~-4 ~3 slot.container 5 slime_ball 16
replaceitem block ~4 ~-4 ~3 slot.container 9 gold_ingot 7
replaceitem block ~4 ~-4 ~3 slot.container 10 diamond 4
replaceitem block ~4 ~-4 ~3 slot.container 11 amethyst_shard 11
replaceitem block ~4 ~-4 ~3 slot.container 12 golden_apple 6
replaceitem block ~4 ~-4 ~3 slot.container 13 water_bucket 1
replaceitem block ~4 ~-4 ~3 slot.container 14 lantern 12
loot insert ~4 ~-4 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-4 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 moss_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 moss_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 polished_deepslate []
setblock ~-6 ~8 ~-5 shroomlight []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 polished_deepslate []
setblock ~-6 ~8 ~5 shroomlight []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 polished_deepslate []
setblock ~6 ~8 ~-5 shroomlight []
fill ~6 ~5 ~5 ~6 ~7 ~5 polished_deepslate []
setblock ~6 ~8 ~5 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 deepslate_brick_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~0 ~-1 ~-8 ~5 ~1 moss_block []
setblock ~-8 ~6 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 12
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 9 clay_ball 22
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 4
replaceitem block ~-5 ~1 ~3 slot.container 13 amethyst_shard 11
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
