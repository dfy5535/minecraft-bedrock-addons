# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0022/4224 | 主题内编号: b022/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·廊柱书库秘藏室 (plains_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
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
replaceitem block ~4 ~-3 ~3 slot.container 9 bread 12
replaceitem block ~4 ~-3 ~3 slot.container 10 cooked_beef 11
replaceitem block ~4 ~-3 ~3 slot.container 11 iron_ingot 11
replaceitem block ~4 ~-3 ~3 slot.container 12 coal 12
replaceitem block ~4 ~-3 ~3 slot.container 13 oak_log 17
replaceitem block ~4 ~-3 ~3 slot.container 14 apple 8
loot insert ~4 ~-3 ~3 loot "rsf/plains"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 mossy_stone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 stripped_oak_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 stripped_oak_log []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 stripped_oak_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 stripped_oak_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 stripped_oak_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 stripped_oak_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 stripped_oak_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 stripped_oak_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 stripped_oak_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 stripped_oak_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 stripped_oak_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 stripped_oak_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 stripped_oak_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 stripped_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 stripped_oak_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 stripped_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 stripped_oak_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 stripped_oak_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 stripped_oak_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 stripped_oak_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 stripped_oak_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 stripped_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 cracked_stone_bricks []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 cobblestone_wall []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 stone_bricks []
setblock ~-6 ~9 ~-4 campfire []
setblock ~-6 ~8 ~4 stone_bricks []
setblock ~-6 ~9 ~4 campfire []
setblock ~6 ~8 ~-4 stone_bricks []
setblock ~6 ~9 ~-4 campfire []
setblock ~6 ~8 ~4 stone_bricks []
setblock ~6 ~9 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 oak_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~8 ~0 ~0 ~8 ~8 ~0 stripped_oak_log []
fill ~8 ~7 ~-2 ~8 ~7 ~2 cobblestone_wall []
fill ~8 ~5 ~0 ~8 ~9 ~0 cobblestone_wall []
setblock ~8 ~9 ~0 lantern []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 8
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 11 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 12 torch 20
replaceitem block ~-5 ~1 ~3 slot.container 13 bread 13
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_beef 12
loot insert ~-5 ~1 ~3 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
