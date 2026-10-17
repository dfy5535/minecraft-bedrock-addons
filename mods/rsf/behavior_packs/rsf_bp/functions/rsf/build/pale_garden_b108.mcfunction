# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0620/4224 | 主题内编号: b108/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·十字四相元素秘法殿 (pale_garden_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 10
replaceitem block ~4 ~-3 ~3 slot.container 1 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 2 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 3 spider_eye 9
replaceitem block ~4 ~-3 ~3 slot.container 4 phantom_membrane 7
replaceitem block ~4 ~-3 ~3 slot.container 5 resin_clump 17
replaceitem block ~4 ~-3 ~3 slot.container 9 pale_moss_block 11
replaceitem block ~4 ~-3 ~3 slot.container 10 iron_ingot 12
replaceitem block ~4 ~-3 ~3 slot.container 11 diamond 7
replaceitem block ~4 ~-3 ~3 slot.container 12 golden_apple 8
replaceitem block ~4 ~-3 ~3 slot.container 13 iron_axe 1
replaceitem block ~4 ~-3 ~3 slot.container 14 shield 1
loot insert ~4 ~-3 ~3 loot "rsf/pale_garden"
loot insert ~4 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 stone_bricks []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 resin_brick_wall []
setblock ~6 ~2 ~0 resin_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 pale_oak_planks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 pale_oak_planks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 resin_block []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 pale_oak_log []
setblock ~0 ~4 ~-7 chiseled_resin_bricks []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 pale_oak_log []
setblock ~0 ~4 ~7 chiseled_resin_bricks []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 pale_oak_log []
setblock ~-8 ~4 ~0 chiseled_resin_bricks []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 pale_oak_log []
setblock ~8 ~4 ~0 chiseled_resin_bricks []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~1 ~-9 ~8 ~1 pale_oak_log []
fill ~9 ~0 ~1 ~9 ~8 ~1 pale_oak_log []
setblock ~-9 ~9 ~1 resin_block []
setblock ~9 ~9 ~1 chiseled_resin_bricks []
setblock ~-9 ~10 ~1 soul_lantern []
setblock ~9 ~10 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 10
replaceitem block ~-5 ~1 ~3 slot.container 4 resin_clump 12
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 9 resin_brick 16
replaceitem block ~-5 ~1 ~3 slot.container 10 pale_oak_log 21
replaceitem block ~-5 ~1 ~3 slot.container 11 pale_oak_sapling 10
replaceitem block ~-5 ~1 ~3 slot.container 12 pale_moss_block 8
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 4
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-3 ~0
