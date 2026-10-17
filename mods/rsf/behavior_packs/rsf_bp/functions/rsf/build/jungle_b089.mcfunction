# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0985/4224 | 主题内编号: b089/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·四柱挑檐祈愿凉亭 (jungle_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[dome_glass] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 9x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cracked_stone_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cracked_stone_bricks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 jungle_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 jungle_planks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~8 ~4 cracked_stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~7 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 jungle_log []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 jungle_log []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 jungle_log []
fill ~3 ~1 ~4 ~3 ~8 ~4 jungle_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 jungle_fence []
setblock ~3 ~2 ~0 jungle_fence []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 mossy_stone_bricks []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 mossy_cobblestone []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 jungle_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 jungle_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 jungle_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~-6 ~0 ~6 ~-7 ~6 ~7 mossy_stone_bricks []
setblock ~-6 ~7 ~6 gold_block []
setblock ~-6 ~8 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-2 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 11
replaceitem block ~2 ~1 ~3 slot.container 1 string 14
replaceitem block ~2 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 4 slime_ball 11
replaceitem block ~2 ~1 ~3 slot.container 5 arrow 22
replaceitem block ~2 ~1 ~3 slot.container 9 emerald 9
replaceitem block ~2 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~2 ~1 ~3 slot.container 11 golden_apple 1
replaceitem block ~2 ~1 ~3 slot.container 12 iron_sword 1
replaceitem block ~2 ~1 ~3 slot.container 13 torch 18
replaceitem block ~2 ~1 ~3 slot.container 14 melon_slice 19
loot insert ~2 ~1 ~3 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
