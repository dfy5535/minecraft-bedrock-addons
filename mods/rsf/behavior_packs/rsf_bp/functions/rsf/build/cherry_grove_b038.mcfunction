# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1830/4224 | 主题内编号: b038/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·四方凯旋衣冠冢 (cherry_grove_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cherry_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cherry_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 cherry_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 polished_deepslate []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-3 ~-2 slot.container 1 bone 14
replaceitem block ~0 ~-3 ~-2 slot.container 2 string 15
replaceitem block ~0 ~-3 ~-2 slot.container 3 gunpowder 6
replaceitem block ~0 ~-3 ~-2 slot.container 4 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-3 ~-2 slot.container 9 emerald 10
replaceitem block ~0 ~-3 ~-2 slot.container 10 amethyst_shard 6
replaceitem block ~0 ~-3 ~-2 slot.container 11 bow 1
replaceitem block ~0 ~-3 ~-2 slot.container 12 lantern 6
replaceitem block ~0 ~-3 ~-2 slot.container 13 cherry_log 19
replaceitem block ~0 ~-3 ~-2 slot.container 14 cherry_sapling 8
loot insert ~0 ~-3 ~-2 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~-2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~7 ~4 cherry_planks []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 cherry_planks []
fill ~-1 ~1 ~-3 ~1 ~6 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 cherry_fence []
setblock ~5 ~2 ~0 cherry_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 polished_deepslate []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 cherry_planks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 polished_deepslate []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 cherry_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 cherry_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 cherry_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-2 ~0 ~-8 ~-2 ~7 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~7 ~-8 cherry_log []
fill ~-3 ~7 ~-8 ~3 ~7 ~-8 cherry_slab []
fill ~-2 ~6 ~-8 ~2 ~6 ~-8 stripped_cherry_log []
setblock ~1 ~8 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 1 feather 15
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 8
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 4 string 10
replaceitem block ~-4 ~1 ~2 slot.container 5 gunpowder 9
replaceitem block ~-4 ~1 ~2 slot.container 9 cherry_log 19
replaceitem block ~-4 ~1 ~2 slot.container 10 cherry_sapling 8
replaceitem block ~-4 ~1 ~2 slot.container 11 honey_bottle 9
replaceitem block ~-4 ~1 ~2 slot.container 12 honeycomb 12
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 14 iron_ingot 7
loot insert ~-4 ~1 ~2 loot "rsf/cherry_grove"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
