# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0128/4224 | 主题内编号: b128/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·U型紫禁朝堂大殿与地底金库 (plains_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 arrow 17
replaceitem block ~5 ~-4 ~4 slot.container 1 spider_eye 6
replaceitem block ~5 ~-4 ~4 slot.container 2 leather 9
replaceitem block ~5 ~-4 ~4 slot.container 3 ender_pearl 6
replaceitem block ~5 ~-4 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~-4 ~4 slot.container 5 bone 14
replaceitem block ~5 ~-4 ~4 slot.container 9 bread 9
replaceitem block ~5 ~-4 ~4 slot.container 10 cooked_beef 8
replaceitem block ~5 ~-4 ~4 slot.container 11 iron_ingot 8
replaceitem block ~5 ~-4 ~4 slot.container 12 coal 16
replaceitem block ~5 ~-4 ~4 slot.container 13 oak_log 21
replaceitem block ~5 ~-4 ~4 slot.container 14 apple 12
loot insert ~5 ~-4 ~4 loot "rsf/plains"
loot insert ~5 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 mossy_stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mossy_cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~8 ~-7 ~8 ~8 ~7 stone_brick_slab []
fill ~-6 ~9 ~-5 ~6 ~10 ~5 cobblestone []
fill ~-7 ~11 ~-6 ~7 ~11 ~6 stone_brick_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~9 ~0 ~-2 ~9 ~9 ~-2 stone_bricks []
fill ~9 ~8 ~-4 ~9 ~8 ~0 cobblestone_wall []
fill ~9 ~6 ~-2 ~9 ~10 ~-2 cobblestone_wall []
setblock ~9 ~10 ~-2 campfire []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-6 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 9
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 8
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 9 oak_log 18
replaceitem block ~-6 ~1 ~4 slot.container 10 apple 9
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 5
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-6 ~1 ~4 slot.container 13 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 14 torch 16
loot insert ~-6 ~1 ~4 loot "rsf/plains"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon iron_golem ~0 ~-4 ~0
