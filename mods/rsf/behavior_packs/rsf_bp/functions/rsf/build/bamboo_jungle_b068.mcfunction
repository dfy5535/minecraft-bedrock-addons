# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1092/4224 | 主题内编号: b068/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·断裂凯旋高架拱廊 (bamboo_jungle_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 jungle_planks [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 jungle_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 bamboo_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 bamboo_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~6 ~4 jungle_planks []
fill ~-6 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 bamboo_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-7 ~5 ~-1 ~-7 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 bamboo_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~1 ~-2 ~8 ~6 ~2 scaffolding []
fill ~7 ~6 ~-2 ~9 ~6 ~2 bamboo_mosaic_slab []
setblock ~8 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~6 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-6 ~1 ~2 slot.container 2 arrow 22
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 4 string 12
replaceitem block ~-6 ~1 ~2 slot.container 5 rotten_flesh 11
replaceitem block ~-6 ~1 ~2 slot.container 9 gold_ingot 4
replaceitem block ~-6 ~1 ~2 slot.container 10 golden_apple 2
replaceitem block ~-6 ~1 ~2 slot.container 11 bow 1
replaceitem block ~-6 ~1 ~2 slot.container 12 lantern 7
replaceitem block ~-6 ~1 ~2 slot.container 13 bamboo 36
replaceitem block ~-6 ~1 ~2 slot.container 14 scaffolding 21
loot insert ~-6 ~1 ~2 loot "rsf/bamboo_jungle"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
