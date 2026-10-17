# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0073/4224 | 主题内编号: b073/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·八方图腾圣火石阵 (plains_totem_eight_pillars)
# 建筑构造: 主体[octagonal_keep] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 1 leather 9
replaceitem block ~4 ~-2 ~3 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 4 bone 14
replaceitem block ~4 ~-2 ~3 slot.container 5 gunpowder 13
replaceitem block ~4 ~-2 ~3 slot.container 9 coal 18
replaceitem block ~4 ~-2 ~3 slot.container 10 oak_log 16
replaceitem block ~4 ~-2 ~3 slot.container 11 apple 7
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 3
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 14 shield 1
loot insert ~4 ~-2 ~3 loot "rsf/plains"
loot insert ~4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 air []
fill ~6 ~1 ~5 ~6 ~8 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 oak_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 oak_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 oak_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 stone_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 cracked_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 oak_log []
setblock ~0 ~4 ~-7 hay_block []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 oak_log []
setblock ~0 ~4 ~7 hay_block []
setblock ~0 ~5 ~7 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 oak_log []
setblock ~-8 ~4 ~0 hay_block []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 oak_log []
setblock ~8 ~4 ~0 hay_block []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~1 ~8 ~9 ~1 oak_log []
fill ~8 ~8 ~-1 ~8 ~8 ~3 oak_fence []
fill ~8 ~6 ~1 ~8 ~10 ~1 oak_fence []
setblock ~8 ~10 ~1 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 9
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 8
replaceitem block ~5 ~1 ~3 slot.container 2 string 11
replaceitem block ~5 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 5 leather 12
replaceitem block ~5 ~1 ~3 slot.container 9 torch 19
replaceitem block ~5 ~1 ~3 slot.container 10 bread 12
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_beef 11
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 13 coal 12
replaceitem block ~5 ~1 ~3 slot.container 14 oak_log 17
loot insert ~5 ~1 ~3 loot "rsf/plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 14
replaceitem block ~-5 ~1 ~4 slot.container 1 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 3 leather 7
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 torch 17
replaceitem block ~-5 ~1 ~4 slot.container 10 bread 10
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_beef 9
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 13 coal 17
replaceitem block ~-5 ~1 ~4 slot.container 14 oak_log 22
loot insert ~-5 ~1 ~4 loot "rsf/plains"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
