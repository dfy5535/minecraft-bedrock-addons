# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0558/4224 | 主题内编号: b046/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·要塞校场比武演武台 (pale_garden_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 resin_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 resin_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 resin_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~5 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~-3 ~4 slot.container 1 string 10
replaceitem block ~5 ~-3 ~4 slot.container 2 gunpowder 9
replaceitem block ~5 ~-3 ~4 slot.container 3 ender_pearl 5
replaceitem block ~5 ~-3 ~4 slot.container 4 spider_eye 9
replaceitem block ~5 ~-3 ~4 slot.container 5 phantom_membrane 7
replaceitem block ~5 ~-3 ~4 slot.container 9 shield 1
replaceitem block ~5 ~-3 ~4 slot.container 10 soul_lantern 6
replaceitem block ~5 ~-3 ~4 slot.container 11 resin_brick 15
replaceitem block ~5 ~-3 ~4 slot.container 12 pale_oak_log 20
replaceitem block ~5 ~-3 ~4 slot.container 13 pale_oak_sapling 9
replaceitem block ~5 ~-3 ~4 slot.container 14 pale_moss_block 14
loot insert ~5 ~-3 ~4 loot "rsf/pale_garden"
loot insert ~5 ~-3 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 resin_bricks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 pale_oak_planks []
setblock ~-7 ~10 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 pale_oak_planks []
setblock ~-7 ~10 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 pale_oak_planks []
setblock ~6 ~10 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~9 ~6 pale_oak_planks []
setblock ~6 ~10 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 pale_oak_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 deepslate_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 chiseled_deepslate []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~8 ~0 ~-2 ~10 ~9 ~2 deepslate_bricks []
fill ~8 ~1 ~-1 ~9 ~8 ~1 air []
fill ~7 ~1 ~0 ~8 ~2 ~0 air []
setblock ~9 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x7x3) ---
fill ~-10 ~0 ~2 ~-10 ~6 ~2 pale_oak_log []
fill ~10 ~0 ~2 ~10 ~6 ~2 pale_oak_log []
setblock ~-10 ~7 ~2 resin_block []
setblock ~10 ~7 ~2 chiseled_resin_bricks []
setblock ~-10 ~8 ~2 soul_lantern []
setblock ~10 ~8 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~-5 ~1 ~5 anvil []
setblock ~5 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-6 ~1 ~4 slot.container 1 phantom_membrane 10
replaceitem block ~-6 ~1 ~4 slot.container 2 resin_clump 12
replaceitem block ~-6 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-6 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 5 string 13
replaceitem block ~-6 ~1 ~4 slot.container 9 iron_ingot 13
replaceitem block ~-6 ~1 ~4 slot.container 10 diamond 8
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 2
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_axe 1
replaceitem block ~-6 ~1 ~4 slot.container 13 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 14 soul_lantern 7
loot insert ~-6 ~1 ~4 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
