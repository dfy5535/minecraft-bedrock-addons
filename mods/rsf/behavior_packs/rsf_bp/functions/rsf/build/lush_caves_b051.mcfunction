# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3123/4224 | 主题内编号: b051/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·带哨塔围栏探险营地 (lush_caves_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tiles []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 moss_block []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 deepslate_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 moss_block []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cobblestone_wall []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 oak_log []
setblock ~-6 ~9 ~-5 lantern []
setblock ~-6 ~8 ~5 oak_log []
setblock ~-6 ~9 ~5 lantern []
setblock ~6 ~8 ~-5 oak_log []
setblock ~6 ~9 ~-5 lantern []
setblock ~6 ~8 ~5 oak_log []
setblock ~6 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 deepslate_tiles []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~0 moss_block []
setblock ~-8 ~5 ~-1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 bone 14
replaceitem block ~5 ~1 ~3 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 14
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 glow_ink_sac 10
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 7
replaceitem block ~5 ~1 ~3 slot.container 10 glow_berries 18
replaceitem block ~5 ~1 ~3 slot.container 11 moss_block 19
replaceitem block ~5 ~1 ~3 slot.container 12 clay_ball 20
replaceitem block ~5 ~1 ~3 slot.container 13 iron_ingot 13
replaceitem block ~5 ~1 ~3 slot.container 14 gold_ingot 12
loot insert ~5 ~1 ~3 loot "rsf/lush_caves"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 glow_ink_sac 13
replaceitem block ~-5 ~1 ~4 slot.container 4 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 5 string 15
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 12
replaceitem block ~-5 ~1 ~4 slot.container 10 glow_berries 16
replaceitem block ~-5 ~1 ~4 slot.container 11 moss_block 17
replaceitem block ~-5 ~1 ~4 slot.container 12 clay_ball 18
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 14 gold_ingot 10
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
