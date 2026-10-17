# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0043/4224 | 主题内编号: b043/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·十字四门试炼擂台 (plains_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 2格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 oak_planks [] replace air
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 oak_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cobblestone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-2 ~-6 ~7 ~-1 ~6 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 oak_planks []
fill ~-7 ~1 ~-2 ~7 ~6 ~2 oak_planks []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 oak_fence []
setblock ~7 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 cobblestone []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 oak_fence []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 oak_log []
setblock ~-7 ~8 ~-6 torch []
setblock ~-7 ~7 ~6 oak_log []
setblock ~-7 ~8 ~6 torch []
setblock ~7 ~7 ~-6 oak_log []
setblock ~7 ~8 ~-6 torch []
setblock ~7 ~7 ~6 oak_log []
setblock ~7 ~8 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 9x9x6) ---
fill ~9 ~0 ~-3 ~9 ~9 ~-3 oak_log []
fill ~9 ~8 ~-5 ~9 ~8 ~-1 oak_fence []
fill ~9 ~6 ~-3 ~9 ~10 ~-3 oak_fence []
setblock ~9 ~10 ~-3 torch []
fill ~-9 ~1 ~-1 ~-9 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 3 leather 12
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 9 torch 17
replaceitem block ~6 ~1 ~4 slot.container 10 bread 10
replaceitem block ~6 ~1 ~4 slot.container 11 cooked_beef 9
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~6 ~1 ~4 slot.container 13 coal 17
replaceitem block ~6 ~1 ~4 slot.container 14 oak_log 22
loot insert ~6 ~1 ~4 loot "rsf/plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 4
replaceitem block ~-6 ~1 ~5 slot.container 1 leather 7
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 11
replaceitem block ~-6 ~1 ~5 slot.container 9 torch 22
replaceitem block ~-6 ~1 ~5 slot.container 10 bread 8
replaceitem block ~-6 ~1 ~5 slot.container 11 cooked_beef 7
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 7
replaceitem block ~-6 ~1 ~5 slot.container 13 coal 15
replaceitem block ~-6 ~1 ~5 slot.container 14 oak_log 20
loot insert ~-6 ~1 ~5 loot "rsf/plains"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
