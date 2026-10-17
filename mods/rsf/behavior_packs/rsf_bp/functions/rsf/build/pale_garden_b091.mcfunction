# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0603/4224 | 主题内编号: b091/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·跨水拱桥水神小祠 (pale_garden_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace log2
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 pale_moss_block []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-2 ~5 ~-1 ~2 pale_oak_planks []
fill ~-4 ~-4 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~1 slot.container 0 ender_pearl 5
replaceitem block ~-4 ~-2 ~1 slot.container 1 spider_eye 9
replaceitem block ~-4 ~-2 ~1 slot.container 2 phantom_membrane 7
replaceitem block ~-4 ~-2 ~1 slot.container 3 resin_clump 17
replaceitem block ~-4 ~-2 ~1 slot.container 4 bone 16
replaceitem block ~-4 ~-2 ~1 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~-2 ~1 slot.container 9 diamond 4
replaceitem block ~-4 ~-2 ~1 slot.container 10 golden_apple 5
replaceitem block ~-4 ~-2 ~1 slot.container 11 iron_axe 1
replaceitem block ~-4 ~-2 ~1 slot.container 12 shield 1
replaceitem block ~-4 ~-2 ~1 slot.container 13 soul_lantern 10
replaceitem block ~-4 ~-2 ~1 slot.container 14 resin_brick 12
loot insert ~-4 ~-2 ~1 loot "rsf/pale_garden"
loot insert ~-4 ~-2 ~1 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~8 ~3 deepslate_bricks []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 deepslate_brick_slab []
fill ~-5 ~9 ~-2 ~5 ~10 ~2 stone_bricks []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 pale_oak_slab []
setblock ~0 ~12 ~0 chiseled_deepslate []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 pale_moss_block []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x4x3) ---
fill ~-9 ~0 ~1 ~-9 ~6 ~1 pale_oak_log []
fill ~9 ~0 ~1 ~9 ~6 ~1 pale_oak_log []
setblock ~-9 ~7 ~1 resin_block []
setblock ~9 ~7 ~1 chiseled_resin_bricks []
setblock ~-9 ~8 ~1 soul_lantern []
setblock ~9 ~8 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 string 13
replaceitem block ~5 ~1 ~1 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~1 slot.container 2 ender_pearl 8
replaceitem block ~5 ~1 ~1 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~1 slot.container 4 phantom_membrane 10
replaceitem block ~5 ~1 ~1 slot.container 5 resin_clump 12
replaceitem block ~5 ~1 ~1 slot.container 9 soul_lantern 5
replaceitem block ~5 ~1 ~1 slot.container 10 resin_brick 14
replaceitem block ~5 ~1 ~1 slot.container 11 pale_oak_log 19
replaceitem block ~5 ~1 ~1 slot.container 12 pale_oak_sapling 8
replaceitem block ~5 ~1 ~1 slot.container 13 pale_moss_block 13
replaceitem block ~5 ~1 ~1 slot.container 14 iron_ingot 14
loot insert ~5 ~1 ~1 loot "rsf/pale_garden"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ender_pearl 3
replaceitem block ~-5 ~1 ~2 slot.container 1 spider_eye 7
replaceitem block ~-5 ~1 ~2 slot.container 2 phantom_membrane 5
replaceitem block ~-5 ~1 ~2 slot.container 3 resin_clump 15
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 9 soul_lantern 10
replaceitem block ~-5 ~1 ~2 slot.container 10 resin_brick 12
replaceitem block ~-5 ~1 ~2 slot.container 11 pale_oak_log 17
replaceitem block ~-5 ~1 ~2 slot.container 12 pale_oak_sapling 6
replaceitem block ~-5 ~1 ~2 slot.container 13 pale_moss_block 11
replaceitem block ~-5 ~1 ~2 slot.container 14 iron_ingot 12
loot insert ~-5 ~1 ~2 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~2 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
