# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0932/4224 | 主题内编号: b036/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·下沉碑林地宫方尖碑 (jungle_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-5 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-5 ~3 campfire []
setblock ~2 ~-5 ~-3 campfire []
setblock ~2 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-3 ~3 slot.container 0 arrow 19
replaceitem block ~2 ~-3 ~3 slot.container 1 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 3 bone 16
replaceitem block ~2 ~-3 ~3 slot.container 4 string 19
replaceitem block ~2 ~-3 ~3 slot.container 5 spider_eye 6
replaceitem block ~2 ~-3 ~3 slot.container 9 iron_sword 1
replaceitem block ~2 ~-3 ~3 slot.container 10 torch 20
replaceitem block ~2 ~-3 ~3 slot.container 11 melon_slice 21
replaceitem block ~2 ~-3 ~3 slot.container 12 cocoa_beans 14
replaceitem block ~2 ~-3 ~3 slot.container 13 bamboo 12
replaceitem block ~2 ~-3 ~3 slot.container 14 jungle_log 17
loot insert ~2 ~-3 ~3 loot "rsf/jungle"
loot insert ~2 ~-3 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 moss_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 moss_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 moss_block []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~16 ~0 emerald_block []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-7 ~0 ~8 ~-8 ~8 ~9 mossy_stone_bricks []
setblock ~-7 ~9 ~8 gold_block []
setblock ~-7 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 1 slime_ball 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_ingot 7
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 12 torch 20
replaceitem block ~-3 ~1 ~4 slot.container 13 melon_slice 21
replaceitem block ~-3 ~1 ~4 slot.container 14 cocoa_beans 14
loot insert ~-3 ~1 ~4 loot "rsf/jungle"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 17
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 12 torch 18
replaceitem block ~3 ~1 ~4 slot.container 13 melon_slice 19
replaceitem block ~3 ~1 ~4 slot.container 14 cocoa_beans 12
loot insert ~3 ~1 ~4 loot "rsf/jungle"
loot insert ~3 ~1 ~4 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-3 ~0
