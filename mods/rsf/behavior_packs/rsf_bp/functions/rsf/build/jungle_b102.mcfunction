# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0998/4224 | 主题内编号: b102/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双子箭塔联防碉楼 (jungle_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_cobblestone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 torch []
setblock ~4 ~-4 ~-3 torch []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~4 ~-2 ~3 slot.container 2 string 19
replaceitem block ~4 ~-2 ~3 slot.container 3 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 4 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 5 slime_ball 8
replaceitem block ~4 ~-2 ~3 slot.container 9 iron_ingot 12
replaceitem block ~4 ~-2 ~3 slot.container 10 golden_apple 1
replaceitem block ~4 ~-2 ~3 slot.container 11 iron_sword 1
replaceitem block ~4 ~-2 ~3 slot.container 12 torch 18
replaceitem block ~4 ~-2 ~3 slot.container 13 melon_slice 19
replaceitem block ~4 ~-2 ~3 slot.container 14 cocoa_beans 12
loot insert ~4 ~-2 ~3 loot "rsf/jungle"
loot insert ~4 ~-2 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~10 ~5 mossy_cobblestone []
fill ~2 ~1 ~-5 ~6 ~10 ~5 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~5 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 mossy_stone_bricks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 mossy_stone_bricks []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 cobblestone_wall []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 air []
setblock ~-6 ~10 ~-5 jungle_log []
setblock ~-6 ~11 ~-5 torch []
setblock ~-6 ~10 ~5 jungle_log []
setblock ~-6 ~11 ~5 torch []
setblock ~6 ~10 ~-5 jungle_log []
setblock ~6 ~11 ~-5 torch []
setblock ~6 ~10 ~5 jungle_log []
setblock ~6 ~11 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~8 ~-2 jungle_log []
fill ~-7 ~0 ~2 ~-7 ~8 ~2 jungle_log []
fill ~7 ~0 ~-2 ~7 ~8 ~-2 jungle_log []
fill ~7 ~0 ~2 ~7 ~8 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~0 ~8 ~-10 ~4 ~9 mossy_stone_bricks []
setblock ~-9 ~5 ~8 gold_block []
setblock ~-9 ~6 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 smoker []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 9
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 1
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 14 torch 18
loot insert ~-5 ~1 ~4 loot "rsf/jungle"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 1 bone 14
replaceitem block ~5 ~1 ~4 slot.container 2 string 17
replaceitem block ~5 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 5 slime_ball 6
replaceitem block ~5 ~1 ~4 slot.container 9 gold_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 10 emerald 7
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~5 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~5 ~1 ~4 slot.container 14 torch 16
loot insert ~5 ~1 ~4 loot "rsf/jungle"
loot insert ~5 ~1 ~4 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-2 ~0
