# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0614/4224 | 主题内编号: b102/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双子箭塔联防碉楼 (pale_garden_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~13 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~13 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~13 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~13 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 resin_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 resin_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 resin_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_deepslate []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 resin_bricks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 lantern []
setblock ~5 ~-5 ~-2 lantern []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 resin_clump 17
replaceitem block ~5 ~-3 ~2 slot.container 1 bone 16
replaceitem block ~5 ~-3 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~-3 ~2 slot.container 3 string 10
replaceitem block ~5 ~-3 ~2 slot.container 4 gunpowder 9
replaceitem block ~5 ~-3 ~2 slot.container 5 ender_pearl 5
replaceitem block ~5 ~-3 ~2 slot.container 9 iron_ingot 8
replaceitem block ~5 ~-3 ~2 slot.container 10 diamond 3
replaceitem block ~5 ~-3 ~2 slot.container 11 golden_apple 4
replaceitem block ~5 ~-3 ~2 slot.container 12 iron_axe 1
replaceitem block ~5 ~-3 ~2 slot.container 13 shield 1
replaceitem block ~5 ~-3 ~2 slot.container 14 soul_lantern 9
loot insert ~5 ~-3 ~2 loot "rsf/pale_garden"
loot insert ~5 ~-3 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~10 ~4 resin_bricks []
fill ~2 ~1 ~-4 ~7 ~10 ~4 resin_bricks []
fill ~-6 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~6 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 pale_oak_planks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~9 ~-4 ~7 ~9 ~4 pale_oak_planks []
fill ~-7 ~10 ~-4 ~7 ~10 ~4 resin_brick_wall []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 air []
setblock ~-7 ~10 ~-4 stripped_pale_oak_log []
setblock ~-7 ~11 ~-4 lantern []
setblock ~-7 ~10 ~4 stripped_pale_oak_log []
setblock ~-7 ~11 ~4 lantern []
setblock ~7 ~10 ~-4 stripped_pale_oak_log []
setblock ~7 ~11 ~-4 lantern []
setblock ~7 ~10 ~4 stripped_pale_oak_log []
setblock ~7 ~11 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 resin_bricks []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x7x4) ---
fill ~-10 ~0 ~1 ~-10 ~7 ~1 pale_oak_log []
fill ~10 ~0 ~1 ~10 ~7 ~1 pale_oak_log []
setblock ~-10 ~8 ~1 resin_block []
setblock ~10 ~8 ~1 chiseled_resin_bricks []
setblock ~-10 ~9 ~1 soul_lantern []
setblock ~10 ~9 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-6 ~1 ~2 slot.container 1 phantom_membrane 10
replaceitem block ~-6 ~1 ~2 slot.container 2 resin_clump 12
replaceitem block ~-6 ~1 ~2 slot.container 3 bone 11
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~2 slot.container 5 string 13
replaceitem block ~-6 ~1 ~2 slot.container 9 pale_oak_sapling 9
replaceitem block ~-6 ~1 ~2 slot.container 10 pale_moss_block 14
replaceitem block ~-6 ~1 ~2 slot.container 11 iron_ingot 8
replaceitem block ~-6 ~1 ~2 slot.container 12 diamond 3
replaceitem block ~-6 ~1 ~2 slot.container 13 golden_apple 4
replaceitem block ~-6 ~1 ~2 slot.container 14 iron_axe 1
loot insert ~-6 ~1 ~2 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-3 ~0
