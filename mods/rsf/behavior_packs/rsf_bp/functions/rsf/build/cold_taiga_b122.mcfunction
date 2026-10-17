# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0890/4224 | 主题内编号: b122/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·十字穹顶宏伟圣堂与墓窟 (cold_taiga_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 snow []
setblock ~0 ~-7 ~0 snow []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 gunpowder 7
replaceitem block ~0 ~-4 ~-4 slot.container 1 leather 10
replaceitem block ~0 ~-4 ~-4 slot.container 2 rabbit_foot 5
replaceitem block ~0 ~-4 ~-4 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-4 ~-4 slot.container 4 bone 17
replaceitem block ~0 ~-4 ~-4 slot.container 5 arrow 22
replaceitem block ~0 ~-4 ~-4 slot.container 9 golden_apple 5
replaceitem block ~0 ~-4 ~-4 slot.container 10 flint_and_steel 1
replaceitem block ~0 ~-4 ~-4 slot.container 11 campfire 8
replaceitem block ~0 ~-4 ~-4 slot.container 12 lantern 4
replaceitem block ~0 ~-4 ~-4 slot.container 13 cooked_mutton 9
replaceitem block ~0 ~-4 ~-4 slot.container 14 sweet_berries 14
loot insert ~0 ~-4 ~-4 loot "rsf/cold_taiga"
loot insert ~0 ~-4 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~9 ~6 cobblestone []
fill ~-7 ~1 ~-2 ~7 ~9 ~2 cobblestone []
fill ~-1 ~1 ~-5 ~1 ~8 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~8 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 snow []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cobblestone []
fill ~0 ~15 ~0 ~0 ~18 ~0 barrel []
setblock ~0 ~19 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~8 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~8 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~8 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~8 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-7 ~0 ~7 ~-8 ~17 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~18 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 string 11
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-6 ~1 ~4 slot.container 3 leather 13
replaceitem block ~-6 ~1 ~4 slot.container 4 rabbit_foot 8
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 cooked_mutton 9
replaceitem block ~-6 ~1 ~4 slot.container 10 sweet_berries 14
replaceitem block ~-6 ~1 ~4 slot.container 11 spruce_log 19
replaceitem block ~-6 ~1 ~4 slot.container 12 coal 20
replaceitem block ~-6 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~-6 ~1 ~4 slot.container 14 leather_boots 1
loot insert ~-6 ~1 ~4 loot "rsf/cold_taiga"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon wolf ~1 ~1 ~1
summon fox ~0 ~-4 ~0
