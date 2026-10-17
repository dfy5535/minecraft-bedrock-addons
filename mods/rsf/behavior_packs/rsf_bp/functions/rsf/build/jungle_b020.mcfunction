# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0916/4224 | 主题内编号: b020/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·重甲防爆金库房间 (jungle_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 jungle_planks []
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
fill ~-4 ~1 ~-5 ~4 ~7 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-3 ~9 ~-4 moss_block []
setblock ~-4 ~10 ~-5 campfire []
fill ~-4 ~1 ~4 ~-3 ~9 ~5 moss_block []
setblock ~-4 ~10 ~4 campfire []
fill ~3 ~1 ~-5 ~4 ~9 ~-4 moss_block []
setblock ~3 ~10 ~-5 campfire []
fill ~3 ~1 ~4 ~4 ~9 ~5 moss_block []
setblock ~3 ~10 ~4 campfire []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 moss_block []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 cobblestone_wall []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 air []
setblock ~-4 ~8 ~-5 jungle_log []
setblock ~-4 ~9 ~-5 campfire []
setblock ~-4 ~8 ~5 jungle_log []
setblock ~-4 ~9 ~5 campfire []
setblock ~4 ~8 ~-5 jungle_log []
setblock ~4 ~9 ~-5 campfire []
setblock ~4 ~8 ~5 jungle_log []
setblock ~4 ~9 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~6 ~-2 jungle_log []
fill ~-5 ~0 ~2 ~-5 ~6 ~2 jungle_log []
fill ~5 ~0 ~-2 ~5 ~6 ~-2 jungle_log []
fill ~5 ~0 ~2 ~5 ~6 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-7 ~0 ~7 ~-8 ~7 ~8 mossy_stone_bricks []
setblock ~-7 ~8 ~7 gold_block []
setblock ~-7 ~9 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 1 slime_ball 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 10 torch 16
replaceitem block ~-3 ~1 ~4 slot.container 11 melon_slice 17
replaceitem block ~-3 ~1 ~4 slot.container 12 cocoa_beans 10
replaceitem block ~-3 ~1 ~4 slot.container 13 bamboo 15
replaceitem block ~-3 ~1 ~4 slot.container 14 jungle_log 20
loot insert ~-3 ~1 ~4 loot "rsf/jungle"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 17
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 10 torch 21
replaceitem block ~3 ~1 ~4 slot.container 11 melon_slice 22
replaceitem block ~3 ~1 ~4 slot.container 12 cocoa_beans 8
replaceitem block ~3 ~1 ~4 slot.container 13 bamboo 13
replaceitem block ~3 ~1 ~4 slot.container 14 jungle_log 18
loot insert ~3 ~1 ~4 loot "rsf/jungle"
loot insert ~3 ~1 ~4 loot "chests/jungle_temple"
summon witch ~0 ~1 ~-1
summon ocelot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
