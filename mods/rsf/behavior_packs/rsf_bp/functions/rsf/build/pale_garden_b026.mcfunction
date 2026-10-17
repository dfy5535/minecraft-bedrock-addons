# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0538/4224 | 主题内编号: b026/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·尖顶信标引航高塔 (pale_garden_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x9 | 地上高度 12格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~16 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~16 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~16 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~16 ~5 air [] replace log2
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 resin_bricks [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 resin_bricks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 resin_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 deepslate_bricks []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 spider_eye 9
replaceitem block ~2 ~-3 ~1 slot.container 1 phantom_membrane 7
replaceitem block ~2 ~-3 ~1 slot.container 2 resin_clump 17
replaceitem block ~2 ~-3 ~1 slot.container 3 bone 16
replaceitem block ~2 ~-3 ~1 slot.container 4 rotten_flesh 17
replaceitem block ~2 ~-3 ~1 slot.container 5 string 10
replaceitem block ~2 ~-3 ~1 slot.container 9 shield 1
replaceitem block ~2 ~-3 ~1 slot.container 10 soul_lantern 7
replaceitem block ~2 ~-3 ~1 slot.container 11 resin_brick 16
replaceitem block ~2 ~-3 ~1 slot.container 12 pale_oak_log 21
replaceitem block ~2 ~-3 ~1 slot.container 13 pale_oak_sapling 10
replaceitem block ~2 ~-3 ~1 slot.container 14 pale_moss_block 8
loot insert ~2 ~-3 ~1 loot "rsf/pale_garden"
loot insert ~2 ~-3 ~1 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~12 ~3 resin_bricks []
fill ~-3 ~1 ~-2 ~3 ~11 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~13 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~13 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~13 ~3 air []
fill ~4 ~1 ~3 ~4 ~13 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~12 ~-2 stripped_pale_oak_log []
fill ~3 ~1 ~-2 ~3 ~12 ~-2 stripped_pale_oak_log []
fill ~-3 ~1 ~2 ~-3 ~12 ~2 stripped_pale_oak_log []
fill ~3 ~1 ~2 ~3 ~12 ~2 stripped_pale_oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 pale_oak_planks []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 resin_bricks []
fill ~0 ~18 ~0 ~0 ~19 ~0 resin_block []
setblock ~0 ~20 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 resin_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 pale_oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 pale_oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 pale_oak_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~-7 ~0 ~-1 ~-7 ~6 ~-1 pale_oak_log []
fill ~7 ~0 ~-1 ~7 ~6 ~-1 pale_oak_log []
setblock ~-7 ~7 ~-1 resin_block []
setblock ~7 ~7 ~-1 chiseled_resin_bricks []
setblock ~-7 ~8 ~-1 soul_lantern []
setblock ~7 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~11 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 resin_block []
setblock ~0 ~1 ~0 chiseled_deepslate []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~1 slot.container 1 string 13
replaceitem block ~-3 ~1 ~1 slot.container 2 gunpowder 12
replaceitem block ~-3 ~1 ~1 slot.container 3 ender_pearl 8
replaceitem block ~-3 ~1 ~1 slot.container 4 spider_eye 12
replaceitem block ~-3 ~1 ~1 slot.container 5 phantom_membrane 10
replaceitem block ~-3 ~1 ~1 slot.container 9 iron_ingot 14
replaceitem block ~-3 ~1 ~1 slot.container 10 diamond 2
replaceitem block ~-3 ~1 ~1 slot.container 11 golden_apple 3
replaceitem block ~-3 ~1 ~1 slot.container 12 iron_axe 1
replaceitem block ~-3 ~1 ~1 slot.container 13 shield 1
replaceitem block ~-3 ~1 ~1 slot.container 14 soul_lantern 8
loot insert ~-3 ~1 ~1 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
