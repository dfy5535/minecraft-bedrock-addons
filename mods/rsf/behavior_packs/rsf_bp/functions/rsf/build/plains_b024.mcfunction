# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0024/4224 | 主题内编号: b024/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·半地下掩体储藏室 (plains_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 5格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 mossy_stone_bricks []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 arrow 17
replaceitem block ~3 ~-4 ~2 slot.container 1 spider_eye 6
replaceitem block ~3 ~-4 ~2 slot.container 2 leather 9
replaceitem block ~3 ~-4 ~2 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-4 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-4 ~2 slot.container 5 bone 14
replaceitem block ~3 ~-4 ~2 slot.container 9 shield 1
replaceitem block ~3 ~-4 ~2 slot.container 10 torch 19
replaceitem block ~3 ~-4 ~2 slot.container 11 bread 12
replaceitem block ~3 ~-4 ~2 slot.container 12 cooked_beef 11
replaceitem block ~3 ~-4 ~2 slot.container 13 iron_ingot 11
replaceitem block ~3 ~-4 ~2 slot.container 14 coal 12
loot insert ~3 ~-4 ~2 loot "rsf/plains"
loot insert ~3 ~-4 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 cracked_stone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 cracked_stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-4 ~-5 ~7 ~-4 oak_log []
setblock ~-5 ~8 ~-4 torch []
fill ~-5 ~5 ~4 ~-5 ~7 ~4 oak_log []
setblock ~-5 ~8 ~4 torch []
fill ~5 ~5 ~-4 ~5 ~7 ~-4 oak_log []
setblock ~5 ~8 ~-4 torch []
fill ~5 ~5 ~4 ~5 ~7 ~4 oak_log []
setblock ~5 ~8 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cobblestone_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~7 ~0 ~-1 ~7 ~5 ~-1 stone_bricks []
fill ~7 ~4 ~-3 ~7 ~4 ~1 cobblestone_wall []
fill ~7 ~2 ~-1 ~7 ~6 ~-1 cobblestone_wall []
setblock ~7 ~6 ~-1 campfire []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~3 blast_furnace []
setblock ~-3 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 8
replaceitem block ~-4 ~1 ~2 slot.container 3 string 11
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 8
replaceitem block ~-4 ~1 ~2 slot.container 10 coal 16
replaceitem block ~-4 ~1 ~2 slot.container 11 oak_log 21
replaceitem block ~-4 ~1 ~2 slot.container 12 apple 12
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 1
replaceitem block ~-4 ~1 ~2 slot.container 14 iron_pickaxe 1
loot insert ~-4 ~1 ~2 loot "rsf/plains"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
