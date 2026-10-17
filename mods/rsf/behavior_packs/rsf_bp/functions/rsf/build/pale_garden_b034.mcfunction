# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0546/4224 | 主题内编号: b034/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双子对称铭文方尖碑 (pale_garden_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x9 | 地上高度 11格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~15 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~15 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~15 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~15 ~5 air [] replace log2
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 resin_bricks [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 resin_bricks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 resin_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_deepslate []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-2 ~5 ~-1 ~2 deepslate_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~1 slot.container 0 spider_eye 9
replaceitem block ~4 ~-3 ~1 slot.container 1 phantom_membrane 7
replaceitem block ~4 ~-3 ~1 slot.container 2 resin_clump 17
replaceitem block ~4 ~-3 ~1 slot.container 3 bone 16
replaceitem block ~4 ~-3 ~1 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-3 ~1 slot.container 5 string 10
replaceitem block ~4 ~-3 ~1 slot.container 9 pale_oak_sapling 7
replaceitem block ~4 ~-3 ~1 slot.container 10 pale_moss_block 12
replaceitem block ~4 ~-3 ~1 slot.container 11 iron_ingot 13
replaceitem block ~4 ~-3 ~1 slot.container 12 diamond 8
replaceitem block ~4 ~-3 ~1 slot.container 13 golden_apple 2
replaceitem block ~4 ~-3 ~1 slot.container 14 iron_axe 1
loot insert ~4 ~-3 ~1 loot "rsf/pale_garden"
loot insert ~4 ~-3 ~1 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~12 ~3 resin_bricks []
fill ~2 ~1 ~-3 ~6 ~12 ~3 resin_bricks []
fill ~-5 ~1 ~-2 ~-3 ~11 ~2 air []
fill ~3 ~1 ~-2 ~5 ~11 ~2 air []
fill ~-2 ~9 ~-1 ~2 ~11 ~1 pale_oak_planks []
fill ~-3 ~10 ~0 ~3 ~10 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 pale_oak_planks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 resin_bricks []
fill ~0 ~17 ~0 ~0 ~18 ~0 resin_block []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 pale_oak_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 pale_oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 pale_oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 pale_oak_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x4x6) ---
fill ~-9 ~0 ~1 ~-9 ~9 ~1 pale_oak_log []
fill ~9 ~0 ~1 ~9 ~9 ~1 pale_oak_log []
setblock ~-9 ~10 ~1 resin_block []
setblock ~9 ~10 ~1 chiseled_resin_bricks []
setblock ~-9 ~11 ~1 soul_lantern []
setblock ~9 ~11 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~2 bookshelf []
setblock ~5 ~1 ~2 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~1 slot.container 1 string 13
replaceitem block ~-5 ~1 ~1 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~1 slot.container 3 ender_pearl 8
replaceitem block ~-5 ~1 ~1 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~1 slot.container 5 phantom_membrane 10
replaceitem block ~-5 ~1 ~1 slot.container 9 shield 1
replaceitem block ~-5 ~1 ~1 slot.container 10 soul_lantern 5
replaceitem block ~-5 ~1 ~1 slot.container 11 resin_brick 14
replaceitem block ~-5 ~1 ~1 slot.container 12 pale_oak_log 19
replaceitem block ~-5 ~1 ~1 slot.container 13 pale_oak_sapling 8
replaceitem block ~-5 ~1 ~1 slot.container 14 pale_moss_block 13
loot insert ~-5 ~1 ~1 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
