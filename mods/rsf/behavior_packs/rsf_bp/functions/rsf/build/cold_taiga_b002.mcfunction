# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0770/4224 | 主题内编号: b002/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·十字拱门祈愿圣殿 (cold_taiga_altar_cross_sanctuary)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 snow []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 cobblestone []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 cobblestone []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 snow []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 spruce_planks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 barrel []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 snow []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 spruce_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-6 ~0 ~6 ~-7 ~15 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~16 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 3 leather 13
replaceitem block ~-5 ~1 ~3 slot.container 4 rabbit_foot 8
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_mutton 8
replaceitem block ~-5 ~1 ~3 slot.container 10 sweet_berries 13
replaceitem block ~-5 ~1 ~3 slot.container 11 spruce_log 18
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 19
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 14 leather_boots 1
loot insert ~-5 ~1 ~3 loot "rsf/cold_taiga"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon wolf ~1 ~1 ~1
summon fox ~0 ~2 ~0
