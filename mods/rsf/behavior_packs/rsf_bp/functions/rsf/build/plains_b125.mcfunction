# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0125/4224 | 主题内编号: b125/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·巨型阶梯金字塔神王殿 (plains_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 cobblestone []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 bone 14
replaceitem block ~4 ~-3 ~4 slot.container 1 gunpowder 13
replaceitem block ~4 ~-3 ~4 slot.container 2 string 8
replaceitem block ~4 ~-3 ~4 slot.container 3 arrow 17
replaceitem block ~4 ~-3 ~4 slot.container 4 spider_eye 6
replaceitem block ~4 ~-3 ~4 slot.container 5 leather 9
replaceitem block ~4 ~-3 ~4 slot.container 9 apple 11
replaceitem block ~4 ~-3 ~4 slot.container 10 golden_apple 7
replaceitem block ~4 ~-3 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~-3 ~4 slot.container 12 shield 1
replaceitem block ~4 ~-3 ~4 slot.container 13 torch 18
replaceitem block ~4 ~-3 ~4 slot.container 14 bread 11
loot insert ~4 ~-3 ~4 loot "rsf/plains"
loot insert ~4 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cobblestone []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 stone_bricks []
fill ~-5 ~5 ~-4 ~5 ~9 ~4 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~10 ~-6 ~7 ~10 ~6 stone_bricks []
fill ~-6 ~11 ~-5 ~6 ~11 ~5 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 chiseled_stone_bricks []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 oak_log []
setblock ~0 ~4 ~-8 hay_block []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 oak_log []
setblock ~0 ~4 ~8 hay_block []
setblock ~0 ~5 ~8 torch []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 oak_log []
setblock ~-9 ~4 ~0 hay_block []
setblock ~-9 ~5 ~0 torch []
fill ~9 ~0 ~0 ~9 ~3 ~0 oak_log []
setblock ~9 ~4 ~0 hay_block []
setblock ~9 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~9 ~0 ~1 ~9 ~6 ~1 oak_log []
fill ~9 ~5 ~-1 ~9 ~5 ~3 oak_fence []
fill ~9 ~3 ~1 ~9 ~7 ~1 oak_fence []
setblock ~9 ~7 ~1 torch []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 1 leather 12
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 4 bone 9
replaceitem block ~6 ~1 ~4 slot.container 5 gunpowder 8
replaceitem block ~6 ~1 ~4 slot.container 9 apple 12
replaceitem block ~6 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~6 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~6 ~1 ~4 slot.container 12 shield 1
replaceitem block ~6 ~1 ~4 slot.container 13 torch 19
replaceitem block ~6 ~1 ~4 slot.container 14 bread 12
loot insert ~6 ~1 ~4 loot "rsf/plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 2 bone 12
replaceitem block ~-6 ~1 ~5 slot.container 3 gunpowder 11
replaceitem block ~-6 ~1 ~5 slot.container 4 string 14
replaceitem block ~-6 ~1 ~5 slot.container 5 arrow 23
replaceitem block ~-6 ~1 ~5 slot.container 9 apple 10
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_apple 6
replaceitem block ~-6 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~-6 ~1 ~5 slot.container 12 shield 1
replaceitem block ~-6 ~1 ~5 slot.container 13 torch 17
replaceitem block ~-6 ~1 ~5 slot.container 14 bread 10
loot insert ~-6 ~1 ~5 loot "rsf/plains"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
