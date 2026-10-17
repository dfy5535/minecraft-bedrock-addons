# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1018/4224 | 主题内编号: b122/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·十字穹顶宏伟圣堂与墓窟 (jungle_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 10格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_cobblestone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 jungle_planks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_stone_bricks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 gunpowder 9
replaceitem block ~0 ~-3 ~-5 slot.container 1 slime_ball 8
replaceitem block ~0 ~-3 ~-5 slot.container 2 arrow 19
replaceitem block ~0 ~-3 ~-5 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-3 ~-5 slot.container 5 bone 16
replaceitem block ~0 ~-3 ~-5 slot.container 9 melon_slice 22
replaceitem block ~0 ~-3 ~-5 slot.container 10 cocoa_beans 8
replaceitem block ~0 ~-3 ~-5 slot.container 11 bamboo 13
replaceitem block ~0 ~-3 ~-5 slot.container 12 jungle_log 18
replaceitem block ~0 ~-3 ~-5 slot.container 13 gold_ingot 9
replaceitem block ~0 ~-3 ~-5 slot.container 14 emerald 8
loot insert ~0 ~-3 ~-5 loot "rsf/jungle"
loot insert ~0 ~-3 ~-5 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~10 ~7 mossy_cobblestone []
fill ~-6 ~1 ~-2 ~6 ~10 ~2 mossy_cobblestone []
fill ~-1 ~1 ~-6 ~1 ~9 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~9 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mossy_stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 mossy_cobblestone []
fill ~0 ~16 ~0 ~0 ~16 ~0 chiseled_stone_bricks []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~9 ~-2 jungle_log []
fill ~-7 ~0 ~2 ~-7 ~9 ~2 jungle_log []
fill ~7 ~0 ~-2 ~7 ~9 ~-2 jungle_log []
fill ~7 ~0 ~2 ~7 ~9 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~-9 ~0 ~9 ~-10 ~4 ~10 mossy_stone_bricks []
setblock ~-9 ~5 ~9 gold_block []
setblock ~-9 ~6 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 string 14
replaceitem block ~-5 ~1 ~6 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~6 slot.container 4 arrow 22
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 gold_ingot 9
replaceitem block ~-5 ~1 ~6 slot.container 10 emerald 8
replaceitem block ~-5 ~1 ~6 slot.container 11 iron_ingot 11
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 7
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_sword 1
replaceitem block ~-5 ~1 ~6 slot.container 14 torch 17
loot insert ~-5 ~1 ~6 loot "rsf/jungle"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 1 slime_ball 6
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 gold_ingot 7
replaceitem block ~5 ~1 ~6 slot.container 10 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 13 iron_sword 1
replaceitem block ~5 ~1 ~6 slot.container 14 torch 22
loot insert ~5 ~1 ~6 loot "rsf/jungle"
loot insert ~5 ~1 ~6 loot "chests/jungle_temple"
summon witch ~0 ~1 ~-1
summon ocelot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
