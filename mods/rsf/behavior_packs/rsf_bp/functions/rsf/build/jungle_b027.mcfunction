# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0923/4224 | 主题内编号: b027/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双子连廊警戒塔楼 (jungle_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 jungle_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 jungle_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 jungle_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~11 ~4 jungle_planks []
fill ~2 ~1 ~-4 ~5 ~11 ~4 jungle_planks []
fill ~-4 ~1 ~-3 ~-3 ~10 ~3 air []
fill ~3 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 mossy_stone_bricks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 mossy_stone_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 jungle_fence []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 air []
setblock ~-5 ~11 ~-4 stripped_jungle_log []
setblock ~-5 ~12 ~-4 lantern []
setblock ~-5 ~11 ~4 stripped_jungle_log []
setblock ~-5 ~12 ~4 lantern []
setblock ~5 ~11 ~-4 stripped_jungle_log []
setblock ~5 ~12 ~-4 lantern []
setblock ~5 ~11 ~4 stripped_jungle_log []
setblock ~5 ~12 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 jungle_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 jungle_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 jungle_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~7 ~-9 ~4 ~8 mossy_stone_bricks []
setblock ~-8 ~5 ~7 gold_block []
setblock ~-8 ~6 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 9 torch 22
replaceitem block ~4 ~1 ~3 slot.container 10 melon_slice 16
replaceitem block ~4 ~1 ~3 slot.container 11 cocoa_beans 9
replaceitem block ~4 ~1 ~3 slot.container 12 bamboo 14
replaceitem block ~4 ~1 ~3 slot.container 13 jungle_log 19
replaceitem block ~4 ~1 ~3 slot.container 14 gold_ingot 10
loot insert ~4 ~1 ~3 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0
