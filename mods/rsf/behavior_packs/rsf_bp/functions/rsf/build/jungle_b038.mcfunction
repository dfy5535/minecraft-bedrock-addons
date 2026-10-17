# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0934/4224 | 主题内编号: b038/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·四方凯旋衣冠冢 (jungle_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 jungle_planks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 mossy_stone_bricks []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 1 bone 16
replaceitem block ~0 ~-2 ~-3 slot.container 2 string 19
replaceitem block ~0 ~-2 ~-3 slot.container 3 spider_eye 6
replaceitem block ~0 ~-2 ~-3 slot.container 4 gunpowder 9
replaceitem block ~0 ~-2 ~-3 slot.container 5 slime_ball 8
replaceitem block ~0 ~-2 ~-3 slot.container 9 iron_sword 1
replaceitem block ~0 ~-2 ~-3 slot.container 10 torch 16
replaceitem block ~0 ~-2 ~-3 slot.container 11 melon_slice 17
replaceitem block ~0 ~-2 ~-3 slot.container 12 cocoa_beans 10
replaceitem block ~0 ~-2 ~-3 slot.container 13 bamboo 15
replaceitem block ~0 ~-2 ~-3 slot.container 14 jungle_log 20
loot insert ~0 ~-2 ~-3 loot "rsf/jungle"
loot insert ~0 ~-2 ~-3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~9 ~5 mossy_cobblestone []
fill ~-4 ~1 ~-2 ~4 ~9 ~2 mossy_cobblestone []
fill ~-1 ~1 ~-4 ~1 ~8 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~8 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 mossy_stone_bricks []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 jungle_planks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 chiseled_stone_bricks []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 mossy_cobblestone []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~7 ~-8 ~5 ~8 mossy_stone_bricks []
setblock ~-7 ~6 ~7 gold_block []
setblock ~-7 ~7 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~8 ~0 lantern []
fill ~-3 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 string 14
replaceitem block ~-3 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-3 ~1 ~4 slot.container 9 bamboo 15
replaceitem block ~-3 ~1 ~4 slot.container 10 jungle_log 20
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 10
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 6
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~-3 ~1 ~4 loot "rsf/jungle"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 string 17
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 slime_ball 6
replaceitem block ~3 ~1 ~4 slot.container 9 bamboo 13
replaceitem block ~3 ~1 ~4 slot.container 10 jungle_log 18
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 8
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~3 ~1 ~4 loot "rsf/jungle"
loot insert ~3 ~1 ~4 loot "chests/jungle_temple"
summon witch ~0 ~1 ~-1
summon ocelot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
