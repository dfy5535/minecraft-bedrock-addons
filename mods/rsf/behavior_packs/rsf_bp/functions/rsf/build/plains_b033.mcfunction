# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0033/4224 | 主题内编号: b033/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·太阳金顶高耸方尖碑 (plains_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log2
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 cobblestone [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 cobblestone [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 hay_block []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 string 8
replaceitem block ~0 ~-2 ~-1 slot.container 1 arrow 17
replaceitem block ~0 ~-2 ~-1 slot.container 2 spider_eye 6
replaceitem block ~0 ~-2 ~-1 slot.container 3 leather 9
replaceitem block ~0 ~-2 ~-1 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-2 ~-1 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-2 ~-1 slot.container 9 apple 7
replaceitem block ~0 ~-2 ~-1 slot.container 10 golden_apple 3
replaceitem block ~0 ~-2 ~-1 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-2 ~-1 slot.container 12 shield 1
replaceitem block ~0 ~-2 ~-1 slot.container 13 torch 21
replaceitem block ~0 ~-2 ~-1 slot.container 14 bread 14
loot insert ~0 ~-2 ~-1 loot "rsf/plains"
loot insert ~0 ~-2 ~-1 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 cobblestone []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 stone_bricks []
fill ~-2 ~5 ~-1 ~2 ~11 ~1 stone_bricks []
fill ~-2 ~1 ~-1 ~2 ~10 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 stone_bricks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 cobblestone []
fill ~0 ~17 ~0 ~0 ~18 ~0 chiseled_stone_bricks []
setblock ~0 ~19 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 cracked_stone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 stone_bricks []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 stone_bricks []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 6x5x6) ---
fill ~6 ~0 ~1 ~6 ~9 ~1 oak_log []
fill ~6 ~8 ~-1 ~6 ~8 ~3 oak_fence []
fill ~6 ~6 ~1 ~6 ~10 ~1 oak_fence []
setblock ~6 ~10 ~1 torch []
fill ~-6 ~1 ~-1 ~-6 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 bone 9
replaceitem block ~3 ~1 ~1 slot.container 1 gunpowder 8
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~1 slot.container 4 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 5 leather 12
replaceitem block ~3 ~1 ~1 slot.container 9 torch 21
replaceitem block ~3 ~1 ~1 slot.container 10 bread 14
replaceitem block ~3 ~1 ~1 slot.container 11 cooked_beef 6
replaceitem block ~3 ~1 ~1 slot.container 12 iron_ingot 6
replaceitem block ~3 ~1 ~1 slot.container 13 coal 14
replaceitem block ~3 ~1 ~1 slot.container 14 oak_log 19
loot insert ~3 ~1 ~1 loot "rsf/plains"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 23
replaceitem block ~-3 ~1 ~2 slot.container 2 spider_eye 4
replaceitem block ~-3 ~1 ~2 slot.container 3 leather 7
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-3 ~1 ~2 slot.container 9 torch 19
replaceitem block ~-3 ~1 ~2 slot.container 10 bread 12
replaceitem block ~-3 ~1 ~2 slot.container 11 cooked_beef 11
replaceitem block ~-3 ~1 ~2 slot.container 12 iron_ingot 11
replaceitem block ~-3 ~1 ~2 slot.container 13 coal 12
replaceitem block ~-3 ~1 ~2 slot.container 14 oak_log 17
loot insert ~-3 ~1 ~2 loot "rsf/plains"
loot insert ~-3 ~1 ~2 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
