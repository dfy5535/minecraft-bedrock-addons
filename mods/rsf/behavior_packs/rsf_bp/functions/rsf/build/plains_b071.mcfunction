# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0071/4224 | 主题内编号: b071/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·残破双子哨所遗迹 (plains_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log2
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 oak_planks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 oak_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 cobblestone_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 oak_planks []
fill ~2 ~1 ~-4 ~6 ~8 ~4 oak_planks []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 cobblestone []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 cobblestone_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 cracked_stone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 stone_bricks []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 stone_bricks []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~8 ~0 ~-2 ~8 ~7 ~-2 oak_log []
fill ~8 ~6 ~-4 ~8 ~6 ~0 oak_fence []
fill ~8 ~4 ~-2 ~8 ~8 ~-2 oak_fence []
setblock ~8 ~8 ~-2 torch []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 2 bone 9
replaceitem block ~5 ~1 ~2 slot.container 3 gunpowder 8
replaceitem block ~5 ~1 ~2 slot.container 4 string 11
replaceitem block ~5 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~2 slot.container 9 coal 13
replaceitem block ~5 ~1 ~2 slot.container 10 oak_log 18
replaceitem block ~5 ~1 ~2 slot.container 11 apple 9
replaceitem block ~5 ~1 ~2 slot.container 12 golden_apple 5
replaceitem block ~5 ~1 ~2 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~2 slot.container 14 shield 1
loot insert ~5 ~1 ~2 loot "rsf/plains"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~3 slot.container 2 string 14
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~3 slot.container 4 spider_eye 4
replaceitem block ~-5 ~1 ~3 slot.container 5 leather 7
replaceitem block ~-5 ~1 ~3 slot.container 9 coal 18
replaceitem block ~-5 ~1 ~3 slot.container 10 oak_log 16
replaceitem block ~-5 ~1 ~3 slot.container 11 apple 7
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 14 shield 1
loot insert ~-5 ~1 ~3 loot "rsf/plains"
loot insert ~-5 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0
