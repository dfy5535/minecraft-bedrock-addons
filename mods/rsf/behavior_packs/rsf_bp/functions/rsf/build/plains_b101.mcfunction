# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0101/4224 | 主题内编号: b101/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·L型驻军兵营军械所 (plains_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
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
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 14
replaceitem block ~4 ~-2 ~3 slot.container 1 gunpowder 13
replaceitem block ~4 ~-2 ~3 slot.container 2 string 8
replaceitem block ~4 ~-2 ~3 slot.container 3 arrow 17
replaceitem block ~4 ~-2 ~3 slot.container 4 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 5 leather 9
replaceitem block ~4 ~-2 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 10 shield 1
replaceitem block ~4 ~-2 ~3 slot.container 11 torch 17
replaceitem block ~4 ~-2 ~3 slot.container 12 bread 10
replaceitem block ~4 ~-2 ~3 slot.container 13 cooked_beef 9
replaceitem block ~4 ~-2 ~3 slot.container 14 iron_ingot 9
loot insert ~4 ~-2 ~3 loot "rsf/plains"
loot insert ~4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~7 ~5 cobblestone []
fill ~-6 ~1 ~0 ~6 ~6 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-1 ~6 ~4 air []
fill ~-1 ~1 ~1 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 oak_fence []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 oak_log []
setblock ~-6 ~9 ~-5 torch []
setblock ~-6 ~8 ~5 oak_log []
setblock ~-6 ~9 ~5 torch []
setblock ~6 ~8 ~-5 oak_log []
setblock ~6 ~9 ~-5 torch []
setblock ~6 ~8 ~5 oak_log []
setblock ~6 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 cracked_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stone_bricks []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stone_bricks []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~8 ~0 ~-1 ~8 ~7 ~-1 oak_log []
fill ~8 ~6 ~-3 ~8 ~6 ~1 oak_fence []
fill ~8 ~4 ~-1 ~8 ~8 ~-1 oak_fence []
setblock ~8 ~8 ~-1 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 bookshelf []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 leather 12
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 bone 9
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 8
replaceitem block ~5 ~1 ~3 slot.container 9 coal 15
replaceitem block ~5 ~1 ~3 slot.container 10 oak_log 20
replaceitem block ~5 ~1 ~3 slot.container 11 apple 11
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 7
replaceitem block ~5 ~1 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~3 slot.container 14 shield 1
loot insert ~5 ~1 ~3 loot "rsf/plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 9 coal 13
replaceitem block ~-5 ~1 ~4 slot.container 10 oak_log 18
replaceitem block ~-5 ~1 ~4 slot.container 11 apple 9
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 14 shield 1
loot insert ~-5 ~1 ~4 loot "rsf/plains"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
