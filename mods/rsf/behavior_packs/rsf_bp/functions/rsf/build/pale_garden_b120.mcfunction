# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0632/4224 | 主题内编号: b120/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·引水渠跨桥水培温室 (pale_garden_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log2
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 stone_bricks [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 stone_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 pale_oak_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 resin_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-3 ~5 ~-1 ~3 pale_oak_planks []
fill ~-4 ~-5 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~-4 ~-3 ~2 slot.container 1 string 10
replaceitem block ~-4 ~-3 ~2 slot.container 2 gunpowder 9
replaceitem block ~-4 ~-3 ~2 slot.container 3 ender_pearl 5
replaceitem block ~-4 ~-3 ~2 slot.container 4 spider_eye 9
replaceitem block ~-4 ~-3 ~2 slot.container 5 phantom_membrane 7
replaceitem block ~-4 ~-3 ~2 slot.container 9 pale_oak_sapling 7
replaceitem block ~-4 ~-3 ~2 slot.container 10 pale_moss_block 12
replaceitem block ~-4 ~-3 ~2 slot.container 11 iron_ingot 13
replaceitem block ~-4 ~-3 ~2 slot.container 12 diamond 8
replaceitem block ~-4 ~-3 ~2 slot.container 13 golden_apple 2
replaceitem block ~-4 ~-3 ~2 slot.container 14 iron_axe 1
loot insert ~-4 ~-3 ~2 loot "rsf/pale_garden"
loot insert ~-4 ~-3 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 stone_bricks []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 pale_oak_planks []
fill ~-5 ~8 ~-3 ~5 ~9 ~3 glass []
fill ~-4 ~8 ~-2 ~4 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 pale_moss_block []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-9 ~0 ~-1 ~-9 ~5 ~-1 pale_oak_log []
fill ~9 ~0 ~-1 ~9 ~5 ~-1 pale_oak_log []
setblock ~-9 ~6 ~-1 resin_block []
setblock ~9 ~6 ~-1 chiseled_resin_bricks []
setblock ~-9 ~7 ~-1 soul_lantern []
setblock ~9 ~7 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 crafting_table []
setblock ~-4 ~1 ~3 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 resin_clump 12
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~2 slot.container 3 string 13
replaceitem block ~-5 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~2 slot.container 5 ender_pearl 8
replaceitem block ~-5 ~1 ~2 slot.container 9 golden_apple 4
replaceitem block ~-5 ~1 ~2 slot.container 10 iron_axe 1
replaceitem block ~-5 ~1 ~2 slot.container 11 shield 1
replaceitem block ~-5 ~1 ~2 slot.container 12 soul_lantern 9
replaceitem block ~-5 ~1 ~2 slot.container 13 resin_brick 18
replaceitem block ~-5 ~1 ~2 slot.container 14 pale_oak_log 16
loot insert ~-5 ~1 ~2 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-3 ~0
