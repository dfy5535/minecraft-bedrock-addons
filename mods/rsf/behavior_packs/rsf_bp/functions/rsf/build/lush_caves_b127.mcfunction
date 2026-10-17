# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3199/4224 | 主题内编号: b127/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·万神殿巨型穹顶与试炼宫 (lush_caves_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tiles []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 gold_block []
setblock ~-5 ~-5 ~-4 lantern []
setblock ~5 ~-5 ~4 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 1 glow_ink_sac 15
replaceitem block ~0 ~-3 ~4 slot.container 2 slime_ball 16
replaceitem block ~0 ~-3 ~4 slot.container 3 string 17
replaceitem block ~0 ~-3 ~4 slot.container 4 spider_eye 6
replaceitem block ~0 ~-3 ~4 slot.container 5 bone 11
replaceitem block ~0 ~-3 ~4 slot.container 9 lantern 10
replaceitem block ~0 ~-3 ~4 slot.container 10 glow_berries 21
replaceitem block ~0 ~-3 ~4 slot.container 11 moss_block 22
replaceitem block ~0 ~-3 ~4 slot.container 12 clay_ball 16
replaceitem block ~0 ~-3 ~4 slot.container 13 iron_ingot 9
replaceitem block ~0 ~-3 ~4 slot.container 14 gold_ingot 8
loot insert ~0 ~-3 ~4 loot "rsf/lush_caves"
loot insert ~0 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 moss_block []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 oak_log []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 oak_log []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 oak_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 oak_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 oak_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 oak_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 oak_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 oak_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 oak_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 oak_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 oak_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 oak_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 oak_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 oak_log []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 oak_log []
fill ~7 ~1 ~6 ~7 ~7 ~6 oak_log []
fill ~-7 ~1 ~-4 ~-7 ~7 ~-4 oak_log []
fill ~7 ~1 ~-4 ~7 ~7 ~-4 oak_log []
fill ~-7 ~1 ~-2 ~-7 ~7 ~-2 oak_log []
fill ~7 ~1 ~-2 ~7 ~7 ~-2 oak_log []
fill ~-7 ~1 ~0 ~-7 ~7 ~0 oak_log []
fill ~7 ~1 ~0 ~7 ~7 ~0 oak_log []
fill ~-7 ~1 ~2 ~-7 ~7 ~2 oak_log []
fill ~7 ~1 ~2 ~7 ~7 ~2 oak_log []
fill ~-7 ~1 ~4 ~-7 ~7 ~4 oak_log []
fill ~7 ~1 ~4 ~7 ~7 ~4 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 moss_block []
fill ~-6 ~9 ~-5 ~6 ~10 ~5 glass []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 oak_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 oak_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 oak_log []
setblock ~-9 ~4 ~0 emerald_block []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 oak_log []
setblock ~9 ~4 ~0 emerald_block []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~-9 ~0 ~-4 ~-9 ~5 ~-2 moss_block []
setblock ~-9 ~6 ~-3 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 1 glow_ink_sac 10
replaceitem block ~6 ~1 ~4 slot.container 2 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 3 string 12
replaceitem block ~6 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 5 bone 14
replaceitem block ~6 ~1 ~4 slot.container 9 golden_apple 2
replaceitem block ~6 ~1 ~4 slot.container 10 water_bucket 1
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 8
replaceitem block ~6 ~1 ~4 slot.container 12 glow_berries 19
replaceitem block ~6 ~1 ~4 slot.container 13 moss_block 20
replaceitem block ~6 ~1 ~4 slot.container 14 clay_ball 21
loot insert ~6 ~1 ~4 loot "rsf/lush_caves"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 slime_ball 14
replaceitem block ~-6 ~1 ~5 slot.container 1 string 15
replaceitem block ~-6 ~1 ~5 slot.container 2 spider_eye 12
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 17
replaceitem block ~-6 ~1 ~5 slot.container 4 rotten_flesh 10
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 9
replaceitem block ~-6 ~1 ~5 slot.container 9 golden_apple 7
replaceitem block ~-6 ~1 ~5 slot.container 10 water_bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 6
replaceitem block ~-6 ~1 ~5 slot.container 12 glow_berries 17
replaceitem block ~-6 ~1 ~5 slot.container 13 moss_block 18
replaceitem block ~-6 ~1 ~5 slot.container 14 clay_ball 19
loot insert ~-6 ~1 ~5 loot "rsf/lush_caves"
loot insert ~-6 ~1 ~5 loot "chests/abandoned_mineshaft"
summon glow_squid ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
