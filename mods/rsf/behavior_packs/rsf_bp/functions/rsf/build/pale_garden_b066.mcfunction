# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0578/4224 | 主题内编号: b066/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·崩塌角楼古堡残垣 (pale_garden_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_armory]
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

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 resin_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 lantern []
setblock ~4 ~-5 ~-3 lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 1 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 2 spider_eye 9
replaceitem block ~4 ~-3 ~3 slot.container 3 phantom_membrane 7
replaceitem block ~4 ~-3 ~3 slot.container 4 resin_clump 17
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 16
replaceitem block ~4 ~-3 ~3 slot.container 9 golden_apple 8
replaceitem block ~4 ~-3 ~3 slot.container 10 iron_axe 1
replaceitem block ~4 ~-3 ~3 slot.container 11 shield 1
replaceitem block ~4 ~-3 ~3 slot.container 12 soul_lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 13 resin_brick 15
replaceitem block ~4 ~-3 ~3 slot.container 14 pale_oak_log 20
loot insert ~4 ~-3 ~3 loot "rsf/pale_garden"
loot insert ~4 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 resin_bricks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~10 ~-4 pale_oak_planks []
setblock ~-6 ~11 ~-5 lantern []
fill ~-6 ~1 ~4 ~-5 ~10 ~5 pale_oak_planks []
setblock ~-6 ~11 ~4 lantern []
fill ~5 ~1 ~-5 ~6 ~10 ~-4 pale_oak_planks []
setblock ~5 ~11 ~-5 lantern []
fill ~5 ~1 ~4 ~6 ~10 ~5 pale_oak_planks []
setblock ~5 ~11 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 resin_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 pale_moss_block []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~-1 ~-9 ~6 ~-1 pale_oak_log []
fill ~9 ~0 ~-1 ~9 ~6 ~-1 pale_oak_log []
setblock ~-9 ~7 ~-1 resin_block []
setblock ~9 ~7 ~-1 chiseled_resin_bricks []
setblock ~-9 ~8 ~-1 soul_lantern []
setblock ~9 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 13
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 10
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 7
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_axe 1
replaceitem block ~-5 ~1 ~3 slot.container 13 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 14 soul_lantern 6
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-3 ~0
