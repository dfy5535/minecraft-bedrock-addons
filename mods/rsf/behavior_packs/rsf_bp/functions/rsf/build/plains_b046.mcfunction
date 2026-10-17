# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0046/4224 | 主题内编号: b046/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·要塞校场比武演武台 (plains_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 oak_planks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~4 slot.container 0 gunpowder 13
replaceitem block ~5 ~-3 ~4 slot.container 1 string 8
replaceitem block ~5 ~-3 ~4 slot.container 2 arrow 17
replaceitem block ~5 ~-3 ~4 slot.container 3 spider_eye 6
replaceitem block ~5 ~-3 ~4 slot.container 4 leather 9
replaceitem block ~5 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~5 ~-3 ~4 slot.container 9 iron_ingot 5
replaceitem block ~5 ~-3 ~4 slot.container 10 coal 13
replaceitem block ~5 ~-3 ~4 slot.container 11 oak_log 18
replaceitem block ~5 ~-3 ~4 slot.container 12 apple 9
replaceitem block ~5 ~-3 ~4 slot.container 13 golden_apple 5
replaceitem block ~5 ~-3 ~4 slot.container 14 iron_pickaxe 1
loot insert ~5 ~-3 ~4 loot "rsf/plains"
loot insert ~5 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 mossy_stone_bricks []
setblock ~-7 ~9 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 mossy_stone_bricks []
setblock ~-7 ~9 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 mossy_stone_bricks []
setblock ~6 ~9 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~8 ~6 mossy_stone_bricks []
setblock ~6 ~9 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 mossy_stone_bricks []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone_wall []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 stripped_oak_log []
setblock ~-7 ~8 ~-6 lantern []
setblock ~-7 ~7 ~6 stripped_oak_log []
setblock ~-7 ~8 ~6 lantern []
setblock ~7 ~7 ~-6 stripped_oak_log []
setblock ~7 ~8 ~-6 lantern []
setblock ~7 ~7 ~6 stripped_oak_log []
setblock ~7 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~9 ~0 ~0 ~9 ~7 ~0 stripped_oak_log []
fill ~9 ~6 ~-2 ~9 ~6 ~2 cobblestone_wall []
fill ~9 ~4 ~0 ~9 ~8 ~0 cobblestone_wall []
setblock ~9 ~8 ~0 lantern []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 hay_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-6 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 3 bone 9
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 8
replaceitem block ~-6 ~1 ~4 slot.container 5 string 11
replaceitem block ~-6 ~1 ~4 slot.container 9 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 10 torch 21
replaceitem block ~-6 ~1 ~4 slot.container 11 bread 14
replaceitem block ~-6 ~1 ~4 slot.container 12 cooked_beef 6
replaceitem block ~-6 ~1 ~4 slot.container 13 iron_ingot 6
replaceitem block ~-6 ~1 ~4 slot.container 14 coal 14
loot insert ~-6 ~1 ~4 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
