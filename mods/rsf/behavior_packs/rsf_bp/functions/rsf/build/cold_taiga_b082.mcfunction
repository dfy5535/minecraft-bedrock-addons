# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0850/4224 | 主题内编号: b082/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·竖井井架矿工物资站 (cold_taiga_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 6格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 torch []
setblock ~3 ~-7 ~-2 torch []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 gunpowder 7
replaceitem block ~3 ~-5 ~2 slot.container 1 leather 10
replaceitem block ~3 ~-5 ~2 slot.container 2 rabbit_foot 5
replaceitem block ~3 ~-5 ~2 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-5 ~2 slot.container 4 bone 17
replaceitem block ~3 ~-5 ~2 slot.container 5 arrow 22
replaceitem block ~3 ~-5 ~2 slot.container 9 spruce_log 21
replaceitem block ~3 ~-5 ~2 slot.container 10 coal 22
replaceitem block ~3 ~-5 ~2 slot.container 11 iron_ingot 6
replaceitem block ~3 ~-5 ~2 slot.container 12 leather_boots 1
replaceitem block ~3 ~-5 ~2 slot.container 13 golden_apple 3
replaceitem block ~3 ~-5 ~2 slot.container 14 flint_and_steel 1
loot insert ~3 ~-5 ~2 loot "rsf/cold_taiga"
loot insert ~3 ~-5 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 spruce_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 spruce_planks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 snow []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 spruce_planks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 barrel []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 cobblestone []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-5 ~0 ~5 ~-6 ~16 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~17 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 1 string 11
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 3 leather 13
replaceitem block ~-4 ~1 ~2 slot.container 4 rabbit_foot 8
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 9 cooked_mutton 11
replaceitem block ~-4 ~1 ~2 slot.container 10 sweet_berries 16
replaceitem block ~-4 ~1 ~2 slot.container 11 spruce_log 21
replaceitem block ~-4 ~1 ~2 slot.container 12 coal 22
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 6
replaceitem block ~-4 ~1 ~2 slot.container 14 leather_boots 1
loot insert ~-4 ~1 ~2 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
