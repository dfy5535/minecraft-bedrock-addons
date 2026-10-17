# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0912/4224 | 主题内编号: b016/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·要塞地底重装暗牢 (jungle_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 campfire []
setblock ~4 ~-5 ~0 campfire []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 arrow 19
replaceitem block ~0 ~-3 ~5 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 3 bone 16
replaceitem block ~0 ~-3 ~5 slot.container 4 string 19
replaceitem block ~0 ~-3 ~5 slot.container 5 spider_eye 6
replaceitem block ~0 ~-3 ~5 slot.container 9 iron_sword 1
replaceitem block ~0 ~-3 ~5 slot.container 10 torch 18
replaceitem block ~0 ~-3 ~5 slot.container 11 melon_slice 19
replaceitem block ~0 ~-3 ~5 slot.container 12 cocoa_beans 12
replaceitem block ~0 ~-3 ~5 slot.container 13 bamboo 17
replaceitem block ~0 ~-3 ~5 slot.container 14 jungle_log 22
loot insert ~0 ~-3 ~5 loot "rsf/jungle"
loot insert ~0 ~-3 ~5 loot "chests/jungle_temple"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 arrow 17
replaceitem block ~0 ~-3 ~-5 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-3 ~-5 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-3 ~-5 slot.container 3 bone 14
replaceitem block ~0 ~-3 ~-5 slot.container 4 string 17
replaceitem block ~0 ~-3 ~-5 slot.container 5 spider_eye 12
replaceitem block ~0 ~-3 ~-5 slot.container 9 iron_sword 1
replaceitem block ~0 ~-3 ~-5 slot.container 10 torch 17
replaceitem block ~0 ~-3 ~-5 slot.container 11 melon_slice 18
replaceitem block ~0 ~-3 ~-5 slot.container 12 cocoa_beans 11
replaceitem block ~0 ~-3 ~-5 slot.container 13 bamboo 16
replaceitem block ~0 ~-3 ~-5 slot.container 14 jungle_log 21
loot insert ~0 ~-3 ~-5 loot "rsf/jungle"
loot insert ~0 ~-3 ~-5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 moss_block []
setblock ~-6 ~10 ~-7 campfire []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 moss_block []
setblock ~-6 ~10 ~6 campfire []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 moss_block []
setblock ~5 ~10 ~-7 campfire []
fill ~5 ~1 ~6 ~6 ~9 ~7 moss_block []
setblock ~5 ~10 ~6 campfire []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 moss_block []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 cobblestone_wall []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 jungle_log []
setblock ~-6 ~9 ~-7 campfire []
setblock ~-6 ~8 ~7 jungle_log []
setblock ~-6 ~9 ~7 campfire []
setblock ~6 ~8 ~-7 jungle_log []
setblock ~6 ~9 ~-7 campfire []
setblock ~6 ~8 ~7 jungle_log []
setblock ~6 ~9 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 cobblestone_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~8 ~-10 ~8 ~9 mossy_stone_bricks []
setblock ~-9 ~9 ~8 gold_block []
setblock ~-9 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 string 14
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_ingot 8
replaceitem block ~-5 ~1 ~6 slot.container 10 golden_apple 4
replaceitem block ~-5 ~1 ~6 slot.container 11 iron_sword 1
replaceitem block ~-5 ~1 ~6 slot.container 12 torch 21
replaceitem block ~-5 ~1 ~6 slot.container 13 melon_slice 22
replaceitem block ~-5 ~1 ~6 slot.container 14 cocoa_beans 8
loot insert ~-5 ~1 ~6 loot "rsf/jungle"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 17
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 3 slime_ball 6
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 11 iron_sword 1
replaceitem block ~5 ~1 ~6 slot.container 12 torch 19
replaceitem block ~5 ~1 ~6 slot.container 13 melon_slice 20
replaceitem block ~5 ~1 ~6 slot.container 14 cocoa_beans 13
loot insert ~5 ~1 ~6 loot "rsf/jungle"
loot insert ~5 ~1 ~6 loot "chests/jungle_temple"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
