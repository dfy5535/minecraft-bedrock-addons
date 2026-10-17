# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0109/4224 | 主题内编号: b109/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·环柱能量矩阵奥术厅 (plains_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 mossy_stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 14
replaceitem block ~-3 ~-3 ~2 slot.container 2 gunpowder 13
replaceitem block ~-3 ~-3 ~2 slot.container 3 string 8
replaceitem block ~-3 ~-3 ~2 slot.container 4 arrow 17
replaceitem block ~-3 ~-3 ~2 slot.container 5 spider_eye 6
replaceitem block ~-3 ~-3 ~2 slot.container 9 shield 1
replaceitem block ~-3 ~-3 ~2 slot.container 10 torch 21
replaceitem block ~-3 ~-3 ~2 slot.container 11 bread 14
replaceitem block ~-3 ~-3 ~2 slot.container 12 cooked_beef 6
replaceitem block ~-3 ~-3 ~2 slot.container 13 iron_ingot 6
replaceitem block ~-3 ~-3 ~2 slot.container 14 coal 14
loot insert ~-3 ~-3 ~2 loot "rsf/plains"
loot insert ~-3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 stone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 oak_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 oak_log []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 oak_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 oak_log []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 oak_log []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 oak_log []
fill ~0 ~1 ~5 ~0 ~7 ~5 oak_log []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 oak_log []
fill ~2 ~1 ~5 ~2 ~7 ~5 oak_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 oak_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 oak_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 oak_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 oak_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 oak_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 oak_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 oak_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 oak_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 oak_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 oak_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 oak_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cobblestone []
fill ~0 ~14 ~0 ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 torch []

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

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~0 ~2 ~8 ~5 ~2 oak_log []
fill ~8 ~4 ~0 ~8 ~4 ~4 oak_fence []
fill ~8 ~2 ~2 ~8 ~6 ~2 oak_fence []
setblock ~8 ~6 ~2 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 hay_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 leather 12
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 bone 9
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 8
replaceitem block ~5 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~3 slot.container 10 shield 1
replaceitem block ~5 ~1 ~3 slot.container 11 torch 22
replaceitem block ~5 ~1 ~3 slot.container 12 bread 8
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_beef 7
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 7
loot insert ~5 ~1 ~3 loot "rsf/plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 10 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 11 torch 20
replaceitem block ~-5 ~1 ~4 slot.container 12 bread 13
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_beef 12
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 5
loot insert ~-5 ~1 ~4 loot "rsf/plains"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
