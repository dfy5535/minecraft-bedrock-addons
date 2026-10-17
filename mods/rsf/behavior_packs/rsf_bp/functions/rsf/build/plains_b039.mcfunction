# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0039/4224 | 主题内编号: b039/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·永恒圣火图腾方尖塔 (plains_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log2
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 oak_planks []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 string 8
replaceitem block ~2 ~-2 ~1 slot.container 1 arrow 17
replaceitem block ~2 ~-2 ~1 slot.container 2 spider_eye 6
replaceitem block ~2 ~-2 ~1 slot.container 3 leather 9
replaceitem block ~2 ~-2 ~1 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-2 ~1 slot.container 5 rotten_flesh 17
replaceitem block ~2 ~-2 ~1 slot.container 9 coal 15
replaceitem block ~2 ~-2 ~1 slot.container 10 oak_log 20
replaceitem block ~2 ~-2 ~1 slot.container 11 apple 11
replaceitem block ~2 ~-2 ~1 slot.container 12 golden_apple 7
replaceitem block ~2 ~-2 ~1 slot.container 13 iron_pickaxe 1
replaceitem block ~2 ~-2 ~1 slot.container 14 shield 1
loot insert ~2 ~-2 ~1 loot "rsf/plains"
loot insert ~2 ~-2 ~1 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 oak_planks []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 oak_log []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 oak_log []
fill ~4 ~1 ~3 ~4 ~10 ~3 oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 oak_fence []
setblock ~4 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 cobblestone []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 oak_planks []
fill ~0 ~16 ~0 ~0 ~17 ~0 bookshelf []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 cobblestone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 6x5x2) ---
fill ~6 ~0 ~1 ~6 ~5 ~1 oak_log []
fill ~6 ~4 ~-1 ~6 ~4 ~3 oak_fence []
fill ~6 ~2 ~1 ~6 ~6 ~1 oak_fence []
setblock ~6 ~6 ~1 torch []
fill ~-6 ~1 ~-1 ~-6 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~1 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~1 slot.container 2 bone 9
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 8
replaceitem block ~3 ~1 ~1 slot.container 4 string 11
replaceitem block ~3 ~1 ~1 slot.container 5 arrow 20
replaceitem block ~3 ~1 ~1 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~1 ~1 slot.container 10 shield 1
replaceitem block ~3 ~1 ~1 slot.container 11 torch 22
replaceitem block ~3 ~1 ~1 slot.container 12 bread 8
replaceitem block ~3 ~1 ~1 slot.container 13 cooked_beef 7
replaceitem block ~3 ~1 ~1 slot.container 14 iron_ingot 7
loot insert ~3 ~1 ~1 loot "rsf/plains"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 11
replaceitem block ~-3 ~1 ~2 slot.container 2 string 14
replaceitem block ~-3 ~1 ~2 slot.container 3 arrow 23
replaceitem block ~-3 ~1 ~2 slot.container 4 spider_eye 4
replaceitem block ~-3 ~1 ~2 slot.container 5 leather 7
replaceitem block ~-3 ~1 ~2 slot.container 9 iron_pickaxe 1
replaceitem block ~-3 ~1 ~2 slot.container 10 shield 1
replaceitem block ~-3 ~1 ~2 slot.container 11 torch 20
replaceitem block ~-3 ~1 ~2 slot.container 12 bread 13
replaceitem block ~-3 ~1 ~2 slot.container 13 cooked_beef 12
replaceitem block ~-3 ~1 ~2 slot.container 14 iron_ingot 5
loot insert ~-3 ~1 ~2 loot "rsf/plains"
loot insert ~-3 ~1 ~2 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
