# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0536/4224 | 主题内编号: b024/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·半地下掩体储藏室 (pale_garden_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 resin_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 gunpowder 9
replaceitem block ~3 ~-4 ~2 slot.container 1 ender_pearl 5
replaceitem block ~3 ~-4 ~2 slot.container 2 spider_eye 9
replaceitem block ~3 ~-4 ~2 slot.container 3 phantom_membrane 7
replaceitem block ~3 ~-4 ~2 slot.container 4 resin_clump 17
replaceitem block ~3 ~-4 ~2 slot.container 5 bone 16
replaceitem block ~3 ~-4 ~2 slot.container 9 iron_ingot 11
replaceitem block ~3 ~-4 ~2 slot.container 10 diamond 6
replaceitem block ~3 ~-4 ~2 slot.container 11 golden_apple 7
replaceitem block ~3 ~-4 ~2 slot.container 12 iron_axe 1
replaceitem block ~3 ~-4 ~2 slot.container 13 shield 1
replaceitem block ~3 ~-4 ~2 slot.container 14 soul_lantern 5
loot insert ~3 ~-4 ~2 loot "rsf/pale_garden"
loot insert ~3 ~-4 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 pale_oak_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 pale_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-4 ~-5 ~9 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-4 ~5 ~9 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-4 ~4 ~9 ~4 pale_oak_slab []
fill ~0 ~10 ~-5 ~0 ~10 ~5 pale_oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 resin_brick_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~-1 ~-8 ~9 ~-1 pale_oak_log []
fill ~8 ~0 ~-1 ~8 ~9 ~-1 pale_oak_log []
setblock ~-8 ~10 ~-1 resin_block []
setblock ~8 ~10 ~-1 chiseled_resin_bricks []
setblock ~-8 ~11 ~-1 soul_lantern []
setblock ~8 ~11 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~3 blast_furnace []
setblock ~-3 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 resin_clump 12
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 string 13
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 9 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 10 soul_lantern 9
replaceitem block ~-4 ~1 ~2 slot.container 11 resin_brick 18
replaceitem block ~-4 ~1 ~2 slot.container 12 pale_oak_log 16
replaceitem block ~-4 ~1 ~2 slot.container 13 pale_oak_sapling 5
replaceitem block ~-4 ~1 ~2 slot.container 14 pale_moss_block 10
loot insert ~-4 ~1 ~2 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-4 ~0
