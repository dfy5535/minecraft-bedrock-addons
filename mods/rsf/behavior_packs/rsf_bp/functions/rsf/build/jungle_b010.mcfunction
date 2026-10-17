# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0906/4224 | 主题内编号: b010/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·十字交叉深层地牢 (jungle_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_cobblestone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 torch []
setblock ~4 ~-6 ~0 torch []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 string 19
replaceitem block ~0 ~-4 ~5 slot.container 3 spider_eye 6
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 5 slime_ball 8
replaceitem block ~0 ~-4 ~5 slot.container 9 melon_slice 18
replaceitem block ~0 ~-4 ~5 slot.container 10 cocoa_beans 11
replaceitem block ~0 ~-4 ~5 slot.container 11 bamboo 16
replaceitem block ~0 ~-4 ~5 slot.container 12 jungle_log 21
replaceitem block ~0 ~-4 ~5 slot.container 13 gold_ingot 12
replaceitem block ~0 ~-4 ~5 slot.container 14 emerald 4
loot insert ~0 ~-4 ~5 loot "rsf/jungle"
loot insert ~0 ~-4 ~5 loot "chests/jungle_temple"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 string 17
replaceitem block ~0 ~-4 ~-5 slot.container 3 spider_eye 12
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 5 slime_ball 6
replaceitem block ~0 ~-4 ~-5 slot.container 9 melon_slice 17
replaceitem block ~0 ~-4 ~-5 slot.container 10 cocoa_beans 10
replaceitem block ~0 ~-4 ~-5 slot.container 11 bamboo 15
replaceitem block ~0 ~-4 ~-5 slot.container 12 jungle_log 20
replaceitem block ~0 ~-4 ~-5 slot.container 13 gold_ingot 11
replaceitem block ~0 ~-4 ~-5 slot.container 14 emerald 10
loot insert ~0 ~-4 ~-5 loot "rsf/jungle"
loot insert ~0 ~-4 ~-5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~6 ~7 mossy_cobblestone []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 mossy_cobblestone []
fill ~-1 ~1 ~-6 ~1 ~5 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 jungle_log []
setblock ~-8 ~6 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 jungle_log []
setblock ~-8 ~6 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 jungle_log []
setblock ~8 ~6 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~5 ~9 jungle_log []
setblock ~8 ~6 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~8 ~-10 ~7 ~9 mossy_stone_bricks []
setblock ~-9 ~8 ~8 gold_block []
setblock ~-9 ~9 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 string 14
replaceitem block ~-5 ~1 ~6 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~6 slot.container 4 arrow 22
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_sword 1
replaceitem block ~-5 ~1 ~6 slot.container 10 torch 20
replaceitem block ~-5 ~1 ~6 slot.container 11 melon_slice 21
replaceitem block ~-5 ~1 ~6 slot.container 12 cocoa_beans 14
replaceitem block ~-5 ~1 ~6 slot.container 13 bamboo 12
replaceitem block ~-5 ~1 ~6 slot.container 14 jungle_log 17
loot insert ~-5 ~1 ~6 loot "rsf/jungle"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 1 slime_ball 6
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 iron_sword 1
replaceitem block ~5 ~1 ~6 slot.container 10 torch 18
replaceitem block ~5 ~1 ~6 slot.container 11 melon_slice 19
replaceitem block ~5 ~1 ~6 slot.container 12 cocoa_beans 12
replaceitem block ~5 ~1 ~6 slot.container 13 bamboo 17
replaceitem block ~5 ~1 ~6 slot.container 14 jungle_log 22
loot insert ~5 ~1 ~6 loot "rsf/jungle"
loot insert ~5 ~1 ~6 loot "chests/jungle_temple"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
