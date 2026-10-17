# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3096/4224 | 主题内编号: b024/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·半地下掩体储藏室 (lush_caves_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace water
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 deepslate_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 1 glow_ink_sac 15
replaceitem block ~-3 ~-3 ~2 slot.container 2 slime_ball 16
replaceitem block ~-3 ~-3 ~2 slot.container 3 string 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 spider_eye 6
replaceitem block ~-3 ~-3 ~2 slot.container 5 bone 11
replaceitem block ~-3 ~-3 ~2 slot.container 9 golden_apple 7
replaceitem block ~-3 ~-3 ~2 slot.container 10 water_bucket 1
replaceitem block ~-3 ~-3 ~2 slot.container 11 lantern 6
replaceitem block ~-3 ~-3 ~2 slot.container 12 glow_berries 17
replaceitem block ~-3 ~-3 ~2 slot.container 13 moss_block 18
replaceitem block ~-3 ~-3 ~2 slot.container 14 clay_ball 19
loot insert ~-3 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~-3 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_tiles []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 moss_block []
fill ~0 ~1 ~-4 ~0 ~2 ~4 moss_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-4 ~5 ~5 ~4 moss_block []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 deepslate_tile_wall []
fill ~-4 ~6 ~-3 ~4 ~6 ~3 air []
setblock ~-5 ~6 ~-4 polished_deepslate []
setblock ~-5 ~7 ~-4 lantern []
setblock ~-5 ~6 ~4 polished_deepslate []
setblock ~-5 ~7 ~4 lantern []
setblock ~5 ~6 ~-4 polished_deepslate []
setblock ~5 ~7 ~-4 lantern []
setblock ~5 ~6 ~4 polished_deepslate []
setblock ~5 ~7 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_tile_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~0 moss_block []
setblock ~-7 ~8 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~3 blast_furnace []
setblock ~-3 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 glow_ink_sac 10
replaceitem block ~-4 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 2 string 12
replaceitem block ~-4 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 9
replaceitem block ~-4 ~1 ~2 slot.container 11 glow_berries 20
replaceitem block ~-4 ~1 ~2 slot.container 12 moss_block 21
replaceitem block ~-4 ~1 ~2 slot.container 13 clay_ball 22
replaceitem block ~-4 ~1 ~2 slot.container 14 iron_ingot 8
loot insert ~-4 ~1 ~2 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
