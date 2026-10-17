# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0539/4224 | 主题内编号: b027/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双子连廊警戒塔楼 (pale_garden_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x9 | 地上高度 10格 | 地下深度 2格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 pale_moss_block []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 pale_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~11 ~3 deepslate_bricks []
fill ~2 ~1 ~-3 ~6 ~11 ~3 deepslate_bricks []
fill ~-5 ~1 ~-2 ~-3 ~10 ~2 air []
fill ~3 ~1 ~-2 ~5 ~10 ~2 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 pale_oak_planks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~10 ~-3 ~6 ~10 ~3 pale_oak_planks []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 pale_oak_fence []
fill ~-5 ~11 ~-2 ~5 ~11 ~2 air []
setblock ~-6 ~11 ~-3 pale_oak_log []
setblock ~-6 ~12 ~-3 soul_lantern []
setblock ~-6 ~11 ~3 pale_oak_log []
setblock ~-6 ~12 ~3 soul_lantern []
setblock ~6 ~11 ~-3 pale_oak_log []
setblock ~6 ~12 ~-3 soul_lantern []
setblock ~6 ~11 ~3 pale_oak_log []
setblock ~6 ~12 ~3 soul_lantern []

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

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 string 13
replaceitem block ~5 ~1 ~1 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~1 slot.container 2 ender_pearl 8
replaceitem block ~5 ~1 ~1 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~1 slot.container 4 phantom_membrane 10
replaceitem block ~5 ~1 ~1 slot.container 5 resin_clump 12
replaceitem block ~5 ~1 ~1 slot.container 9 iron_axe 1
replaceitem block ~5 ~1 ~1 slot.container 10 shield 1
replaceitem block ~5 ~1 ~1 slot.container 11 soul_lantern 6
replaceitem block ~5 ~1 ~1 slot.container 12 resin_brick 15
replaceitem block ~5 ~1 ~1 slot.container 13 pale_oak_log 20
replaceitem block ~5 ~1 ~1 slot.container 14 pale_oak_sapling 9
loot insert ~5 ~1 ~1 loot "rsf/pale_garden"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ender_pearl 3
replaceitem block ~-5 ~1 ~2 slot.container 1 spider_eye 7
replaceitem block ~-5 ~1 ~2 slot.container 2 phantom_membrane 5
replaceitem block ~-5 ~1 ~2 slot.container 3 resin_clump 15
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 9 iron_axe 1
replaceitem block ~-5 ~1 ~2 slot.container 10 shield 1
replaceitem block ~-5 ~1 ~2 slot.container 11 soul_lantern 4
replaceitem block ~-5 ~1 ~2 slot.container 12 resin_brick 13
replaceitem block ~-5 ~1 ~2 slot.container 13 pale_oak_log 18
replaceitem block ~-5 ~1 ~2 slot.container 14 pale_oak_sapling 7
loot insert ~-5 ~1 ~2 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~2 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~2 ~0
