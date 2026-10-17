# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0616/4224 | 主题内编号: b104/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双层指挥台卫戍堡 (pale_garden_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 pale_oak_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 1 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 2 spider_eye 9
replaceitem block ~4 ~-3 ~3 slot.container 3 phantom_membrane 7
replaceitem block ~4 ~-3 ~3 slot.container 4 resin_clump 17
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 16
replaceitem block ~4 ~-3 ~3 slot.container 9 pale_oak_sapling 7
replaceitem block ~4 ~-3 ~3 slot.container 10 pale_moss_block 12
replaceitem block ~4 ~-3 ~3 slot.container 11 iron_ingot 13
replaceitem block ~4 ~-3 ~3 slot.container 12 diamond 8
replaceitem block ~4 ~-3 ~3 slot.container 13 golden_apple 2
replaceitem block ~4 ~-3 ~3 slot.container 14 iron_axe 1
loot insert ~4 ~-3 ~3 loot "rsf/pale_garden"
loot insert ~4 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-5 ~6 ~4 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-7 ~4 ~-6 ~7 ~4 ~6 pale_oak_slab []
fill ~-5 ~5 ~-4 ~5 ~9 ~4 pale_oak_planks []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 pale_oak_planks []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 resin_brick_wall []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 air []
setblock ~-6 ~10 ~-5 pale_oak_log []
setblock ~-6 ~11 ~-5 soul_lantern []
setblock ~-6 ~10 ~5 pale_oak_log []
setblock ~-6 ~11 ~5 soul_lantern []
setblock ~6 ~10 ~-5 pale_oak_log []
setblock ~6 ~11 ~-5 soul_lantern []
setblock ~6 ~10 ~5 pale_oak_log []
setblock ~6 ~11 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 pale_moss_block []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-9 ~0 ~2 ~-9 ~9 ~2 pale_oak_log []
fill ~9 ~0 ~2 ~9 ~9 ~2 pale_oak_log []
setblock ~-9 ~10 ~2 resin_block []
setblock ~9 ~10 ~2 chiseled_resin_bricks []
setblock ~-9 ~11 ~2 soul_lantern []
setblock ~9 ~11 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 chiseled_resin_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 resin_clump 12
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 string 13
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 9 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 10 soul_lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 11 resin_brick 14
replaceitem block ~-5 ~1 ~3 slot.container 12 pale_oak_log 19
replaceitem block ~-5 ~1 ~3 slot.container 13 pale_oak_sapling 8
replaceitem block ~-5 ~1 ~3 slot.container 14 pale_moss_block 13
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
