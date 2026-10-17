# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0615/4224 | 主题内编号: b103/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·十字全向防御方堡 (pale_garden_bunker_cross_redoubt)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 resin_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~0 slot.container 1 string 10
replaceitem block ~4 ~-3 ~0 slot.container 2 gunpowder 9
replaceitem block ~4 ~-3 ~0 slot.container 3 ender_pearl 5
replaceitem block ~4 ~-3 ~0 slot.container 4 spider_eye 9
replaceitem block ~4 ~-3 ~0 slot.container 5 phantom_membrane 7
replaceitem block ~4 ~-3 ~0 slot.container 9 iron_ingot 11
replaceitem block ~4 ~-3 ~0 slot.container 10 diamond 6
replaceitem block ~4 ~-3 ~0 slot.container 11 golden_apple 7
replaceitem block ~4 ~-3 ~0 slot.container 12 iron_axe 1
replaceitem block ~4 ~-3 ~0 slot.container 13 shield 1
replaceitem block ~4 ~-3 ~0 slot.container 14 soul_lantern 5
loot insert ~4 ~-3 ~0 loot "rsf/pale_garden"
loot insert ~4 ~-3 ~0 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 deepslate_bricks []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 deepslate_bricks []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 pale_oak_fence []
setblock ~6 ~2 ~0 pale_oak_fence []

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

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 pale_oak_log []
setblock ~-8 ~6 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 pale_oak_log []
setblock ~-8 ~6 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 pale_oak_log []
setblock ~8 ~6 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 pale_oak_log []
setblock ~8 ~6 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-9 ~0 ~1 ~-9 ~8 ~1 pale_oak_log []
fill ~9 ~0 ~1 ~9 ~8 ~1 pale_oak_log []
setblock ~-9 ~9 ~1 resin_block []
setblock ~9 ~9 ~1 chiseled_resin_bricks []
setblock ~-9 ~10 ~1 soul_lantern []
setblock ~9 ~10 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 phantom_membrane 10
replaceitem block ~5 ~1 ~3 slot.container 1 resin_clump 12
replaceitem block ~5 ~1 ~3 slot.container 2 bone 11
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 string 13
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 9 diamond 8
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 11 iron_axe 1
replaceitem block ~5 ~1 ~3 slot.container 12 shield 1
replaceitem block ~5 ~1 ~3 slot.container 13 soul_lantern 7
replaceitem block ~5 ~1 ~3 slot.container 14 resin_brick 16
loot insert ~5 ~1 ~3 loot "rsf/pale_garden"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 16
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 7
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 6
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_axe 1
replaceitem block ~-5 ~1 ~4 slot.container 12 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 13 soul_lantern 5
replaceitem block ~-5 ~1 ~4 slot.container 14 resin_brick 14
loot insert ~-5 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~4 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
