# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3143/4224 | 主题内编号: b071/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·残破双子哨所遗迹 (lush_caves_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 deepslate_tiles []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 moss_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 mossy_stone_bricks []
fill ~2 ~1 ~-4 ~6 ~8 ~4 mossy_stone_bricks []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 moss_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 deepslate_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~-8 ~0 ~-3 ~-8 ~4 ~-1 moss_block []
setblock ~-8 ~5 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 smoker []
setblock ~-5 ~1 ~3 furnace []
setblock ~0 ~1 ~3 crafting_table []
setblock ~6 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 1 glow_ink_sac 10
replaceitem block ~5 ~1 ~2 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~2 slot.container 3 string 12
replaceitem block ~5 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~2 slot.container 5 bone 14
replaceitem block ~5 ~1 ~2 slot.container 9 lantern 6
replaceitem block ~5 ~1 ~2 slot.container 10 glow_berries 17
replaceitem block ~5 ~1 ~2 slot.container 11 moss_block 18
replaceitem block ~5 ~1 ~2 slot.container 12 clay_ball 19
replaceitem block ~5 ~1 ~2 slot.container 13 iron_ingot 12
replaceitem block ~5 ~1 ~2 slot.container 14 gold_ingot 11
loot insert ~5 ~1 ~2 loot "rsf/lush_caves"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 slime_ball 14
replaceitem block ~-5 ~1 ~3 slot.container 1 string 15
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 17
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 10
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 9 lantern 11
replaceitem block ~-5 ~1 ~3 slot.container 10 glow_berries 22
replaceitem block ~-5 ~1 ~3 slot.container 11 moss_block 16
replaceitem block ~-5 ~1 ~3 slot.container 12 clay_ball 17
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 14 gold_ingot 9
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~3 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~2 ~0
