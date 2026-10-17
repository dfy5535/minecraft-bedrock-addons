# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0935/4224 | 主题内编号: b039/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·永恒圣火图腾方尖塔 (jungle_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 4格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 jungle_planks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 jungle_planks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 jungle_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 jungle_planks []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 spider_eye 6
replaceitem block ~1 ~-3 ~2 slot.container 1 gunpowder 9
replaceitem block ~1 ~-3 ~2 slot.container 2 slime_ball 8
replaceitem block ~1 ~-3 ~2 slot.container 3 arrow 19
replaceitem block ~1 ~-3 ~2 slot.container 4 ender_pearl 6
replaceitem block ~1 ~-3 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~1 ~-3 ~2 slot.container 9 cocoa_beans 11
replaceitem block ~1 ~-3 ~2 slot.container 10 bamboo 16
replaceitem block ~1 ~-3 ~2 slot.container 11 jungle_log 21
replaceitem block ~1 ~-3 ~2 slot.container 12 gold_ingot 12
replaceitem block ~1 ~-3 ~2 slot.container 13 emerald 4
replaceitem block ~1 ~-3 ~2 slot.container 14 iron_ingot 7
loot insert ~1 ~-3 ~2 loot "rsf/jungle"
loot insert ~1 ~-3 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 jungle_planks []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 stripped_jungle_log []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 stripped_jungle_log []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 stripped_jungle_log []
fill ~3 ~1 ~4 ~3 ~11 ~4 stripped_jungle_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 jungle_fence []
setblock ~3 ~2 ~0 jungle_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 mossy_stone_bricks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 jungle_planks []
fill ~0 ~17 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 stripped_jungle_log []
setblock ~0 ~4 ~-6 emerald_block []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 stripped_jungle_log []
setblock ~0 ~4 ~6 emerald_block []
setblock ~0 ~5 ~6 lantern []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 stripped_jungle_log []
setblock ~-5 ~4 ~0 emerald_block []
setblock ~-5 ~5 ~0 lantern []
fill ~5 ~0 ~0 ~5 ~3 ~0 stripped_jungle_log []
setblock ~5 ~4 ~0 emerald_block []
setblock ~5 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-6 ~0 ~7 ~-7 ~6 ~8 mossy_stone_bricks []
setblock ~-6 ~7 ~7 gold_block []
setblock ~-6 ~8 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~2 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 2 bone 11
replaceitem block ~2 ~1 ~3 slot.container 3 string 14
replaceitem block ~2 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~2 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 9 emerald 8
replaceitem block ~2 ~1 ~3 slot.container 10 iron_ingot 11
replaceitem block ~2 ~1 ~3 slot.container 11 golden_apple 7
replaceitem block ~2 ~1 ~3 slot.container 12 iron_sword 1
replaceitem block ~2 ~1 ~3 slot.container 13 torch 17
replaceitem block ~2 ~1 ~3 slot.container 14 melon_slice 18
loot insert ~2 ~1 ~3 loot "rsf/jungle"
summon ocelot ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
