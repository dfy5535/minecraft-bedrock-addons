# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0102/4224 | 主题内编号: b102/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双子箭塔联防碉楼 (plains_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 stone_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 stone_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 oak_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cobblestone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 stone_bricks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 lantern []
setblock ~5 ~-5 ~-2 lantern []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~-3 ~2 slot.container 1 bone 14
replaceitem block ~5 ~-3 ~2 slot.container 2 gunpowder 13
replaceitem block ~5 ~-3 ~2 slot.container 3 string 8
replaceitem block ~5 ~-3 ~2 slot.container 4 arrow 17
replaceitem block ~5 ~-3 ~2 slot.container 5 spider_eye 6
replaceitem block ~5 ~-3 ~2 slot.container 9 shield 1
replaceitem block ~5 ~-3 ~2 slot.container 10 torch 16
replaceitem block ~5 ~-3 ~2 slot.container 11 bread 9
replaceitem block ~5 ~-3 ~2 slot.container 12 cooked_beef 8
replaceitem block ~5 ~-3 ~2 slot.container 13 iron_ingot 8
replaceitem block ~5 ~-3 ~2 slot.container 14 coal 16
loot insert ~5 ~-3 ~2 loot "rsf/plains"
loot insert ~5 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~7 ~9 ~4 stone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mossy_stone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 mossy_stone_bricks []
fill ~-7 ~9 ~-4 ~7 ~9 ~4 cobblestone_wall []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 air []
setblock ~-7 ~9 ~-4 stripped_oak_log []
setblock ~-7 ~10 ~-4 lantern []
setblock ~-7 ~9 ~4 stripped_oak_log []
setblock ~-7 ~10 ~4 lantern []
setblock ~7 ~9 ~-4 stripped_oak_log []
setblock ~7 ~10 ~-4 lantern []
setblock ~7 ~9 ~4 stripped_oak_log []
setblock ~7 ~10 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 oak_log []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 oak_log []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 oak_log []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 oak_log []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~9 ~0 ~1 ~9 ~8 ~1 stripped_oak_log []
fill ~9 ~7 ~-1 ~9 ~7 ~3 cobblestone_wall []
fill ~9 ~5 ~1 ~9 ~9 ~1 cobblestone_wall []
setblock ~9 ~9 ~1 lantern []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 leather 12
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-6 ~1 ~2 slot.container 4 gunpowder 8
replaceitem block ~-6 ~1 ~2 slot.container 5 string 11
replaceitem block ~-6 ~1 ~2 slot.container 9 golden_apple 5
replaceitem block ~-6 ~1 ~2 slot.container 10 iron_pickaxe 1
replaceitem block ~-6 ~1 ~2 slot.container 11 shield 1
replaceitem block ~-6 ~1 ~2 slot.container 12 torch 16
replaceitem block ~-6 ~1 ~2 slot.container 13 bread 9
replaceitem block ~-6 ~1 ~2 slot.container 14 cooked_beef 8
loot insert ~-6 ~1 ~2 loot "rsf/plains"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
