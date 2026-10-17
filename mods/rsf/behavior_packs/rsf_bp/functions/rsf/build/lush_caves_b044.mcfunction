# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3116/4224 | 主题内编号: b044/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双子祭台勇士角斗场 (lush_caves_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 deepslate_tiles [] replace air
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 deepslate_tiles [] replace water
fill ~-8 ~1 ~-6 ~8 ~8 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_bricks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 deepslate_bricks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 shroomlight []
setblock ~5 ~-5 ~-2 shroomlight []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 glow_ink_sac 15
replaceitem block ~5 ~-3 ~2 slot.container 1 slime_ball 16
replaceitem block ~5 ~-3 ~2 slot.container 2 string 17
replaceitem block ~5 ~-3 ~2 slot.container 3 spider_eye 6
replaceitem block ~5 ~-3 ~2 slot.container 4 bone 11
replaceitem block ~5 ~-3 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~-3 ~2 slot.container 9 gold_ingot 11
replaceitem block ~5 ~-3 ~2 slot.container 10 diamond 8
replaceitem block ~5 ~-3 ~2 slot.container 11 amethyst_shard 8
replaceitem block ~5 ~-3 ~2 slot.container 12 golden_apple 3
replaceitem block ~5 ~-3 ~2 slot.container 13 water_bucket 1
replaceitem block ~5 ~-3 ~2 slot.container 14 lantern 9
loot insert ~5 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~5 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~7 ~5 deepslate_tiles []
fill ~2 ~1 ~-5 ~7 ~7 ~5 deepslate_tiles []
fill ~-6 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~6 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 moss_block []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-5 ~-7 ~8 ~-5 polished_deepslate []
setblock ~-7 ~9 ~-5 lantern []
fill ~-7 ~6 ~5 ~-7 ~8 ~5 polished_deepslate []
setblock ~-7 ~9 ~5 lantern []
fill ~7 ~6 ~-5 ~7 ~8 ~-5 polished_deepslate []
setblock ~7 ~9 ~-5 lantern []
fill ~7 ~6 ~5 ~7 ~8 ~5 polished_deepslate []
setblock ~7 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~4 ~-7 polished_deepslate []
setblock ~-9 ~5 ~-7 lantern []
fill ~-9 ~0 ~7 ~-9 ~4 ~7 polished_deepslate []
setblock ~-9 ~5 ~7 lantern []
fill ~9 ~0 ~-7 ~9 ~4 ~-7 polished_deepslate []
setblock ~9 ~5 ~-7 lantern []
fill ~9 ~0 ~7 ~9 ~4 ~7 polished_deepslate []
setblock ~9 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-9 ~0 ~1 ~-9 ~7 ~3 moss_block []
setblock ~-9 ~8 ~2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-6 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~3 slot.container 2 gunpowder 14
replaceitem block ~-6 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-6 ~1 ~3 slot.container 4 glow_ink_sac 10
replaceitem block ~-6 ~1 ~3 slot.container 5 slime_ball 11
replaceitem block ~-6 ~1 ~3 slot.container 9 water_bucket 1
replaceitem block ~-6 ~1 ~3 slot.container 10 lantern 8
replaceitem block ~-6 ~1 ~3 slot.container 11 glow_berries 19
replaceitem block ~-6 ~1 ~3 slot.container 12 moss_block 20
replaceitem block ~-6 ~1 ~3 slot.container 13 clay_ball 21
replaceitem block ~-6 ~1 ~3 slot.container 14 iron_ingot 14
loot insert ~-6 ~1 ~3 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
