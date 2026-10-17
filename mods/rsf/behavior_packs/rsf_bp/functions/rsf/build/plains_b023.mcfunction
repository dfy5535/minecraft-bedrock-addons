# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0023/4224 | 主题内编号: b023/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·双层露台阁楼宝室 (plains_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 oak_planks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 oak_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~4 ~5 oak_planks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-6 ~4 ~-6 ~6 ~4 ~6 cobblestone_slab []
fill ~-4 ~5 ~-4 ~4 ~8 ~4 mossy_stone_bricks []
fill ~-3 ~5 ~-3 ~3 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-6 ~6 ~8 ~6 cobblestone_slab []
fill ~-4 ~9 ~-4 ~4 ~10 ~4 mossy_stone_bricks []
fill ~-5 ~11 ~-5 ~5 ~11 ~5 stone_brick_slab []
setblock ~0 ~12 ~0 bookshelf []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~0 ~1 ~7 ~9 ~1 oak_log []
fill ~7 ~8 ~-1 ~7 ~8 ~3 oak_fence []
fill ~7 ~6 ~1 ~7 ~10 ~1 oak_fence []
setblock ~7 ~10 ~1 torch []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 bone 9
replaceitem block ~4 ~1 ~3 slot.container 3 gunpowder 8
replaceitem block ~4 ~1 ~3 slot.container 4 string 11
replaceitem block ~4 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 9 torch 18
replaceitem block ~4 ~1 ~3 slot.container 10 bread 11
replaceitem block ~4 ~1 ~3 slot.container 11 cooked_beef 10
replaceitem block ~4 ~1 ~3 slot.container 12 iron_ingot 10
replaceitem block ~4 ~1 ~3 slot.container 13 coal 18
replaceitem block ~4 ~1 ~3 slot.container 14 oak_log 16
loot insert ~4 ~1 ~3 loot "rsf/plains"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~4 slot.container 4 spider_eye 4
replaceitem block ~-4 ~1 ~4 slot.container 5 leather 7
replaceitem block ~-4 ~1 ~4 slot.container 9 torch 16
replaceitem block ~-4 ~1 ~4 slot.container 10 bread 9
replaceitem block ~-4 ~1 ~4 slot.container 11 cooked_beef 8
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 13 coal 16
replaceitem block ~-4 ~1 ~4 slot.container 14 oak_log 21
loot insert ~-4 ~1 ~4 loot "rsf/plains"
loot insert ~-4 ~1 ~4 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0
