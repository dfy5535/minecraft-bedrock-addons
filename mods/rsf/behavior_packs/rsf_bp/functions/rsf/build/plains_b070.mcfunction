# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0070/4224 | 主题内编号: b070/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·风化坍塌阶梯祭台 (plains_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 13
replaceitem block ~4 ~-3 ~3 slot.container 1 string 8
replaceitem block ~4 ~-3 ~3 slot.container 2 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 3 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 4 leather 9
replaceitem block ~4 ~-3 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 9 oak_log 19
replaceitem block ~4 ~-3 ~3 slot.container 10 apple 10
replaceitem block ~4 ~-3 ~3 slot.container 11 golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~-3 ~3 slot.container 13 shield 1
replaceitem block ~4 ~-3 ~3 slot.container 14 torch 17
loot insert ~4 ~-3 ~3 loot "rsf/plains"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 stone_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 mossy_stone_bricks []
fill ~-4 ~5 ~-3 ~4 ~6 ~3 oak_planks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 oak_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 oak_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~-2 ~8 ~6 ~-2 stripped_oak_log []
fill ~8 ~5 ~-4 ~8 ~5 ~0 cobblestone_wall []
fill ~8 ~3 ~-2 ~8 ~7 ~-2 cobblestone_wall []
setblock ~8 ~7 ~-2 lantern []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 8
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 bread 8
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_beef 7
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 15
replaceitem block ~-5 ~1 ~3 slot.container 13 oak_log 20
replaceitem block ~-5 ~1 ~3 slot.container 14 apple 11
loot insert ~-5 ~1 ~3 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
