# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0040/4224 | 主题内编号: b040/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·崩裂远古符文石碑 (plains_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 arrow 17
replaceitem block ~3 ~-3 ~2 slot.container 1 spider_eye 6
replaceitem block ~3 ~-3 ~2 slot.container 2 leather 9
replaceitem block ~3 ~-3 ~2 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-3 ~2 slot.container 5 bone 14
replaceitem block ~3 ~-3 ~2 slot.container 9 oak_log 17
replaceitem block ~3 ~-3 ~2 slot.container 10 apple 8
replaceitem block ~3 ~-3 ~2 slot.container 11 golden_apple 4
replaceitem block ~3 ~-3 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~-3 ~2 slot.container 13 shield 1
replaceitem block ~3 ~-3 ~2 slot.container 14 torch 22
loot insert ~3 ~-3 ~2 loot "rsf/plains"
loot insert ~3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 mossy_stone_bricks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 cracked_stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 cobblestone []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 stone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 oak_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~0 ~-1 ~7 ~6 ~-1 stone_bricks []
fill ~7 ~5 ~-3 ~7 ~5 ~1 cobblestone_wall []
fill ~7 ~3 ~-1 ~7 ~7 ~-1 cobblestone_wall []
setblock ~7 ~7 ~-1 campfire []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 8
replaceitem block ~-4 ~1 ~2 slot.container 3 string 11
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 9 bread 13
replaceitem block ~-4 ~1 ~2 slot.container 10 cooked_beef 12
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 5
replaceitem block ~-4 ~1 ~2 slot.container 12 coal 13
replaceitem block ~-4 ~1 ~2 slot.container 13 oak_log 18
replaceitem block ~-4 ~1 ~2 slot.container 14 apple 9
loot insert ~-4 ~1 ~2 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
