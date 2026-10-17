# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0076/4224 | 主题内编号: b076/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·阶梯高台图腾战阵 (plains_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 gold_block []
setblock ~-4 ~-5 ~-3 campfire []
setblock ~4 ~-5 ~3 campfire []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 arrow 17
replaceitem block ~0 ~-3 ~3 slot.container 1 spider_eye 6
replaceitem block ~0 ~-3 ~3 slot.container 2 leather 9
replaceitem block ~0 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-3 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-3 ~3 slot.container 5 bone 14
replaceitem block ~0 ~-3 ~3 slot.container 9 bread 11
replaceitem block ~0 ~-3 ~3 slot.container 10 cooked_beef 10
replaceitem block ~0 ~-3 ~3 slot.container 11 iron_ingot 10
replaceitem block ~0 ~-3 ~3 slot.container 12 coal 18
replaceitem block ~0 ~-3 ~3 slot.container 13 oak_log 16
replaceitem block ~0 ~-3 ~3 slot.container 14 apple 7
loot insert ~0 ~-3 ~3 loot "rsf/plains"
loot insert ~0 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 mossy_stone_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 cracked_stone_bricks []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 cobblestone []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 cracked_stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 mossy_stone_bricks []
fill ~0 ~14 ~0 ~0 ~15 ~0 gold_block []
setblock ~0 ~16 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~8 ~0 ~-1 ~8 ~7 ~-1 stone_bricks []
fill ~8 ~6 ~-3 ~8 ~6 ~1 cobblestone_wall []
fill ~8 ~4 ~-1 ~8 ~8 ~-1 cobblestone_wall []
setblock ~8 ~8 ~-1 campfire []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 9 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 10 torch 16
replaceitem block ~-5 ~1 ~3 slot.container 11 bread 9
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_beef 8
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 14 coal 16
loot insert ~-5 ~1 ~3 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
