# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1691/4224 | 主题内编号: b027/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双子连廊警戒塔楼 (mangrove_swamp_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mangrove_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mud_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~11 ~4 mossy_stone_bricks []
fill ~2 ~1 ~-4 ~5 ~11 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~10 ~3 air []
fill ~3 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 mud_bricks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 mud_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 mud_brick_wall []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 air []
setblock ~-5 ~11 ~-4 mangrove_log []
setblock ~-5 ~12 ~-4 lantern []
setblock ~-5 ~11 ~4 mangrove_log []
setblock ~-5 ~12 ~4 lantern []
setblock ~5 ~11 ~-4 mangrove_log []
setblock ~5 ~12 ~-4 lantern []
setblock ~5 ~11 ~4 mangrove_log []
setblock ~5 ~12 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 mangrove_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 mangrove_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 mangrove_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 mangrove_log []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~-2 ~-1 ~-8 ~4 ~-1 mangrove_roots []
fill ~8 ~-2 ~-1 ~8 ~4 ~-1 mangrove_roots []
fill ~-8 ~5 ~-1 ~8 ~5 ~-1 mud_brick_slab []
setblock ~0 ~6 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~3 slot.container 1 spider_eye 10
replaceitem block ~4 ~1 ~3 slot.container 2 gunpowder 11
replaceitem block ~4 ~1 ~3 slot.container 3 prismarine_shard 10
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 slime_ball 14
replaceitem block ~4 ~1 ~3 slot.container 9 iron_ingot 10
replaceitem block ~4 ~1 ~3 slot.container 10 gold_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 11 emerald 9
replaceitem block ~4 ~1 ~3 slot.container 12 lead 2
replaceitem block ~4 ~1 ~3 slot.container 13 golden_apple 2
replaceitem block ~4 ~1 ~3 slot.container 14 boat 1
loot insert ~4 ~1 ~3 loot "rsf/mangrove_swamp"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon slime ~1 ~1 ~1
summon witch ~0 ~2 ~0
