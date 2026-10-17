# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1004/4224 | 主题内编号: b108/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·十字四相元素秘法殿 (jungle_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 cracked_stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 emerald_block []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 gunpowder 9
replaceitem block ~3 ~-2 ~0 slot.container 1 slime_ball 8
replaceitem block ~3 ~-2 ~0 slot.container 2 arrow 19
replaceitem block ~3 ~-2 ~0 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-2 ~0 slot.container 5 bone 16
replaceitem block ~3 ~-2 ~0 slot.container 9 iron_sword 1
replaceitem block ~3 ~-2 ~0 slot.container 10 torch 18
replaceitem block ~3 ~-2 ~0 slot.container 11 melon_slice 19
replaceitem block ~3 ~-2 ~0 slot.container 12 cocoa_beans 12
replaceitem block ~3 ~-2 ~0 slot.container 13 bamboo 17
replaceitem block ~3 ~-2 ~0 slot.container 14 jungle_log 22
loot insert ~3 ~-2 ~0 loot "rsf/jungle"
loot insert ~3 ~-2 ~0 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 moss_block []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 cracked_stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 emerald_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 mossy_stone_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 jungle_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 jungle_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-8 ~0 ~9 ~-9 ~5 ~10 mossy_stone_bricks []
setblock ~-8 ~6 ~9 gold_block []
setblock ~-8 ~7 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 slime_ball 11
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 bamboo 15
replaceitem block ~-4 ~1 ~5 slot.container 10 jungle_log 20
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 10
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 6
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 2
loot insert ~-4 ~1 ~5 loot "rsf/jungle"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 17
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 9 bamboo 13
replaceitem block ~4 ~1 ~5 slot.container 10 jungle_log 18
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 7
loot insert ~4 ~1 ~5 loot "rsf/jungle"
loot insert ~4 ~1 ~5 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-2 ~0
