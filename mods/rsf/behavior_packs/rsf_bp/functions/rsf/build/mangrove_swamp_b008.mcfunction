# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1672/4224 | 主题内编号: b008/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·凯旋双拱圣物祭坛 (mangrove_swamp_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 mud_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 mud_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mud_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 packed_mud []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 mangrove_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 mud_bricks []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 mangrove_planks []
fill ~-5 ~9 ~-5 ~5 ~9 ~5 mangrove_fence []
fill ~-4 ~9 ~-4 ~4 ~9 ~4 air []
setblock ~-5 ~9 ~-5 mangrove_log []
setblock ~-5 ~10 ~-5 lantern []
setblock ~-5 ~9 ~5 mangrove_log []
setblock ~-5 ~10 ~5 lantern []
setblock ~5 ~9 ~-5 mangrove_log []
setblock ~5 ~10 ~-5 lantern []
setblock ~5 ~9 ~5 mangrove_log []
setblock ~5 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 mangrove_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 mangrove_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 mangrove_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 mangrove_log []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~-2 ~1 ~-8 ~5 ~1 mangrove_roots []
fill ~8 ~-2 ~1 ~8 ~5 ~1 mangrove_roots []
fill ~-8 ~6 ~1 ~8 ~6 ~1 mud_brick_slab []
setblock ~0 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 slime_ball 14
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 2 arrow 18
replaceitem block ~-4 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-4 ~1 ~4 slot.container 4 spider_eye 10
replaceitem block ~-4 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-4 ~1 ~4 slot.container 9 lead 8
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~-4 ~1 ~4 slot.container 11 boat 1
replaceitem block ~-4 ~1 ~4 slot.container 12 lantern 6
replaceitem block ~-4 ~1 ~4 slot.container 13 mangrove_log 19
replaceitem block ~-4 ~1 ~4 slot.container 14 mud_bricks 20
loot insert ~-4 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~4 slot.container 2 spider_eye 13
replaceitem block ~4 ~1 ~4 slot.container 3 gunpowder 6
replaceitem block ~4 ~1 ~4 slot.container 4 prismarine_shard 5
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 lead 6
replaceitem block ~4 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~4 ~1 ~4 slot.container 11 boat 1
replaceitem block ~4 ~1 ~4 slot.container 12 lantern 4
replaceitem block ~4 ~1 ~4 slot.container 13 mangrove_log 17
replaceitem block ~4 ~1 ~4 slot.container 14 mud_bricks 18
loot insert ~4 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
