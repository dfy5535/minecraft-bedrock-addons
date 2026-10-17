# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1016/4224 | 主题内编号: b120/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·引水渠跨桥水培温室 (jungle_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 moss_block []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~3 slot.container 0 string 19
replaceitem block ~-3 ~-2 ~3 slot.container 1 spider_eye 6
replaceitem block ~-3 ~-2 ~3 slot.container 2 gunpowder 9
replaceitem block ~-3 ~-2 ~3 slot.container 3 slime_ball 8
replaceitem block ~-3 ~-2 ~3 slot.container 4 arrow 19
replaceitem block ~-3 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~-3 ~-2 ~3 slot.container 9 gold_ingot 8
replaceitem block ~-3 ~-2 ~3 slot.container 10 emerald 7
replaceitem block ~-3 ~-2 ~3 slot.container 11 iron_ingot 10
replaceitem block ~-3 ~-2 ~3 slot.container 12 golden_apple 6
replaceitem block ~-3 ~-2 ~3 slot.container 13 iron_sword 1
replaceitem block ~-3 ~-2 ~3 slot.container 14 torch 16
loot insert ~-3 ~-2 ~3 loot "rsf/jungle"
loot insert ~-3 ~-2 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 moss_block []
fill ~-4 ~8 ~-4 ~4 ~9 ~4 glass []
fill ~-3 ~8 ~-3 ~3 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 moss_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~8 ~-9 ~7 ~9 mossy_stone_bricks []
setblock ~-8 ~8 ~8 gold_block []
setblock ~-8 ~9 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 5 slime_ball 11
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~-4 ~1 ~4 slot.container 10 torch 18
replaceitem block ~-4 ~1 ~4 slot.container 11 melon_slice 19
replaceitem block ~-4 ~1 ~4 slot.container 12 cocoa_beans 12
replaceitem block ~-4 ~1 ~4 slot.container 13 bamboo 17
replaceitem block ~-4 ~1 ~4 slot.container 14 jungle_log 22
loot insert ~-4 ~1 ~4 loot "rsf/jungle"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 17
replaceitem block ~4 ~1 ~4 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~4 slot.container 3 slime_ball 6
replaceitem block ~4 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~4 ~1 ~4 slot.container 10 torch 16
replaceitem block ~4 ~1 ~4 slot.container 11 melon_slice 17
replaceitem block ~4 ~1 ~4 slot.container 12 cocoa_beans 10
replaceitem block ~4 ~1 ~4 slot.container 13 bamboo 15
replaceitem block ~4 ~1 ~4 slot.container 14 jungle_log 20
loot insert ~4 ~1 ~4 loot "rsf/jungle"
loot insert ~4 ~1 ~4 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-2 ~0
