# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3104/4224 | 主题内编号: b032/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·断顶残垣古哨塔 (lush_caves_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 11x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 deepslate_tiles [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 deepslate_tiles [] replace water
fill ~-5 ~1 ~-5 ~5 ~11 ~5 air []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 deepslate_bricks []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 moss_block []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 moss_block []
setblock ~0 ~-6 ~0 ochre_froglight []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 string 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 spider_eye 6
replaceitem block ~0 ~-3 ~-2 slot.container 2 bone 11
replaceitem block ~0 ~-3 ~-2 slot.container 3 rotten_flesh 12
replaceitem block ~0 ~-3 ~-2 slot.container 4 gunpowder 11
replaceitem block ~0 ~-3 ~-2 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 9 water_bucket 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 lantern 6
replaceitem block ~0 ~-3 ~-2 slot.container 11 glow_berries 17
replaceitem block ~0 ~-3 ~-2 slot.container 12 moss_block 18
replaceitem block ~0 ~-3 ~-2 slot.container 13 clay_ball 19
replaceitem block ~0 ~-3 ~-2 slot.container 14 iron_ingot 12
loot insert ~0 ~-3 ~-2 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~-2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~9 ~4 deepslate_tiles []
fill ~-3 ~1 ~-3 ~3 ~8 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~9 ~-4 polished_deepslate []
fill ~-4 ~1 ~4 ~-4 ~9 ~4 polished_deepslate []
fill ~4 ~1 ~-4 ~4 ~9 ~-4 polished_deepslate []
fill ~4 ~1 ~4 ~4 ~9 ~4 polished_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 deepslate_tile_wall []
setblock ~4 ~2 ~0 deepslate_tile_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~9 ~-4 ~4 ~9 ~4 deepslate_tile_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-4 ~8 ~-1 ~-4 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 polished_deepslate []
fill ~-5 ~0 ~2 ~-5 ~8 ~2 polished_deepslate []
fill ~5 ~0 ~-2 ~5 ~8 ~-2 polished_deepslate []
fill ~5 ~0 ~2 ~5 ~8 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 6x5x4) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~0 moss_block []
setblock ~-6 ~6 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 glow_ink_sac 10
replaceitem block ~-3 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-3 ~1 ~2 slot.container 2 string 12
replaceitem block ~-3 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-3 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-3 ~1 ~2 slot.container 9 clay_ball 19
replaceitem block ~-3 ~1 ~2 slot.container 10 iron_ingot 12
replaceitem block ~-3 ~1 ~2 slot.container 11 gold_ingot 11
replaceitem block ~-3 ~1 ~2 slot.container 12 diamond 8
replaceitem block ~-3 ~1 ~2 slot.container 13 amethyst_shard 8
replaceitem block ~-3 ~1 ~2 slot.container 14 golden_apple 3
loot insert ~-3 ~1 ~2 loot "rsf/lush_caves"
summon cave_spider ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
