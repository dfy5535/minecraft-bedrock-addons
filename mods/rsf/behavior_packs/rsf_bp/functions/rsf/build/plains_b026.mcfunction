# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0026/4224 | 主题内编号: b026/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·尖顶信标引航高塔 (plains_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log2
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 stone_bricks [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 stone_bricks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 oak_planks []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 leather 9
replaceitem block ~2 ~-3 ~1 slot.container 1 ender_pearl 6
replaceitem block ~2 ~-3 ~1 slot.container 2 rotten_flesh 17
replaceitem block ~2 ~-3 ~1 slot.container 3 bone 14
replaceitem block ~2 ~-3 ~1 slot.container 4 gunpowder 13
replaceitem block ~2 ~-3 ~1 slot.container 5 string 8
replaceitem block ~2 ~-3 ~1 slot.container 9 iron_ingot 6
replaceitem block ~2 ~-3 ~1 slot.container 10 coal 14
replaceitem block ~2 ~-3 ~1 slot.container 11 oak_log 19
replaceitem block ~2 ~-3 ~1 slot.container 12 apple 10
replaceitem block ~2 ~-3 ~1 slot.container 13 golden_apple 6
replaceitem block ~2 ~-3 ~1 slot.container 14 iron_pickaxe 1
loot insert ~2 ~-3 ~1 loot "rsf/plains"
loot insert ~2 ~-3 ~1 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~12 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~12 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~12 ~3 air []
fill ~4 ~1 ~3 ~4 ~12 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~11 ~-2 stripped_oak_log []
fill ~3 ~1 ~-2 ~3 ~11 ~-2 stripped_oak_log []
fill ~-3 ~1 ~2 ~-3 ~11 ~2 stripped_oak_log []
fill ~3 ~1 ~2 ~3 ~11 ~2 stripped_oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 mossy_stone_bricks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 stone_bricks []
fill ~0 ~17 ~0 ~0 ~18 ~0 hay_block []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 6x4x4) ---
fill ~6 ~0 ~0 ~6 ~7 ~0 stripped_oak_log []
fill ~6 ~6 ~-2 ~6 ~6 ~2 cobblestone_wall []
fill ~6 ~4 ~0 ~6 ~8 ~0 cobblestone_wall []
setblock ~6 ~8 ~0 lantern []
fill ~-6 ~1 ~-1 ~-6 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~10 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 hay_block []
setblock ~0 ~1 ~0 bookshelf []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 gunpowder 8
replaceitem block ~-3 ~1 ~1 slot.container 1 string 11
replaceitem block ~-3 ~1 ~1 slot.container 2 arrow 20
replaceitem block ~-3 ~1 ~1 slot.container 3 spider_eye 9
replaceitem block ~-3 ~1 ~1 slot.container 4 leather 12
replaceitem block ~-3 ~1 ~1 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~1 slot.container 9 shield 1
replaceitem block ~-3 ~1 ~1 slot.container 10 torch 22
replaceitem block ~-3 ~1 ~1 slot.container 11 bread 8
replaceitem block ~-3 ~1 ~1 slot.container 12 cooked_beef 7
replaceitem block ~-3 ~1 ~1 slot.container 13 iron_ingot 7
replaceitem block ~-3 ~1 ~1 slot.container 14 coal 15
loot insert ~-3 ~1 ~1 loot "rsf/plains"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0
