# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0072/4224 | 主题内编号: b072/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·L型古商会废墟暗窖 (plains_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 1 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 2 leather 9
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 14
replaceitem block ~4 ~-3 ~3 slot.container 9 bread 13
replaceitem block ~4 ~-3 ~3 slot.container 10 cooked_beef 12
replaceitem block ~4 ~-3 ~3 slot.container 11 iron_ingot 5
replaceitem block ~4 ~-3 ~3 slot.container 12 coal 13
replaceitem block ~4 ~-3 ~3 slot.container 13 oak_log 18
replaceitem block ~4 ~-3 ~3 slot.container 14 apple 9
loot insert ~4 ~-3 ~3 loot "rsf/plains"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~6 ~5 mossy_stone_bricks []
fill ~-6 ~1 ~0 ~6 ~5 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~-1 ~5 ~4 air []
fill ~-1 ~1 ~1 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 oak_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~0 ~8 ~8 ~0 stone_bricks []
fill ~8 ~7 ~-2 ~8 ~7 ~2 cobblestone_wall []
fill ~8 ~5 ~0 ~8 ~9 ~0 cobblestone_wall []
setblock ~8 ~9 ~0 campfire []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 8
replaceitem block ~-5 ~1 ~3 slot.container 3 string 11
replaceitem block ~-5 ~1 ~3 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 11 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 12 torch 21
replaceitem block ~-5 ~1 ~3 slot.container 13 bread 14
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_beef 6
loot insert ~-5 ~1 ~3 loot "rsf/plains"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
