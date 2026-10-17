# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0563/4224 | 主题内编号: b051/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·带哨塔围栏探险营地 (pale_garden_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 pale_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 resin_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 pale_oak_planks []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 pale_oak_fence []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 pale_oak_log []
setblock ~-6 ~10 ~-5 soul_lantern []
setblock ~-6 ~9 ~5 pale_oak_log []
setblock ~-6 ~10 ~5 soul_lantern []
setblock ~6 ~9 ~-5 pale_oak_log []
setblock ~6 ~10 ~-5 soul_lantern []
setblock ~6 ~9 ~5 pale_oak_log []
setblock ~6 ~10 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 resin_brick_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~-1 ~-9 ~6 ~-1 pale_oak_log []
fill ~9 ~0 ~-1 ~9 ~6 ~-1 pale_oak_log []
setblock ~-9 ~7 ~-1 resin_block []
setblock ~9 ~7 ~-1 chiseled_resin_bricks []
setblock ~-9 ~8 ~-1 soul_lantern []
setblock ~9 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 13
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~3 slot.container 4 phantom_membrane 10
replaceitem block ~5 ~1 ~3 slot.container 5 resin_clump 12
replaceitem block ~5 ~1 ~3 slot.container 9 soul_lantern 7
replaceitem block ~5 ~1 ~3 slot.container 10 resin_brick 16
replaceitem block ~5 ~1 ~3 slot.container 11 pale_oak_log 21
replaceitem block ~5 ~1 ~3 slot.container 12 pale_oak_sapling 10
replaceitem block ~5 ~1 ~3 slot.container 13 pale_moss_block 8
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 9
loot insert ~5 ~1 ~3 loot "rsf/pale_garden"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 7
replaceitem block ~-5 ~1 ~4 slot.container 2 phantom_membrane 5
replaceitem block ~-5 ~1 ~4 slot.container 3 resin_clump 15
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 soul_lantern 5
replaceitem block ~-5 ~1 ~4 slot.container 10 resin_brick 14
replaceitem block ~-5 ~1 ~4 slot.container 11 pale_oak_log 19
replaceitem block ~-5 ~1 ~4 slot.container 12 pale_oak_sapling 8
replaceitem block ~-5 ~1 ~4 slot.container 13 pale_moss_block 13
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 14
loot insert ~-5 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~4 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~2 ~0
