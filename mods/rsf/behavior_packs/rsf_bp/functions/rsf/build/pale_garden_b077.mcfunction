# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0589/4224 | 主题内编号: b077/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双子鸟居图腾神道 (pale_garden_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air [] replace log2
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 pale_oak_planks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 pale_oak_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 pale_oak_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 pale_moss_block []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 resin_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 pale_oak_planks []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-5 ~7 ~8 ~5 pale_oak_slab []
fill ~-5 ~9 ~-3 ~5 ~10 ~3 resin_bricks []
fill ~-6 ~11 ~-4 ~6 ~11 ~4 resin_brick_slab []
setblock ~0 ~12 ~0 chiseled_resin_bricks []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-9 ~0 ~0 ~-9 ~7 ~0 pale_oak_log []
fill ~9 ~0 ~0 ~9 ~7 ~0 pale_oak_log []
setblock ~-9 ~8 ~0 resin_block []
setblock ~9 ~8 ~0 chiseled_resin_bricks []
setblock ~-9 ~9 ~0 soul_lantern []
setblock ~9 ~9 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~5 ~1 ~2 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~2 slot.container 2 phantom_membrane 10
replaceitem block ~5 ~1 ~2 slot.container 3 resin_clump 12
replaceitem block ~5 ~1 ~2 slot.container 4 bone 11
replaceitem block ~5 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 9 iron_axe 1
replaceitem block ~5 ~1 ~2 slot.container 10 shield 1
replaceitem block ~5 ~1 ~2 slot.container 11 soul_lantern 7
replaceitem block ~5 ~1 ~2 slot.container 12 resin_brick 16
replaceitem block ~5 ~1 ~2 slot.container 13 pale_oak_log 21
replaceitem block ~5 ~1 ~2 slot.container 14 pale_oak_sapling 10
loot insert ~5 ~1 ~2 loot "rsf/pale_garden"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 phantom_membrane 5
replaceitem block ~-5 ~1 ~3 slot.container 1 resin_clump 15
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 4 string 16
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_axe 1
replaceitem block ~-5 ~1 ~3 slot.container 10 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 11 soul_lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 12 resin_brick 14
replaceitem block ~-5 ~1 ~3 slot.container 13 pale_oak_log 19
replaceitem block ~-5 ~1 ~3 slot.container 14 pale_oak_sapling 8
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~3 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
