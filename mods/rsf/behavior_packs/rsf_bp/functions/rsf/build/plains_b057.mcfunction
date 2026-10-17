# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0057/4224 | 主题内编号: b057/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·中央石棺帝王地下陵寝 (plains_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 cobblestone [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 cobblestone [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 hay_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 2 spider_eye 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 leather 9
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 shield 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 torch 22
replaceitem block ~0 ~-3 ~-4 slot.container 12 bread 8
replaceitem block ~0 ~-3 ~-4 slot.container 13 cooked_beef 7
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_ingot 7
loot insert ~0 ~-3 ~-4 loot "rsf/plains"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 cobblestone []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 stone_bricks []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 oak_fence []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 air []
setblock ~-6 ~6 ~-5 oak_log []
setblock ~-6 ~7 ~-5 torch []
setblock ~-6 ~6 ~5 oak_log []
setblock ~-6 ~7 ~5 torch []
setblock ~6 ~6 ~-5 oak_log []
setblock ~6 ~7 ~-5 torch []
setblock ~6 ~6 ~5 oak_log []
setblock ~6 ~7 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 stone_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~8 ~0 ~-1 ~8 ~8 ~-1 oak_log []
fill ~8 ~7 ~-3 ~8 ~7 ~1 oak_fence []
fill ~8 ~5 ~-1 ~8 ~9 ~-1 oak_fence []
setblock ~8 ~9 ~-1 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 9
replaceitem block ~5 ~1 ~4 slot.container 1 gunpowder 8
replaceitem block ~5 ~1 ~4 slot.container 2 string 11
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~4 slot.container 5 leather 12
replaceitem block ~5 ~1 ~4 slot.container 9 cooked_beef 7
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 7
replaceitem block ~5 ~1 ~4 slot.container 11 coal 15
replaceitem block ~5 ~1 ~4 slot.container 12 oak_log 20
replaceitem block ~5 ~1 ~4 slot.container 13 apple 11
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~5 ~1 ~4 loot "rsf/plains"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 14
replaceitem block ~-5 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-5 ~1 ~5 slot.container 2 spider_eye 4
replaceitem block ~-5 ~1 ~5 slot.container 3 leather 7
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~5 slot.container 9 cooked_beef 12
replaceitem block ~-5 ~1 ~5 slot.container 10 iron_ingot 5
replaceitem block ~-5 ~1 ~5 slot.container 11 coal 13
replaceitem block ~-5 ~1 ~5 slot.container 12 oak_log 18
replaceitem block ~-5 ~1 ~5 slot.container 13 apple 9
replaceitem block ~-5 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~-5 ~1 ~5 loot "rsf/plains"
loot insert ~-5 ~1 ~5 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
