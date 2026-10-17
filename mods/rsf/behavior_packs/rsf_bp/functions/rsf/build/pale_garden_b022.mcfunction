# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0534/4224 | 主题内编号: b022/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·廊柱书库秘藏室 (pale_garden_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 resin_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 resin_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 resin_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 pale_oak_planks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 bone 16
replaceitem block ~4 ~-3 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~4 ~-3 ~4 slot.container 2 string 10
replaceitem block ~4 ~-3 ~4 slot.container 3 gunpowder 9
replaceitem block ~4 ~-3 ~4 slot.container 4 ender_pearl 5
replaceitem block ~4 ~-3 ~4 slot.container 5 spider_eye 9
replaceitem block ~4 ~-3 ~4 slot.container 9 pale_oak_log 22
replaceitem block ~4 ~-3 ~4 slot.container 10 pale_oak_sapling 4
replaceitem block ~4 ~-3 ~4 slot.container 11 pale_moss_block 9
replaceitem block ~4 ~-3 ~4 slot.container 12 iron_ingot 10
replaceitem block ~4 ~-3 ~4 slot.container 13 diamond 5
replaceitem block ~4 ~-3 ~4 slot.container 14 golden_apple 6
loot insert ~4 ~-3 ~4 loot "rsf/pale_garden"
loot insert ~4 ~-3 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 pale_oak_planks []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 stripped_pale_oak_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 stripped_pale_oak_log []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 stripped_pale_oak_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 stripped_pale_oak_log []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 stripped_pale_oak_log []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 stripped_pale_oak_log []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 stripped_pale_oak_log []
fill ~0 ~1 ~5 ~0 ~7 ~5 stripped_pale_oak_log []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 stripped_pale_oak_log []
fill ~2 ~1 ~5 ~2 ~7 ~5 stripped_pale_oak_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 stripped_pale_oak_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 stripped_pale_oak_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 stripped_pale_oak_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 stripped_pale_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 stripped_pale_oak_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 stripped_pale_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 stripped_pale_oak_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 stripped_pale_oak_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 stripped_pale_oak_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 stripped_pale_oak_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 stripped_pale_oak_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 stripped_pale_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 pale_oak_planks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 deepslate_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 resin_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 pale_oak_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_pale_oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_pale_oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 resin_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-9 ~0 ~0 ~-9 ~7 ~0 pale_oak_log []
fill ~9 ~0 ~0 ~9 ~7 ~0 pale_oak_log []
setblock ~-9 ~8 ~0 resin_block []
setblock ~9 ~8 ~0 chiseled_resin_bricks []
setblock ~-9 ~9 ~0 soul_lantern []
setblock ~9 ~9 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 10
replaceitem block ~-5 ~1 ~3 slot.container 2 resin_clump 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 13
replaceitem block ~-5 ~1 ~3 slot.container 9 pale_oak_sapling 6
replaceitem block ~-5 ~1 ~3 slot.container 10 pale_moss_block 11
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 7
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_axe 1
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
