# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0093/4224 | 主题内编号: b093/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·U型庭院神道祈福祠 (plains_shrine_courtyard_torii)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 stone_brick_slab []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 oak_slab []
setblock ~0 ~10 ~0 chiseled_stone_bricks []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~1 ~8 ~9 ~1 oak_log []
fill ~8 ~8 ~-1 ~8 ~8 ~3 oak_fence []
fill ~8 ~6 ~1 ~8 ~10 ~1 oak_fence []
setblock ~8 ~10 ~1 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 leather 12
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 bone 9
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 8
replaceitem block ~5 ~1 ~3 slot.container 9 torch 18
replaceitem block ~5 ~1 ~3 slot.container 10 bread 11
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_beef 10
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 10
replaceitem block ~5 ~1 ~3 slot.container 13 coal 18
replaceitem block ~5 ~1 ~3 slot.container 14 oak_log 16
loot insert ~5 ~1 ~3 loot "rsf/plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 9 torch 16
replaceitem block ~-5 ~1 ~4 slot.container 10 bread 9
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_beef 8
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 13 coal 16
replaceitem block ~-5 ~1 ~4 slot.container 14 oak_log 21
loot insert ~-5 ~1 ~4 loot "rsf/plains"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
