# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0973/4224 | 主题内编号: b077/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双子鸟居图腾神道 (jungle_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cracked_stone_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cracked_stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 jungle_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 jungle_planks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cracked_stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 torch []
setblock ~3 ~-6 ~-4 torch []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 spider_eye 6
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 9
replaceitem block ~3 ~-4 ~4 slot.container 2 slime_ball 8
replaceitem block ~3 ~-4 ~4 slot.container 3 arrow 19
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-4 ~4 slot.container 9 golden_apple 5
replaceitem block ~3 ~-4 ~4 slot.container 10 iron_sword 1
replaceitem block ~3 ~-4 ~4 slot.container 11 torch 22
replaceitem block ~3 ~-4 ~4 slot.container 12 melon_slice 16
replaceitem block ~3 ~-4 ~4 slot.container 13 cocoa_beans 9
replaceitem block ~3 ~-4 ~4 slot.container 14 bamboo 14
loot insert ~3 ~-4 ~4 loot "rsf/jungle"
loot insert ~3 ~-4 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 cracked_stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-6 ~6 ~8 ~6 jungle_slab []
fill ~-4 ~9 ~-4 ~4 ~10 ~4 mossy_cobblestone []
fill ~-5 ~11 ~-5 ~5 ~11 ~5 stone_brick_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~7 ~-9 ~4 ~8 mossy_stone_bricks []
setblock ~-8 ~5 ~7 gold_block []
setblock ~-8 ~6 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~4 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 4 bone 11
replaceitem block ~4 ~1 ~4 slot.container 5 string 14
replaceitem block ~4 ~1 ~4 slot.container 9 torch 16
replaceitem block ~4 ~1 ~4 slot.container 10 melon_slice 17
replaceitem block ~4 ~1 ~4 slot.container 11 cocoa_beans 10
replaceitem block ~4 ~1 ~4 slot.container 12 bamboo 15
replaceitem block ~4 ~1 ~4 slot.container 13 jungle_log 20
replaceitem block ~4 ~1 ~4 slot.container 14 gold_ingot 11
loot insert ~4 ~1 ~4 loot "rsf/jungle"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
