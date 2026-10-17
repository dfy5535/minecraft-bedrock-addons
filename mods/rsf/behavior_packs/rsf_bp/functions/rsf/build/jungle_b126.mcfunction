# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1022/4224 | 主题内编号: b126/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双子主塔天桥宫殿与暗牢 (jungle_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_cobblestone []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 torch []
setblock ~4 ~-5 ~-4 torch []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~4 slot.container 1 bone 16
replaceitem block ~4 ~-3 ~4 slot.container 2 string 19
replaceitem block ~4 ~-3 ~4 slot.container 3 spider_eye 6
replaceitem block ~4 ~-3 ~4 slot.container 4 gunpowder 9
replaceitem block ~4 ~-3 ~4 slot.container 5 slime_ball 8
replaceitem block ~4 ~-3 ~4 slot.container 9 iron_sword 1
replaceitem block ~4 ~-3 ~4 slot.container 10 torch 19
replaceitem block ~4 ~-3 ~4 slot.container 11 melon_slice 20
replaceitem block ~4 ~-3 ~4 slot.container 12 cocoa_beans 13
replaceitem block ~4 ~-3 ~4 slot.container 13 bamboo 18
replaceitem block ~4 ~-3 ~4 slot.container 14 jungle_log 16
loot insert ~4 ~-3 ~4 loot "rsf/jungle"
loot insert ~4 ~-3 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~11 ~6 mossy_cobblestone []
fill ~2 ~1 ~-6 ~6 ~11 ~6 mossy_cobblestone []
fill ~-5 ~1 ~-5 ~-3 ~10 ~5 air []
fill ~3 ~1 ~-5 ~5 ~10 ~5 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 mossy_stone_bricks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mossy_stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 mossy_cobblestone []
fill ~0 ~16 ~0 ~0 ~16 ~0 chiseled_stone_bricks []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 mossy_stone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 torch []
setblock ~2 ~4 ~-9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x9x6) ---
fill ~-9 ~0 ~9 ~-10 ~8 ~10 mossy_stone_bricks []
setblock ~-9 ~9 ~9 gold_block []
setblock ~-9 ~10 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 arrow 22
replaceitem block ~-5 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~5 slot.container 4 string 14
replaceitem block ~-5 ~1 ~5 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~5 slot.container 9 iron_ingot 6
replaceitem block ~-5 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~5 slot.container 11 iron_sword 1
replaceitem block ~-5 ~1 ~5 slot.container 12 torch 19
replaceitem block ~-5 ~1 ~5 slot.container 13 melon_slice 20
replaceitem block ~-5 ~1 ~5 slot.container 14 cocoa_beans 13
loot insert ~-5 ~1 ~5 loot "rsf/jungle"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~5 slot.container 1 bone 14
replaceitem block ~5 ~1 ~5 slot.container 2 string 17
replaceitem block ~5 ~1 ~5 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~5 slot.container 5 slime_ball 6
replaceitem block ~5 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~5 ~1 ~5 slot.container 10 golden_apple 7
replaceitem block ~5 ~1 ~5 slot.container 11 iron_sword 1
replaceitem block ~5 ~1 ~5 slot.container 12 torch 17
replaceitem block ~5 ~1 ~5 slot.container 13 melon_slice 18
replaceitem block ~5 ~1 ~5 slot.container 14 cocoa_beans 11
loot insert ~5 ~1 ~5 loot "rsf/jungle"
loot insert ~5 ~1 ~5 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-3 ~0
