# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0013/4224 | 主题内编号: b013/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·地底熔炉苦工地牢 (plains_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 cobblestone [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 cobblestone [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 cobblestone []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 cracked_stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 gunpowder 13
replaceitem block ~0 ~-3 ~-2 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 2 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 3 spider_eye 6
replaceitem block ~0 ~-3 ~-2 slot.container 4 leather 9
replaceitem block ~0 ~-3 ~-2 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 9 iron_ingot 5
replaceitem block ~0 ~-3 ~-2 slot.container 10 coal 13
replaceitem block ~0 ~-3 ~-2 slot.container 11 oak_log 18
replaceitem block ~0 ~-3 ~-2 slot.container 12 apple 9
replaceitem block ~0 ~-3 ~-2 slot.container 13 golden_apple 5
replaceitem block ~0 ~-3 ~-2 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-3 ~-2 loot "rsf/plains"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~6 ~6 cobblestone []
fill ~-5 ~1 ~-5 ~5 ~5 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~6 ~-6 oak_log []
fill ~-6 ~1 ~6 ~-6 ~6 ~6 oak_log []
fill ~6 ~1 ~-6 ~6 ~6 ~-6 oak_log []
fill ~6 ~1 ~6 ~6 ~6 ~6 oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 oak_fence []
setblock ~6 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 stone_bricks []
fill ~-6 ~7 ~-6 ~6 ~7 ~6 oak_fence []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 air []
setblock ~-6 ~7 ~-6 oak_log []
setblock ~-6 ~8 ~-6 torch []
setblock ~-6 ~7 ~6 oak_log []
setblock ~-6 ~8 ~6 torch []
setblock ~6 ~7 ~-6 oak_log []
setblock ~6 ~8 ~-6 torch []
setblock ~6 ~7 ~6 oak_log []
setblock ~6 ~8 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~8 ~0 ~-3 ~8 ~9 ~-3 oak_log []
fill ~8 ~8 ~-5 ~8 ~8 ~-1 oak_fence []
fill ~8 ~6 ~-3 ~8 ~10 ~-3 oak_fence []
setblock ~8 ~10 ~-3 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~4 slot.container 1 leather 12
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 4 bone 9
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 8
replaceitem block ~5 ~1 ~4 slot.container 9 torch 22
replaceitem block ~5 ~1 ~4 slot.container 10 bread 8
replaceitem block ~5 ~1 ~4 slot.container 11 cooked_beef 7
replaceitem block ~5 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~5 ~1 ~4 slot.container 13 coal 15
replaceitem block ~5 ~1 ~4 slot.container 14 oak_log 20
loot insert ~5 ~1 ~4 loot "rsf/plains"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~5 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~5 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~5 slot.container 4 string 14
replaceitem block ~-5 ~1 ~5 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~5 slot.container 9 torch 20
replaceitem block ~-5 ~1 ~5 slot.container 10 bread 13
replaceitem block ~-5 ~1 ~5 slot.container 11 cooked_beef 12
replaceitem block ~-5 ~1 ~5 slot.container 12 iron_ingot 5
replaceitem block ~-5 ~1 ~5 slot.container 13 coal 13
replaceitem block ~-5 ~1 ~5 slot.container 14 oak_log 18
loot insert ~-5 ~1 ~5 loot "rsf/plains"
loot insert ~-5 ~1 ~5 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
