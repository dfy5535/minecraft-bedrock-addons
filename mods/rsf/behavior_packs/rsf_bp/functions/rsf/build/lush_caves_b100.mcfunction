# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3172/4224 | 主题内编号: b100/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·半地下暗堡火力点 (lush_caves_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
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

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 deepslate_tiles []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 glow_ink_sac 15
replaceitem block ~3 ~-4 ~2 slot.container 1 slime_ball 16
replaceitem block ~3 ~-4 ~2 slot.container 2 string 17
replaceitem block ~3 ~-4 ~2 slot.container 3 spider_eye 6
replaceitem block ~3 ~-4 ~2 slot.container 4 bone 11
replaceitem block ~3 ~-4 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~-4 ~2 slot.container 9 clay_ball 16
replaceitem block ~3 ~-4 ~2 slot.container 10 iron_ingot 9
replaceitem block ~3 ~-4 ~2 slot.container 11 gold_ingot 8
replaceitem block ~3 ~-4 ~2 slot.container 12 diamond 5
replaceitem block ~3 ~-4 ~2 slot.container 13 amethyst_shard 12
replaceitem block ~3 ~-4 ~2 slot.container 14 golden_apple 7
loot insert ~3 ~-4 ~2 loot "rsf/lush_caves"
loot insert ~3 ~-4 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_tiles []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 moss_block []
fill ~0 ~1 ~-4 ~0 ~2 ~4 moss_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-5 ~5 ~5 ~5 moss_block []
fill ~-4 ~6 ~-4 ~4 ~7 ~4 glass []
fill ~-3 ~6 ~-3 ~3 ~6 ~3 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_tile_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-7 ~0 ~-2 ~-7 ~3 ~0 moss_block []
setblock ~-7 ~4 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 14
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 4 glow_ink_sac 10
replaceitem block ~-4 ~1 ~2 slot.container 5 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 9 amethyst_shard 9
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 10
replaceitem block ~-4 ~1 ~2 slot.container 13 glow_berries 21
replaceitem block ~-4 ~1 ~2 slot.container 14 moss_block 22
loot insert ~-4 ~1 ~2 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
