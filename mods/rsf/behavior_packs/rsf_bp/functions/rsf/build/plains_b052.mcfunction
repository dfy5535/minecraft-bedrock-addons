# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0052/4224 | 主题内编号: b052/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·重檐行商旅店客栈 (plains_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 cobblestone []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~4 slot.container 1 bone 14
replaceitem block ~4 ~-3 ~4 slot.container 2 gunpowder 13
replaceitem block ~4 ~-3 ~4 slot.container 3 string 8
replaceitem block ~4 ~-3 ~4 slot.container 4 arrow 17
replaceitem block ~4 ~-3 ~4 slot.container 5 spider_eye 6
replaceitem block ~4 ~-3 ~4 slot.container 9 bread 14
replaceitem block ~4 ~-3 ~4 slot.container 10 cooked_beef 6
replaceitem block ~4 ~-3 ~4 slot.container 11 iron_ingot 6
replaceitem block ~4 ~-3 ~4 slot.container 12 coal 14
replaceitem block ~4 ~-3 ~4 slot.container 13 oak_log 19
replaceitem block ~4 ~-3 ~4 slot.container 14 apple 10
loot insert ~4 ~-3 ~4 loot "rsf/plains"
loot insert ~4 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~3 ~6 mossy_stone_bricks []
fill ~-5 ~1 ~-5 ~5 ~2 ~5 air []
fill ~-7 ~3 ~-7 ~7 ~3 ~7 stone_brick_slab []
fill ~-5 ~4 ~-5 ~5 ~7 ~5 cobblestone []
fill ~-4 ~4 ~-4 ~4 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-7 ~7 ~7 ~7 stone_brick_slab []
fill ~-5 ~8 ~-5 ~5 ~9 ~5 cobblestone []
fill ~-6 ~10 ~-6 ~6 ~10 ~6 stone_brick_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 stone_bricks []
setblock ~0 ~4 ~-6 chiseled_stone_bricks []
setblock ~0 ~5 ~-6 campfire []
fill ~0 ~0 ~6 ~0 ~3 ~6 stone_bricks []
setblock ~0 ~4 ~6 chiseled_stone_bricks []
setblock ~0 ~5 ~6 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stone_bricks []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 stone_bricks []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~8 ~0 ~0 ~8 ~8 ~0 stone_bricks []
fill ~8 ~7 ~-2 ~8 ~7 ~2 cobblestone_wall []
fill ~8 ~5 ~0 ~8 ~9 ~0 cobblestone_wall []
setblock ~8 ~9 ~0 campfire []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~5 smoker []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~4 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 9
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 11 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 12 torch 22
replaceitem block ~-5 ~1 ~4 slot.container 13 bread 8
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_beef 7
loot insert ~-5 ~1 ~4 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
