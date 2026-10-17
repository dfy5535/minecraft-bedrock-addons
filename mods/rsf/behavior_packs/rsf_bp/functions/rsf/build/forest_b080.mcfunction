# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0208/4224 | 主题内编号: b080/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·悬灯祈福图腾花坛 (forest_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-5 ~4 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 stone_brick_slab []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 oak_planks []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 stone_brick_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 oak_planks []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 oak_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 oak_log []
setblock ~0 ~4 ~-7 honeycomb_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 oak_log []
setblock ~0 ~4 ~7 honeycomb_block []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 oak_log []
setblock ~-6 ~4 ~0 honeycomb_block []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 oak_log []
setblock ~6 ~4 ~0 honeycomb_block []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~0 ~-7 ~-7 ~6 ~-7 oak_log []
fill ~7 ~0 ~-7 ~7 ~6 ~-7 oak_log []
fill ~-7 ~6 ~-7 ~7 ~6 ~-7 moss_block []
setblock ~0 ~7 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 2 string 12
replaceitem block ~-3 ~1 ~4 slot.container 3 spider_eye 8
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-3 ~1 ~4 slot.container 9 oak_log 21
replaceitem block ~-3 ~1 ~4 slot.container 10 emerald 9
replaceitem block ~-3 ~1 ~4 slot.container 11 golden_apple 1
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_axe 1
replaceitem block ~-3 ~1 ~4 slot.container 13 bow 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 7
loot insert ~-3 ~1 ~4 loot "rsf/forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 15
replaceitem block ~3 ~1 ~4 slot.container 1 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 16
replaceitem block ~3 ~1 ~4 slot.container 4 slime_ball 5
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 oak_log 19
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 12 iron_axe 1
replaceitem block ~3 ~1 ~4 slot.container 13 bow 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 5
loot insert ~3 ~1 ~4 loot "rsf/forest"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
