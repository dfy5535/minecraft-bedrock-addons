# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3108/4224 | 主题内编号: b036/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·下沉碑林地宫方尖碑 (lush_caves_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 deepslate_tiles []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 lantern []
setblock ~3 ~-6 ~-2 lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 gunpowder 11
replaceitem block ~3 ~-4 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-4 ~2 slot.container 2 glow_ink_sac 15
replaceitem block ~3 ~-4 ~2 slot.container 3 slime_ball 16
replaceitem block ~3 ~-4 ~2 slot.container 4 string 17
replaceitem block ~3 ~-4 ~2 slot.container 5 spider_eye 6
replaceitem block ~3 ~-4 ~2 slot.container 9 amethyst_shard 10
replaceitem block ~3 ~-4 ~2 slot.container 10 golden_apple 5
replaceitem block ~3 ~-4 ~2 slot.container 11 water_bucket 1
replaceitem block ~3 ~-4 ~2 slot.container 12 lantern 11
replaceitem block ~3 ~-4 ~2 slot.container 13 glow_berries 22
replaceitem block ~3 ~-4 ~2 slot.container 14 moss_block 16
loot insert ~3 ~-4 ~2 loot "rsf/lush_caves"
loot insert ~3 ~-4 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_tiles []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 moss_block []
fill ~0 ~1 ~-4 ~0 ~2 ~4 moss_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 moss_block []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 deepslate_tiles []
fill ~0 ~15 ~0 ~0 ~16 ~0 emerald_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_tile_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~0 moss_block []
setblock ~-7 ~5 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 14
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 4 glow_ink_sac 10
replaceitem block ~-4 ~1 ~2 slot.container 5 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 9 gold_ingot 6
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 3
replaceitem block ~-4 ~1 ~2 slot.container 11 amethyst_shard 10
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_apple 5
replaceitem block ~-4 ~1 ~2 slot.container 13 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 11
loot insert ~-4 ~1 ~2 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
