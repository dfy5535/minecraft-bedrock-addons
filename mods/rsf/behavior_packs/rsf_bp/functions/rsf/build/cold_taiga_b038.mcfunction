# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0806/4224 | 主题内编号: b038/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·四方凯旋衣冠冢 (cold_taiga_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 spruce_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 snow []
setblock ~0 ~-6 ~0 snow []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 bone 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 arrow 22
replaceitem block ~0 ~-3 ~-2 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 3 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 4 gunpowder 7
replaceitem block ~0 ~-3 ~-2 slot.container 5 leather 10
replaceitem block ~0 ~-3 ~-2 slot.container 9 iron_ingot 10
replaceitem block ~0 ~-3 ~-2 slot.container 10 leather_boots 1
replaceitem block ~0 ~-3 ~-2 slot.container 11 golden_apple 7
replaceitem block ~0 ~-3 ~-2 slot.container 12 flint_and_steel 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 campfire 3
replaceitem block ~0 ~-3 ~-2 slot.container 14 lantern 6
loot insert ~0 ~-3 ~-2 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~-2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~8 ~4 cobblestone []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 cobblestone []
fill ~-1 ~1 ~-3 ~1 ~7 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 snow []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 spruce_planks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 barrel []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 snow []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 spruce_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 spruce_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~-5 ~0 ~5 ~-6 ~12 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~13 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rabbit_foot 8
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 3 arrow 17
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 campfire 3
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 6
replaceitem block ~-4 ~1 ~2 slot.container 11 cooked_mutton 11
replaceitem block ~-4 ~1 ~2 slot.container 12 sweet_berries 16
replaceitem block ~-4 ~1 ~2 slot.container 13 spruce_log 21
replaceitem block ~-4 ~1 ~2 slot.container 14 coal 22
loot insert ~-4 ~1 ~2 loot "rsf/cold_taiga"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon wolf ~1 ~1 ~1
summon fox ~0 ~-3 ~0
