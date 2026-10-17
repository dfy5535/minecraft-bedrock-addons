# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0065/4224 | 主题内编号: b065/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·断柱露天古神庙废墟 (plains_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 cobblestone [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 cobblestone [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 stone_bricks []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 spider_eye 6
replaceitem block ~4 ~-2 ~4 slot.container 1 leather 9
replaceitem block ~4 ~-2 ~4 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-2 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-2 ~4 slot.container 4 bone 14
replaceitem block ~4 ~-2 ~4 slot.container 5 gunpowder 13
replaceitem block ~4 ~-2 ~4 slot.container 9 torch 21
replaceitem block ~4 ~-2 ~4 slot.container 10 bread 14
replaceitem block ~4 ~-2 ~4 slot.container 11 cooked_beef 6
replaceitem block ~4 ~-2 ~4 slot.container 12 iron_ingot 6
replaceitem block ~4 ~-2 ~4 slot.container 13 coal 14
replaceitem block ~4 ~-2 ~4 slot.container 14 oak_log 19
loot insert ~4 ~-2 ~4 loot "rsf/plains"
loot insert ~4 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 stone_bricks []
fill ~-6 ~1 ~-6 ~-6 ~5 ~-6 oak_log []
fill ~-6 ~1 ~6 ~-6 ~5 ~6 oak_log []
fill ~-4 ~1 ~-6 ~-4 ~5 ~-6 oak_log []
fill ~-4 ~1 ~6 ~-4 ~5 ~6 oak_log []
fill ~-2 ~1 ~-6 ~-2 ~5 ~-6 oak_log []
fill ~-2 ~1 ~6 ~-2 ~5 ~6 oak_log []
fill ~0 ~1 ~-6 ~0 ~5 ~-6 oak_log []
fill ~0 ~1 ~6 ~0 ~5 ~6 oak_log []
fill ~2 ~1 ~-6 ~2 ~5 ~-6 oak_log []
fill ~2 ~1 ~6 ~2 ~5 ~6 oak_log []
fill ~4 ~1 ~-6 ~4 ~5 ~-6 oak_log []
fill ~4 ~1 ~6 ~4 ~5 ~6 oak_log []
fill ~6 ~1 ~-6 ~6 ~5 ~-6 oak_log []
fill ~6 ~1 ~6 ~6 ~5 ~6 oak_log []
fill ~-6 ~1 ~-4 ~-6 ~5 ~-4 oak_log []
fill ~6 ~1 ~-4 ~6 ~5 ~-4 oak_log []
fill ~-6 ~1 ~-2 ~-6 ~5 ~-2 oak_log []
fill ~6 ~1 ~-2 ~6 ~5 ~-2 oak_log []
fill ~-6 ~1 ~0 ~-6 ~5 ~0 oak_log []
fill ~6 ~1 ~0 ~6 ~5 ~0 oak_log []
fill ~-6 ~1 ~2 ~-6 ~5 ~2 oak_log []
fill ~6 ~1 ~2 ~6 ~5 ~2 oak_log []
fill ~-6 ~1 ~4 ~-6 ~5 ~4 oak_log []
fill ~6 ~1 ~4 ~6 ~5 ~4 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 oak_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~8 ~0 ~1 ~8 ~6 ~1 oak_log []
fill ~8 ~5 ~-1 ~8 ~5 ~3 oak_fence []
fill ~8 ~3 ~1 ~8 ~7 ~1 oak_fence []
setblock ~8 ~7 ~1 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
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
replaceitem block ~5 ~1 ~4 slot.container 9 apple 8
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 12 shield 1
replaceitem block ~5 ~1 ~4 slot.container 13 torch 22
replaceitem block ~5 ~1 ~4 slot.container 14 bread 8
loot insert ~5 ~1 ~4 loot "rsf/plains"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 14
replaceitem block ~-5 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-5 ~1 ~5 slot.container 2 spider_eye 4
replaceitem block ~-5 ~1 ~5 slot.container 3 leather 7
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~5 slot.container 9 apple 6
replaceitem block ~-5 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~5 slot.container 12 shield 1
replaceitem block ~-5 ~1 ~5 slot.container 13 torch 20
replaceitem block ~-5 ~1 ~5 slot.container 14 bread 13
loot insert ~-5 ~1 ~5 loot "rsf/plains"
loot insert ~-5 ~1 ~5 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
