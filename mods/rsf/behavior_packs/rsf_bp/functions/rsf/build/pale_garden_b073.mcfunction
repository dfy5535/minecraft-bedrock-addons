# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0585/4224 | 主题内编号: b073/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·八方图腾圣火石阵 (pale_garden_totem_eight_pillars)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 pale_oak_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 pale_oak_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 resin_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 ender_pearl 5
replaceitem block ~4 ~-2 ~3 slot.container 1 spider_eye 9
replaceitem block ~4 ~-2 ~3 slot.container 2 phantom_membrane 7
replaceitem block ~4 ~-2 ~3 slot.container 3 resin_clump 17
replaceitem block ~4 ~-2 ~3 slot.container 4 bone 16
replaceitem block ~4 ~-2 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 9 soul_lantern 4
replaceitem block ~4 ~-2 ~3 slot.container 10 resin_brick 13
replaceitem block ~4 ~-2 ~3 slot.container 11 pale_oak_log 18
replaceitem block ~4 ~-2 ~3 slot.container 12 pale_oak_sapling 7
replaceitem block ~4 ~-2 ~3 slot.container 13 pale_moss_block 12
replaceitem block ~4 ~-2 ~3 slot.container 14 iron_ingot 13
loot insert ~4 ~-2 ~3 loot "rsf/pale_garden"
loot insert ~4 ~-2 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 pale_oak_planks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~9 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~9 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~9 ~5 air []
fill ~6 ~1 ~5 ~6 ~9 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 pale_oak_log []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 pale_oak_log []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 pale_oak_log []
fill ~5 ~1 ~4 ~5 ~8 ~4 pale_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 pale_oak_planks []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 pale_oak_log []
setblock ~0 ~4 ~-7 resin_block []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 pale_oak_log []
setblock ~0 ~4 ~7 resin_block []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 pale_oak_log []
setblock ~-8 ~4 ~0 resin_block []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 pale_oak_log []
setblock ~8 ~4 ~0 resin_block []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-9 ~0 ~1 ~-9 ~8 ~1 pale_oak_log []
fill ~9 ~0 ~1 ~9 ~8 ~1 pale_oak_log []
setblock ~-9 ~9 ~1 resin_block []
setblock ~9 ~9 ~1 chiseled_resin_bricks []
setblock ~-9 ~10 ~1 soul_lantern []
setblock ~9 ~10 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 chiseled_resin_bricks []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 11
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 2 string 13
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 5 spider_eye 12
replaceitem block ~5 ~1 ~3 slot.container 9 diamond 6
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~5 ~1 ~3 slot.container 11 iron_axe 1
replaceitem block ~5 ~1 ~3 slot.container 12 shield 1
replaceitem block ~5 ~1 ~3 slot.container 13 soul_lantern 5
replaceitem block ~5 ~1 ~3 slot.container 14 resin_brick 14
loot insert ~5 ~1 ~3 loot "rsf/pale_garden"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 16
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 3 spider_eye 7
replaceitem block ~-5 ~1 ~4 slot.container 4 phantom_membrane 5
replaceitem block ~-5 ~1 ~4 slot.container 5 resin_clump 15
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_axe 1
replaceitem block ~-5 ~1 ~4 slot.container 12 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 13 soul_lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 14 resin_brick 12
loot insert ~-5 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~4 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
