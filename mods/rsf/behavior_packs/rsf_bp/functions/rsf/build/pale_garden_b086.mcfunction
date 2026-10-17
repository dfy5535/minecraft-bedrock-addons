# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0598/4224 | 主题内编号: b086/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·重装矿石金库碉堡 (pale_garden_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 resin_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 resin_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 resin_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 1 string 10
replaceitem block ~4 ~-3 ~3 slot.container 2 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 4 spider_eye 9
replaceitem block ~4 ~-3 ~3 slot.container 5 phantom_membrane 7
replaceitem block ~4 ~-3 ~3 slot.container 9 shield 1
replaceitem block ~4 ~-3 ~3 slot.container 10 soul_lantern 4
replaceitem block ~4 ~-3 ~3 slot.container 11 resin_brick 13
replaceitem block ~4 ~-3 ~3 slot.container 12 pale_oak_log 18
replaceitem block ~4 ~-3 ~3 slot.container 13 pale_oak_sapling 7
replaceitem block ~4 ~-3 ~3 slot.container 14 pale_moss_block 12
loot insert ~4 ~-3 ~3 loot "rsf/pale_garden"
loot insert ~4 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 resin_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~9 ~-4 pale_oak_planks []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~1 ~4 ~-5 ~9 ~5 pale_oak_planks []
setblock ~-6 ~10 ~4 lantern []
fill ~5 ~1 ~-5 ~6 ~9 ~-4 pale_oak_planks []
setblock ~5 ~10 ~-5 lantern []
fill ~5 ~1 ~4 ~6 ~9 ~5 pale_oak_planks []
setblock ~5 ~10 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 pale_oak_planks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 deepslate_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 resin_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 resin_brick_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~-1 ~-9 ~6 ~-1 pale_oak_log []
fill ~9 ~0 ~-1 ~9 ~6 ~-1 pale_oak_log []
setblock ~-9 ~7 ~-1 resin_block []
setblock ~9 ~7 ~-1 chiseled_resin_bricks []
setblock ~-9 ~8 ~-1 soul_lantern []
setblock ~9 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 soul_lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 resin_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 10
replaceitem block ~-5 ~1 ~3 slot.container 2 resin_clump 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 13
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 6
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_axe 1
replaceitem block ~-5 ~1 ~3 slot.container 13 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 14 soul_lantern 5
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
