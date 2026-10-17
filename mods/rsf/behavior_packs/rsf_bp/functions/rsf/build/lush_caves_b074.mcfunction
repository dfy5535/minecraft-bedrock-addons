# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3146/4224 | 主题内编号: b074/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·十字四象图腾柱阵 (lush_caves_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
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

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 1 bone 11
replaceitem block ~4 ~-3 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~4 ~-3 ~3 slot.container 3 gunpowder 11
replaceitem block ~4 ~-3 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 5 glow_ink_sac 15
replaceitem block ~4 ~-3 ~3 slot.container 9 iron_ingot 9
replaceitem block ~4 ~-3 ~3 slot.container 10 gold_ingot 8
replaceitem block ~4 ~-3 ~3 slot.container 11 diamond 5
replaceitem block ~4 ~-3 ~3 slot.container 12 amethyst_shard 12
replaceitem block ~4 ~-3 ~3 slot.container 13 golden_apple 7
replaceitem block ~4 ~-3 ~3 slot.container 14 water_bucket 1
loot insert ~4 ~-3 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 deepslate_bricks []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 deepslate_bricks []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 deepslate_brick_wall []
setblock ~6 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 polished_deepslate []
setblock ~-6 ~10 ~-5 shroomlight []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 polished_deepslate []
setblock ~-6 ~10 ~5 shroomlight []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 polished_deepslate []
setblock ~6 ~10 ~-5 shroomlight []
fill ~6 ~7 ~5 ~6 ~9 ~5 polished_deepslate []
setblock ~6 ~10 ~5 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 polished_deepslate []
setblock ~-8 ~5 ~-7 shroomlight []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 polished_deepslate []
setblock ~-8 ~5 ~7 shroomlight []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 polished_deepslate []
setblock ~8 ~5 ~-7 shroomlight []
fill ~8 ~0 ~7 ~8 ~4 ~7 polished_deepslate []
setblock ~8 ~5 ~7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-8 ~0 ~1 ~-8 ~7 ~3 moss_block []
setblock ~-8 ~8 ~2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_deepslate []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 12
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 9 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 10
replaceitem block ~-5 ~1 ~3 slot.container 11 glow_berries 21
replaceitem block ~-5 ~1 ~3 slot.container 12 moss_block 22
replaceitem block ~-5 ~1 ~3 slot.container 13 clay_ball 16
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 9
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
