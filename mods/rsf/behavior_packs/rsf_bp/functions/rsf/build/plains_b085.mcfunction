# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0085/4224 | 主题内编号: b085/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双子烟囱砖石窑厂 (plains_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cobblestone [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cobblestone [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 cobblestone []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~2 anvil []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 bone 14
replaceitem block ~4 ~-2 ~2 slot.container 1 gunpowder 13
replaceitem block ~4 ~-2 ~2 slot.container 2 string 8
replaceitem block ~4 ~-2 ~2 slot.container 3 arrow 17
replaceitem block ~4 ~-2 ~2 slot.container 4 spider_eye 6
replaceitem block ~4 ~-2 ~2 slot.container 5 leather 9
replaceitem block ~4 ~-2 ~2 slot.container 9 cooked_beef 6
replaceitem block ~4 ~-2 ~2 slot.container 10 iron_ingot 6
replaceitem block ~4 ~-2 ~2 slot.container 11 coal 14
replaceitem block ~4 ~-2 ~2 slot.container 12 oak_log 19
replaceitem block ~4 ~-2 ~2 slot.container 13 apple 10
replaceitem block ~4 ~-2 ~2 slot.container 14 golden_apple 6
loot insert ~4 ~-2 ~2 loot "rsf/plains"
loot insert ~4 ~-2 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~9 ~4 cobblestone []
fill ~2 ~1 ~-4 ~6 ~9 ~4 cobblestone []
fill ~-5 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~5 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 stone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cobblestone []
fill ~0 ~14 ~0 ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 stone_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~8 ~0 ~0 ~8 ~6 ~0 oak_log []
fill ~8 ~5 ~-2 ~8 ~5 ~2 oak_fence []
fill ~8 ~3 ~0 ~8 ~7 ~0 oak_fence []
setblock ~8 ~7 ~0 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~2 slot.container 1 leather 12
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 4 bone 9
replaceitem block ~5 ~1 ~2 slot.container 5 gunpowder 8
replaceitem block ~5 ~1 ~2 slot.container 9 apple 7
replaceitem block ~5 ~1 ~2 slot.container 10 golden_apple 3
replaceitem block ~5 ~1 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~2 slot.container 12 shield 1
replaceitem block ~5 ~1 ~2 slot.container 13 torch 21
replaceitem block ~5 ~1 ~2 slot.container 14 bread 14
loot insert ~5 ~1 ~2 loot "rsf/plains"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~3 slot.container 4 string 14
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~3 slot.container 9 apple 12
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 1
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 12 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 13 torch 19
replaceitem block ~-5 ~1 ~3 slot.container 14 bread 12
loot insert ~-5 ~1 ~3 loot "rsf/plains"
loot insert ~-5 ~1 ~3 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
