# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1914/4224 | 主题内编号: b122/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·十字穹顶宏伟圣堂与墓窟 (cherry_grove_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cherry_planks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cherry_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cherry_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cherry_planks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 polished_deepslate []
setblock ~0 ~-7 ~0 chiseled_stone_bricks []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 soul_lantern []
setblock ~2 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 arrow 17
replaceitem block ~0 ~-4 ~-4 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-4 ~-4 slot.container 2 phantom_membrane 5
replaceitem block ~0 ~-4 ~-4 slot.container 3 feather 12
replaceitem block ~0 ~-4 ~-4 slot.container 4 rotten_flesh 13
replaceitem block ~0 ~-4 ~-4 slot.container 5 bone 14
replaceitem block ~0 ~-4 ~-4 slot.container 9 bow 1
replaceitem block ~0 ~-4 ~-4 slot.container 10 lantern 4
replaceitem block ~0 ~-4 ~-4 slot.container 11 cherry_log 17
replaceitem block ~0 ~-4 ~-4 slot.container 12 cherry_sapling 6
replaceitem block ~0 ~-4 ~-4 slot.container 13 honey_bottle 7
replaceitem block ~0 ~-4 ~-4 slot.container 14 honeycomb 10
loot insert ~0 ~-4 ~-4 loot "rsf/cherry_grove"
loot insert ~0 ~-4 ~-4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 cherry_planks []
fill ~-7 ~1 ~-2 ~7 ~8 ~2 cherry_planks []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cherry_fence []
setblock ~7 ~2 ~0 cherry_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 polished_deepslate []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cherry_planks []
fill ~0 ~14 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 cherry_log []
fill ~-8 ~0 ~2 ~-8 ~7 ~2 cherry_log []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 cherry_log []
fill ~8 ~0 ~2 ~8 ~7 ~2 cherry_log []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~-2 ~0 ~-10 ~-2 ~6 ~-10 cherry_log []
fill ~2 ~0 ~-10 ~2 ~6 ~-10 cherry_log []
fill ~-3 ~6 ~-10 ~3 ~6 ~-10 cherry_slab []
fill ~-2 ~5 ~-10 ~2 ~5 ~-10 stripped_cherry_log []
setblock ~3 ~7 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~5 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 string 10
replaceitem block ~-6 ~1 ~4 slot.container 1 gunpowder 9
replaceitem block ~-6 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 3 ender_pearl 7
replaceitem block ~-6 ~1 ~4 slot.container 4 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 5 feather 15
replaceitem block ~-6 ~1 ~4 slot.container 9 honey_bottle 7
replaceitem block ~-6 ~1 ~4 slot.container 10 honeycomb 10
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 13 emerald 4
replaceitem block ~-6 ~1 ~4 slot.container 14 amethyst_shard 7
loot insert ~-6 ~1 ~4 loot "rsf/cherry_grove"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
