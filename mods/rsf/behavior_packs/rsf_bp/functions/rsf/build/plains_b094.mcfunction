# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0094/4224 | 主题内编号: b094/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·圆形圣泉祈祷亭 (plains_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 stripped_oak_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 stripped_oak_log []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 stripped_oak_log []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 stripped_oak_log []
fill ~-1 ~1 ~-4 ~-1 ~6 ~-4 stripped_oak_log []
fill ~-1 ~1 ~4 ~-1 ~6 ~4 stripped_oak_log []
fill ~1 ~1 ~-4 ~1 ~6 ~-4 stripped_oak_log []
fill ~1 ~1 ~4 ~1 ~6 ~4 stripped_oak_log []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 stripped_oak_log []
fill ~3 ~1 ~4 ~3 ~6 ~4 stripped_oak_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 stripped_oak_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 stripped_oak_log []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 stripped_oak_log []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 stripped_oak_log []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 stripped_oak_log []
fill ~5 ~1 ~0 ~5 ~6 ~0 stripped_oak_log []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 stripped_oak_log []
fill ~5 ~1 ~2 ~5 ~6 ~2 stripped_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 mossy_stone_bricks []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 stripped_oak_log []
setblock ~0 ~4 ~-6 bookshelf []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 stripped_oak_log []
setblock ~0 ~4 ~6 bookshelf []
setblock ~0 ~5 ~6 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_oak_log []
setblock ~-7 ~4 ~0 bookshelf []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_oak_log []
setblock ~7 ~4 ~0 bookshelf []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~1 ~7 ~5 ~1 stripped_oak_log []
fill ~7 ~4 ~-1 ~7 ~4 ~3 cobblestone_wall []
fill ~7 ~2 ~1 ~7 ~6 ~1 cobblestone_wall []
setblock ~7 ~6 ~1 lantern []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 hay_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 8
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 8
replaceitem block ~-4 ~1 ~2 slot.container 10 coal 16
replaceitem block ~-4 ~1 ~2 slot.container 11 oak_log 21
replaceitem block ~-4 ~1 ~2 slot.container 12 apple 12
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 1
replaceitem block ~-4 ~1 ~2 slot.container 14 iron_pickaxe 1
loot insert ~-4 ~1 ~2 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
