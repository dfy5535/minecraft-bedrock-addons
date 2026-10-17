# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3076/4224 | 主题内编号: b004/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双子火盆高台神坛 (lush_caves_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 deepslate_tiles [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 deepslate_tiles [] replace water
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 moss_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 deepslate_tiles []
fill ~2 ~1 ~-4 ~7 ~8 ~4 deepslate_tiles []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 moss_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-4 ~-7 ~9 ~-4 polished_deepslate []
setblock ~-7 ~10 ~-4 lantern []
fill ~-7 ~7 ~4 ~-7 ~9 ~4 polished_deepslate []
setblock ~-7 ~10 ~4 lantern []
fill ~7 ~7 ~-4 ~7 ~9 ~-4 polished_deepslate []
setblock ~7 ~10 ~-4 lantern []
fill ~7 ~7 ~4 ~7 ~9 ~4 polished_deepslate []
setblock ~7 ~10 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 moss_block []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 polished_deepslate []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 polished_deepslate []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 deepslate_tile_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-9 ~0 ~-2 ~-9 ~7 ~0 moss_block []
setblock ~-9 ~8 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 smoker []
setblock ~-5 ~1 ~3 furnace []
setblock ~0 ~1 ~3 crafting_table []
setblock ~6 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-6 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~2 slot.container 2 gunpowder 14
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 4 glow_ink_sac 10
replaceitem block ~-6 ~1 ~2 slot.container 5 slime_ball 11
replaceitem block ~-6 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~-6 ~1 ~2 slot.container 10 lantern 10
replaceitem block ~-6 ~1 ~2 slot.container 11 glow_berries 21
replaceitem block ~-6 ~1 ~2 slot.container 12 moss_block 22
replaceitem block ~-6 ~1 ~2 slot.container 13 clay_ball 16
replaceitem block ~-6 ~1 ~2 slot.container 14 iron_ingot 9
loot insert ~-6 ~1 ~2 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
