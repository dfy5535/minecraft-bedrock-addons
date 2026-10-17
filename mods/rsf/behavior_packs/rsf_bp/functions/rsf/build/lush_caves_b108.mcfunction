# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3180/4224 | 主题内编号: b108/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·十字四相元素秘法殿 (lush_caves_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 moss_block []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 bone 11
replaceitem block ~4 ~-3 ~0 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~-3 ~0 slot.container 2 gunpowder 11
replaceitem block ~4 ~-3 ~0 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~0 slot.container 4 glow_ink_sac 15
replaceitem block ~4 ~-3 ~0 slot.container 5 slime_ball 16
replaceitem block ~4 ~-3 ~0 slot.container 9 amethyst_shard 8
replaceitem block ~4 ~-3 ~0 slot.container 10 golden_apple 3
replaceitem block ~4 ~-3 ~0 slot.container 11 water_bucket 1
replaceitem block ~4 ~-3 ~0 slot.container 12 lantern 9
replaceitem block ~4 ~-3 ~0 slot.container 13 glow_berries 20
replaceitem block ~4 ~-3 ~0 slot.container 14 moss_block 21
loot insert ~4 ~-3 ~0 loot "rsf/lush_caves"
loot insert ~4 ~-3 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 deepslate_tiles []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 deepslate_tiles []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 deepslate_tile_wall []
setblock ~6 ~2 ~0 deepslate_tile_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 moss_block []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 moss_block []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 emerald_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_brick_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~0 ~-8 ~6 ~2 moss_block []
setblock ~-8 ~7 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 4 glow_ink_sac 10
replaceitem block ~-5 ~1 ~3 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 9 glow_berries 18
replaceitem block ~-5 ~1 ~3 slot.container 10 moss_block 19
replaceitem block ~-5 ~1 ~3 slot.container 11 clay_ball 20
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 13 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 2
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
