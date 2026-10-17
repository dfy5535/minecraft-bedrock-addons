# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0560/4224 | 主题内编号: b048/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·阶梯王座巅峰试炼台 (pale_garden_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 pale_oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 resin_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 pale_oak_planks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 pale_oak_planks []
setblock ~0 ~-6 ~0 chiseled_resin_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 10
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 9
replaceitem block ~0 ~-3 ~-4 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-3 ~-4 slot.container 4 spider_eye 9
replaceitem block ~0 ~-3 ~-4 slot.container 5 phantom_membrane 7
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_apple 5
replaceitem block ~0 ~-3 ~-4 slot.container 10 iron_axe 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 shield 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 soul_lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 resin_brick 12
replaceitem block ~0 ~-3 ~-4 slot.container 14 pale_oak_log 17
loot insert ~0 ~-3 ~-4 loot "rsf/pale_garden"
loot insert ~0 ~-3 ~-4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 stone_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 pale_oak_planks []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 pale_oak_planks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 pale_oak_planks []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 resin_brick_wall []
fill ~-5 ~9 ~-3 ~5 ~9 ~3 air []
setblock ~-6 ~9 ~-4 pale_oak_log []
setblock ~-6 ~10 ~-4 soul_lantern []
setblock ~-6 ~9 ~4 pale_oak_log []
setblock ~-6 ~10 ~4 soul_lantern []
setblock ~6 ~9 ~-4 pale_oak_log []
setblock ~6 ~10 ~-4 soul_lantern []
setblock ~6 ~9 ~4 pale_oak_log []
setblock ~6 ~10 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 pale_oak_log []
setblock ~0 ~4 ~-8 chiseled_resin_bricks []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 pale_oak_log []
setblock ~0 ~4 ~8 chiseled_resin_bricks []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 pale_oak_log []
setblock ~-9 ~4 ~0 chiseled_resin_bricks []
setblock ~-9 ~5 ~0 soul_lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 pale_oak_log []
setblock ~9 ~4 ~0 chiseled_resin_bricks []
setblock ~9 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x9x5) ---
fill ~-10 ~0 ~-2 ~-10 ~8 ~-2 pale_oak_log []
fill ~10 ~0 ~-2 ~10 ~8 ~-2 pale_oak_log []
setblock ~-10 ~9 ~-2 resin_block []
setblock ~10 ~9 ~-2 chiseled_resin_bricks []
setblock ~-10 ~10 ~-2 soul_lantern []
setblock ~10 ~10 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 resin_block []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 resin_clump 12
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 3 string 13
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~-6 ~1 ~4 slot.container 9 resin_brick 12
replaceitem block ~-6 ~1 ~4 slot.container 10 pale_oak_log 17
replaceitem block ~-6 ~1 ~4 slot.container 11 pale_oak_sapling 6
replaceitem block ~-6 ~1 ~4 slot.container 12 pale_moss_block 11
replaceitem block ~-6 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 14 diamond 7
loot insert ~-6 ~1 ~4 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-3 ~0
