# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3092/4224 | 主题内编号: b020/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·重甲防爆金库房间 (lush_caves_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 moss_block []

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 deepslate_tiles []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-4 ~8 ~-3 moss_block []
setblock ~-5 ~9 ~-4 lantern []
fill ~-5 ~1 ~3 ~-4 ~8 ~4 moss_block []
setblock ~-5 ~9 ~3 lantern []
fill ~4 ~1 ~-4 ~5 ~8 ~-3 moss_block []
setblock ~4 ~9 ~-4 lantern []
fill ~4 ~1 ~3 ~5 ~8 ~4 moss_block []
setblock ~4 ~9 ~3 lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 moss_block []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 deepslate_tile_wall []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~-5 ~7 ~-4 polished_deepslate []
setblock ~-5 ~8 ~-4 lantern []
setblock ~-5 ~7 ~4 polished_deepslate []
setblock ~-5 ~8 ~4 lantern []
setblock ~5 ~7 ~-4 polished_deepslate []
setblock ~5 ~8 ~-4 lantern []
setblock ~5 ~7 ~4 polished_deepslate []
setblock ~5 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 polished_deepslate []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 polished_deepslate []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 polished_deepslate []
fill ~6 ~0 ~2 ~6 ~5 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~-7 ~0 ~-2 ~-7 ~3 ~0 moss_block []
setblock ~-7 ~4 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~0 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 14
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 4 glow_ink_sac 10
replaceitem block ~-4 ~1 ~2 slot.container 5 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 9 amethyst_shard 13
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_apple 8
replaceitem block ~-4 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 7
replaceitem block ~-4 ~1 ~2 slot.container 13 glow_berries 18
replaceitem block ~-4 ~1 ~2 slot.container 14 moss_block 19
loot insert ~-4 ~1 ~2 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
