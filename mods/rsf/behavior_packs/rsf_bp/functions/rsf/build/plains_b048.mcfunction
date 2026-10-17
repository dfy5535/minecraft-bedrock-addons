# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0048/4224 | 主题内编号: b048/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·阶梯王座巅峰试炼台 (plains_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 cracked_stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 gunpowder 13
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 2 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 3 spider_eye 6
replaceitem block ~0 ~-3 ~-4 slot.container 4 leather 9
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 9 bread 10
replaceitem block ~0 ~-3 ~-4 slot.container 10 cooked_beef 9
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 9
replaceitem block ~0 ~-3 ~-4 slot.container 12 coal 17
replaceitem block ~0 ~-3 ~-4 slot.container 13 oak_log 22
replaceitem block ~0 ~-3 ~-4 slot.container 14 apple 6
loot insert ~0 ~-3 ~-4 loot "rsf/plains"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 mossy_stone_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 cracked_stone_bricks []
fill ~-5 ~5 ~-4 ~5 ~7 ~4 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 cobblestone []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stone_bricks []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 stone_bricks []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 campfire []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 stone_bricks []
setblock ~-9 ~4 ~0 chiseled_stone_bricks []
setblock ~-9 ~5 ~0 campfire []
fill ~9 ~0 ~0 ~9 ~3 ~0 stone_bricks []
setblock ~9 ~4 ~0 chiseled_stone_bricks []
setblock ~9 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~9 ~0 ~2 ~9 ~9 ~2 stone_bricks []
fill ~9 ~8 ~0 ~9 ~8 ~4 cobblestone_wall []
fill ~9 ~6 ~2 ~9 ~10 ~2 cobblestone_wall []
setblock ~9 ~10 ~2 campfire []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 9
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 8
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 9 oak_log 22
replaceitem block ~-6 ~1 ~4 slot.container 10 apple 6
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 2
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-6 ~1 ~4 slot.container 13 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 14 torch 20
loot insert ~-6 ~1 ~4 loot "rsf/plains"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
