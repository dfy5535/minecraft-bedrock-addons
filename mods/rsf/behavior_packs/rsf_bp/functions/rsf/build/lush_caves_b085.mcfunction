# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3157/4224 | 主题内编号: b085/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双子烟囱砖石窑厂 (lush_caves_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 moss_block [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 moss_block [] replace water
fill ~-7 ~1 ~-5 ~7 ~10 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 moss_block []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~2 anvil []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 slime_ball 16
replaceitem block ~4 ~-2 ~2 slot.container 1 string 17
replaceitem block ~4 ~-2 ~2 slot.container 2 spider_eye 6
replaceitem block ~4 ~-2 ~2 slot.container 3 bone 11
replaceitem block ~4 ~-2 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~4 ~-2 ~2 slot.container 5 gunpowder 11
replaceitem block ~4 ~-2 ~2 slot.container 9 golden_apple 8
replaceitem block ~4 ~-2 ~2 slot.container 10 water_bucket 1
replaceitem block ~4 ~-2 ~2 slot.container 11 lantern 7
replaceitem block ~4 ~-2 ~2 slot.container 12 glow_berries 18
replaceitem block ~4 ~-2 ~2 slot.container 13 moss_block 19
replaceitem block ~4 ~-2 ~2 slot.container 14 clay_ball 20
loot insert ~4 ~-2 ~2 loot "rsf/lush_caves"
loot insert ~4 ~-2 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~9 ~4 moss_block []
fill ~2 ~1 ~-4 ~6 ~9 ~4 moss_block []
fill ~-5 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~5 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 deepslate_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 deepslate_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 moss_block []
fill ~0 ~14 ~0 ~0 ~15 ~0 ochre_froglight []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 deepslate_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 deepslate_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~-1 ~-8 ~3 ~1 moss_block []
setblock ~-8 ~4 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 smoker []
setblock ~-5 ~1 ~3 furnace []
setblock ~0 ~1 ~3 crafting_table []
setblock ~6 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~2 slot.container 1 gunpowder 14
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 3 glow_ink_sac 10
replaceitem block ~5 ~1 ~2 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~2 slot.container 5 string 12
replaceitem block ~5 ~1 ~2 slot.container 9 moss_block 16
replaceitem block ~5 ~1 ~2 slot.container 10 clay_ball 17
replaceitem block ~5 ~1 ~2 slot.container 11 iron_ingot 10
replaceitem block ~5 ~1 ~2 slot.container 12 gold_ingot 9
replaceitem block ~5 ~1 ~2 slot.container 13 diamond 6
replaceitem block ~5 ~1 ~2 slot.container 14 amethyst_shard 13
loot insert ~5 ~1 ~2 loot "rsf/lush_caves"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~3 slot.container 1 glow_ink_sac 13
replaceitem block ~-5 ~1 ~3 slot.container 2 slime_ball 14
replaceitem block ~-5 ~1 ~3 slot.container 3 string 15
replaceitem block ~-5 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~3 slot.container 9 moss_block 21
replaceitem block ~-5 ~1 ~3 slot.container 10 clay_ball 22
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 12 gold_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 13 diamond 4
replaceitem block ~-5 ~1 ~3 slot.container 14 amethyst_shard 11
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~3 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
