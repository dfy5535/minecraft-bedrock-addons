# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0956/4224 | 主题内编号: b060/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·圆形穹顶万骨祠堂 (jungle_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 campfire []
setblock ~3 ~-5 ~0 campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 string 19
replaceitem block ~0 ~-3 ~4 slot.container 1 spider_eye 6
replaceitem block ~0 ~-3 ~4 slot.container 2 gunpowder 9
replaceitem block ~0 ~-3 ~4 slot.container 3 slime_ball 8
replaceitem block ~0 ~-3 ~4 slot.container 4 arrow 19
replaceitem block ~0 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 9 melon_slice 19
replaceitem block ~0 ~-3 ~4 slot.container 10 cocoa_beans 12
replaceitem block ~0 ~-3 ~4 slot.container 11 bamboo 17
replaceitem block ~0 ~-3 ~4 slot.container 12 jungle_log 22
replaceitem block ~0 ~-3 ~4 slot.container 13 gold_ingot 6
replaceitem block ~0 ~-3 ~4 slot.container 14 emerald 5
loot insert ~0 ~-3 ~4 loot "rsf/jungle"
loot insert ~0 ~-3 ~4 loot "chests/jungle_temple"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 spider_eye 12
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 3 slime_ball 6
replaceitem block ~0 ~-3 ~-4 slot.container 4 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 9 melon_slice 18
replaceitem block ~0 ~-3 ~-4 slot.container 10 cocoa_beans 11
replaceitem block ~0 ~-3 ~-4 slot.container 11 bamboo 16
replaceitem block ~0 ~-3 ~-4 slot.container 12 jungle_log 21
replaceitem block ~0 ~-3 ~-4 slot.container 13 gold_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 14 emerald 4
loot insert ~0 ~-3 ~-4 loot "rsf/jungle"
loot insert ~0 ~-3 ~-4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 moss_block []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 jungle_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 jungle_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 jungle_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 jungle_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 jungle_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 jungle_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 jungle_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 jungle_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 jungle_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 jungle_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 jungle_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 jungle_log []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 jungle_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 jungle_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 jungle_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 jungle_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 jungle_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 jungle_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 jungle_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 jungle_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 jungle_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 jungle_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 moss_block []
fill ~-4 ~9 ~-5 ~4 ~10 ~5 glass []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 jungle_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 jungle_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 jungle_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 jungle_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-8 ~0 ~9 ~-9 ~7 ~10 mossy_stone_bricks []
setblock ~-8 ~8 ~9 gold_block []
setblock ~-8 ~9 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 slime_ball 11
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_sword 1
replaceitem block ~-4 ~1 ~5 slot.container 10 torch 21
replaceitem block ~-4 ~1 ~5 slot.container 11 melon_slice 22
replaceitem block ~-4 ~1 ~5 slot.container 12 cocoa_beans 8
replaceitem block ~-4 ~1 ~5 slot.container 13 bamboo 13
replaceitem block ~-4 ~1 ~5 slot.container 14 jungle_log 18
loot insert ~-4 ~1 ~5 loot "rsf/jungle"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 17
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 9 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 10 torch 19
replaceitem block ~4 ~1 ~5 slot.container 11 melon_slice 20
replaceitem block ~4 ~1 ~5 slot.container 12 cocoa_beans 13
replaceitem block ~4 ~1 ~5 slot.container 13 bamboo 18
replaceitem block ~4 ~1 ~5 slot.container 14 jungle_log 16
loot insert ~4 ~1 ~5 loot "rsf/jungle"
loot insert ~4 ~1 ~5 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-3 ~0
