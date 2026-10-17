# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3099/4224 | 主题内编号: b027/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双子连廊警戒塔楼 (lush_caves_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x9 | 地上高度 9格 | 地下深度 2格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 mossy_stone_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~11 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 deepslate_tiles []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 moss_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~10 ~3 mossy_stone_bricks []
fill ~2 ~1 ~-3 ~6 ~10 ~3 mossy_stone_bricks []
fill ~-5 ~1 ~-2 ~-3 ~9 ~2 air []
fill ~3 ~1 ~-2 ~5 ~9 ~2 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 moss_block []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-3 ~6 ~9 ~3 moss_block []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 cobblestone_wall []
fill ~-5 ~10 ~-2 ~5 ~10 ~2 air []
setblock ~-6 ~10 ~-3 oak_log []
setblock ~-6 ~11 ~-3 lantern []
setblock ~-6 ~10 ~3 oak_log []
setblock ~-6 ~11 ~3 lantern []
setblock ~6 ~10 ~-3 oak_log []
setblock ~6 ~11 ~-3 lantern []
setblock ~6 ~10 ~3 oak_log []
setblock ~6 ~11 ~3 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 polished_deepslate []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 polished_deepslate []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 polished_deepslate []
fill ~8 ~0 ~2 ~8 ~5 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~-8 ~0 ~0 ~-8 ~5 ~2 moss_block []
setblock ~-8 ~6 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~1 slot.container 1 bone 14
replaceitem block ~5 ~1 ~1 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~1 slot.container 3 gunpowder 14
replaceitem block ~5 ~1 ~1 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 5 glow_ink_sac 10
replaceitem block ~5 ~1 ~1 slot.container 9 golden_apple 7
replaceitem block ~5 ~1 ~1 slot.container 10 water_bucket 1
replaceitem block ~5 ~1 ~1 slot.container 11 lantern 6
replaceitem block ~5 ~1 ~1 slot.container 12 glow_berries 17
replaceitem block ~5 ~1 ~1 slot.container 13 moss_block 18
replaceitem block ~5 ~1 ~1 slot.container 14 clay_ball 19
loot insert ~5 ~1 ~1 loot "rsf/lush_caves"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rotten_flesh 10
replaceitem block ~-5 ~1 ~2 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~2 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~2 slot.container 3 glow_ink_sac 13
replaceitem block ~-5 ~1 ~2 slot.container 4 slime_ball 14
replaceitem block ~-5 ~1 ~2 slot.container 5 string 15
replaceitem block ~-5 ~1 ~2 slot.container 9 golden_apple 5
replaceitem block ~-5 ~1 ~2 slot.container 10 water_bucket 1
replaceitem block ~-5 ~1 ~2 slot.container 11 lantern 11
replaceitem block ~-5 ~1 ~2 slot.container 12 glow_berries 22
replaceitem block ~-5 ~1 ~2 slot.container 13 moss_block 16
replaceitem block ~-5 ~1 ~2 slot.container 14 clay_ball 17
loot insert ~-5 ~1 ~2 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~2 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
