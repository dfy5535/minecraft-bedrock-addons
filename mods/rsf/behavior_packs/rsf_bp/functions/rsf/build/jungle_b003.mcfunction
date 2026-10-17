# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0899/4224 | 主题内编号: b003/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·环柱巨石方尖祭坛 (jungle_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 jungle_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 jungle_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 jungle_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_stone_bricks []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 slime_ball 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 19
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 19
replaceitem block ~0 ~-3 ~-4 slot.container 9 jungle_log 22
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 6
replaceitem block ~0 ~-3 ~-4 slot.container 11 emerald 5
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_ingot 8
replaceitem block ~0 ~-3 ~-4 slot.container 13 golden_apple 4
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_sword 1
loot insert ~0 ~-3 ~-4 loot "rsf/jungle"
loot insert ~0 ~-3 ~-4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 mossy_stone_bricks []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 stripped_jungle_log []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 stripped_jungle_log []
fill ~-3 ~1 ~-6 ~-3 ~9 ~-6 stripped_jungle_log []
fill ~-3 ~1 ~6 ~-3 ~9 ~6 stripped_jungle_log []
fill ~-1 ~1 ~-6 ~-1 ~9 ~-6 stripped_jungle_log []
fill ~-1 ~1 ~6 ~-1 ~9 ~6 stripped_jungle_log []
fill ~1 ~1 ~-6 ~1 ~9 ~-6 stripped_jungle_log []
fill ~1 ~1 ~6 ~1 ~9 ~6 stripped_jungle_log []
fill ~3 ~1 ~-6 ~3 ~9 ~-6 stripped_jungle_log []
fill ~3 ~1 ~6 ~3 ~9 ~6 stripped_jungle_log []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 stripped_jungle_log []
fill ~5 ~1 ~6 ~5 ~9 ~6 stripped_jungle_log []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 stripped_jungle_log []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 stripped_jungle_log []
fill ~-5 ~1 ~-2 ~-5 ~9 ~-2 stripped_jungle_log []
fill ~5 ~1 ~-2 ~5 ~9 ~-2 stripped_jungle_log []
fill ~-5 ~1 ~0 ~-5 ~9 ~0 stripped_jungle_log []
fill ~5 ~1 ~0 ~5 ~9 ~0 stripped_jungle_log []
fill ~-5 ~1 ~2 ~-5 ~9 ~2 stripped_jungle_log []
fill ~5 ~1 ~2 ~5 ~9 ~2 stripped_jungle_log []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 stripped_jungle_log []
fill ~5 ~1 ~4 ~5 ~9 ~4 stripped_jungle_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mossy_stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 jungle_planks []
fill ~0 ~16 ~0 ~0 ~16 ~0 gold_block []
setblock ~0 ~17 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-8 ~0 ~9 ~-9 ~5 ~10 mossy_stone_bricks []
setblock ~-8 ~6 ~9 gold_block []
setblock ~-8 ~7 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 10 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 11 torch 21
replaceitem block ~4 ~1 ~5 slot.container 12 melon_slice 22
replaceitem block ~4 ~1 ~5 slot.container 13 cocoa_beans 8
replaceitem block ~4 ~1 ~5 slot.container 14 bamboo 13
loot insert ~4 ~1 ~5 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
