# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0549/4224 | 主题内编号: b037/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·环廊聖柱纪念碑 (pale_garden_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 pale_oak_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 pale_oak_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 resin_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 chiseled_resin_bricks []
setblock ~0 ~-5 ~0 soul_lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 ender_pearl 5
replaceitem block ~4 ~-2 ~0 slot.container 1 spider_eye 9
replaceitem block ~4 ~-2 ~0 slot.container 2 phantom_membrane 7
replaceitem block ~4 ~-2 ~0 slot.container 3 resin_clump 17
replaceitem block ~4 ~-2 ~0 slot.container 4 bone 16
replaceitem block ~4 ~-2 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-2 ~0 slot.container 9 pale_moss_block 9
replaceitem block ~4 ~-2 ~0 slot.container 10 iron_ingot 10
replaceitem block ~4 ~-2 ~0 slot.container 11 diamond 5
replaceitem block ~4 ~-2 ~0 slot.container 12 golden_apple 6
replaceitem block ~4 ~-2 ~0 slot.container 13 iron_axe 1
replaceitem block ~4 ~-2 ~0 slot.container 14 shield 1
loot insert ~4 ~-2 ~0 loot "rsf/pale_garden"
loot insert ~4 ~-2 ~0 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 resin_bricks []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 pale_oak_log []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 pale_oak_log []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 pale_oak_log []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 pale_oak_log []
fill ~-2 ~1 ~-5 ~-2 ~8 ~-5 pale_oak_log []
fill ~-2 ~1 ~5 ~-2 ~8 ~5 pale_oak_log []
fill ~0 ~1 ~-5 ~0 ~8 ~-5 pale_oak_log []
fill ~0 ~1 ~5 ~0 ~8 ~5 pale_oak_log []
fill ~2 ~1 ~-5 ~2 ~8 ~-5 pale_oak_log []
fill ~2 ~1 ~5 ~2 ~8 ~5 pale_oak_log []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 pale_oak_log []
fill ~4 ~1 ~5 ~4 ~8 ~5 pale_oak_log []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 pale_oak_log []
fill ~6 ~1 ~5 ~6 ~8 ~5 pale_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 pale_oak_log []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 pale_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 pale_oak_log []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 pale_oak_log []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 pale_oak_log []
fill ~6 ~1 ~1 ~6 ~8 ~1 pale_oak_log []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 pale_oak_log []
fill ~6 ~1 ~3 ~6 ~8 ~3 pale_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~9 ~-5 ~-6 ~11 ~-5 pale_oak_log []
setblock ~-6 ~12 ~-5 soul_lantern []
fill ~-6 ~9 ~5 ~-6 ~11 ~5 pale_oak_log []
setblock ~-6 ~12 ~5 soul_lantern []
fill ~6 ~9 ~-5 ~6 ~11 ~-5 pale_oak_log []
setblock ~6 ~12 ~-5 soul_lantern []
fill ~6 ~9 ~5 ~6 ~11 ~5 pale_oak_log []
setblock ~6 ~12 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 pale_oak_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-9 ~0 ~0 ~-9 ~7 ~0 pale_oak_log []
fill ~9 ~0 ~0 ~9 ~7 ~0 pale_oak_log []
setblock ~-9 ~8 ~0 resin_block []
setblock ~9 ~8 ~0 chiseled_resin_bricks []
setblock ~-9 ~9 ~0 soul_lantern []
setblock ~9 ~9 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~3 slot.container 2 phantom_membrane 10
replaceitem block ~5 ~1 ~3 slot.container 3 resin_clump 12
replaceitem block ~5 ~1 ~3 slot.container 4 bone 11
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 iron_axe 1
replaceitem block ~5 ~1 ~3 slot.container 10 shield 1
replaceitem block ~5 ~1 ~3 slot.container 11 soul_lantern 9
replaceitem block ~5 ~1 ~3 slot.container 12 resin_brick 18
replaceitem block ~5 ~1 ~3 slot.container 13 pale_oak_log 16
replaceitem block ~5 ~1 ~3 slot.container 14 pale_oak_sapling 5
loot insert ~5 ~1 ~3 loot "rsf/pale_garden"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 phantom_membrane 5
replaceitem block ~-5 ~1 ~4 slot.container 1 resin_clump 15
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 string 16
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_axe 1
replaceitem block ~-5 ~1 ~4 slot.container 10 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 11 soul_lantern 7
replaceitem block ~-5 ~1 ~4 slot.container 12 resin_brick 16
replaceitem block ~-5 ~1 ~4 slot.container 13 pale_oak_log 21
replaceitem block ~-5 ~1 ~4 slot.container 14 pale_oak_sapling 10
loot insert ~-5 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~4 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
