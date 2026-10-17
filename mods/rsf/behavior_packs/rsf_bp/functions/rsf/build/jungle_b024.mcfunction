# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0920/4224 | 主题内编号: b024/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·半地下掩体储藏室 (jungle_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 gunpowder 9
replaceitem block ~2 ~-3 ~3 slot.container 1 slime_ball 8
replaceitem block ~2 ~-3 ~3 slot.container 2 arrow 19
replaceitem block ~2 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 5 bone 16
replaceitem block ~2 ~-3 ~3 slot.container 9 iron_ingot 8
replaceitem block ~2 ~-3 ~3 slot.container 10 golden_apple 4
replaceitem block ~2 ~-3 ~3 slot.container 11 iron_sword 1
replaceitem block ~2 ~-3 ~3 slot.container 12 torch 21
replaceitem block ~2 ~-3 ~3 slot.container 13 melon_slice 22
replaceitem block ~2 ~-3 ~3 slot.container 14 cocoa_beans 8
loot insert ~2 ~-3 ~3 loot "rsf/jungle"
loot insert ~2 ~-3 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 moss_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 moss_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 moss_block []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 cobblestone_wall []
fill ~-3 ~7 ~-4 ~3 ~7 ~4 air []
setblock ~-4 ~7 ~-5 jungle_log []
setblock ~-4 ~8 ~-5 campfire []
setblock ~-4 ~7 ~5 jungle_log []
setblock ~-4 ~8 ~5 campfire []
setblock ~4 ~7 ~-5 jungle_log []
setblock ~4 ~8 ~-5 campfire []
setblock ~4 ~7 ~5 jungle_log []
setblock ~4 ~8 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_jungle_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_jungle_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_jungle_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_jungle_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-7 ~0 ~8 ~-8 ~6 ~9 mossy_stone_bricks []
setblock ~-7 ~7 ~8 gold_block []
setblock ~-7 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~4 blast_furnace []
setblock ~-2 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 2 string 14
replaceitem block ~-3 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 5 slime_ball 11
replaceitem block ~-3 ~1 ~4 slot.container 9 melon_slice 19
replaceitem block ~-3 ~1 ~4 slot.container 10 cocoa_beans 12
replaceitem block ~-3 ~1 ~4 slot.container 11 bamboo 17
replaceitem block ~-3 ~1 ~4 slot.container 12 jungle_log 22
replaceitem block ~-3 ~1 ~4 slot.container 13 gold_ingot 6
replaceitem block ~-3 ~1 ~4 slot.container 14 emerald 5
loot insert ~-3 ~1 ~4 loot "rsf/jungle"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 17
replaceitem block ~3 ~1 ~4 slot.container 1 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 3 slime_ball 6
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 melon_slice 17
replaceitem block ~3 ~1 ~4 slot.container 10 cocoa_beans 10
replaceitem block ~3 ~1 ~4 slot.container 11 bamboo 15
replaceitem block ~3 ~1 ~4 slot.container 12 jungle_log 20
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 14 emerald 10
loot insert ~3 ~1 ~4 loot "rsf/jungle"
loot insert ~3 ~1 ~4 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-3 ~0
