# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1132/4224 | 主题内编号: b108/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·十字四相元素秘法殿 (bamboo_jungle_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 jungle_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 jungle_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 bamboo_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 bamboo_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~0 slot.container 1 slime_ball 8
replaceitem block ~4 ~-3 ~0 slot.container 2 arrow 19
replaceitem block ~4 ~-3 ~0 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~0 slot.container 4 string 17
replaceitem block ~4 ~-3 ~0 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~-3 ~0 slot.container 9 melon_slice 15
replaceitem block ~4 ~-3 ~0 slot.container 10 cooked_chicken 12
replaceitem block ~4 ~-3 ~0 slot.container 11 iron_ingot 11
replaceitem block ~4 ~-3 ~0 slot.container 12 emerald 10
replaceitem block ~4 ~-3 ~0 slot.container 13 gold_ingot 4
replaceitem block ~4 ~-3 ~0 slot.container 14 golden_apple 2
loot insert ~4 ~-3 ~0 loot "rsf/bamboo_jungle"
loot insert ~4 ~-3 ~0 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 jungle_planks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 jungle_planks []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 bamboo_fence []
setblock ~6 ~2 ~0 bamboo_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 bamboo_planks []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 bamboo_planks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gold_block []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 bamboo_block []
setblock ~0 ~4 ~-7 chiseled_stone_bricks []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 bamboo_block []
setblock ~0 ~4 ~7 chiseled_stone_bricks []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 bamboo_block []
setblock ~-8 ~4 ~0 chiseled_stone_bricks []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 bamboo_block []
setblock ~8 ~4 ~0 chiseled_stone_bricks []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~1 ~-2 ~7 ~6 ~2 scaffolding []
fill ~6 ~6 ~-2 ~8 ~6 ~2 bamboo_mosaic_slab []
setblock ~7 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 22
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 4 string 12
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 9 gold_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 11 bow 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 13 bamboo 34
replaceitem block ~-5 ~1 ~3 slot.container 14 scaffolding 19
loot insert ~-5 ~1 ~3 loot "rsf/bamboo_jungle"
summon panda ~0 ~1 ~-1
summon parrot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
