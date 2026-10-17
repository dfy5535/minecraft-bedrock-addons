# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0634/4224 | 主题内编号: b122/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·十字穹顶宏伟圣堂与墓窟 (pale_garden_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 10格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~14 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~14 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~14 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~14 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 resin_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 resin_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 resin_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 pale_oak_planks []
setblock ~0 ~-7 ~0 chiseled_deepslate []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 gunpowder 9
replaceitem block ~0 ~-4 ~-4 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-4 ~-4 slot.container 2 spider_eye 9
replaceitem block ~0 ~-4 ~-4 slot.container 3 phantom_membrane 7
replaceitem block ~0 ~-4 ~-4 slot.container 4 resin_clump 17
replaceitem block ~0 ~-4 ~-4 slot.container 5 bone 16
replaceitem block ~0 ~-4 ~-4 slot.container 9 shield 1
replaceitem block ~0 ~-4 ~-4 slot.container 10 soul_lantern 5
replaceitem block ~0 ~-4 ~-4 slot.container 11 resin_brick 14
replaceitem block ~0 ~-4 ~-4 slot.container 12 pale_oak_log 19
replaceitem block ~0 ~-4 ~-4 slot.container 13 pale_oak_sapling 8
replaceitem block ~0 ~-4 ~-4 slot.container 14 pale_moss_block 13
loot insert ~0 ~-4 ~-4 loot "rsf/pale_garden"
loot insert ~0 ~-4 ~-4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~10 ~6 resin_bricks []
fill ~-7 ~1 ~-2 ~7 ~10 ~2 resin_bricks []
fill ~-1 ~1 ~-5 ~1 ~9 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~9 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 resin_brick_wall []
setblock ~7 ~2 ~0 resin_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 pale_oak_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 resin_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 resin_block []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 pale_moss_block []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x8x4) ---
fill ~-10 ~0 ~0 ~-10 ~7 ~0 pale_oak_log []
fill ~10 ~0 ~0 ~10 ~7 ~0 pale_oak_log []
setblock ~-10 ~8 ~0 resin_block []
setblock ~10 ~8 ~0 chiseled_resin_bricks []
setblock ~-10 ~9 ~0 soul_lantern []
setblock ~10 ~9 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 string 13
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 3 ender_pearl 8
replaceitem block ~-6 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-6 ~1 ~4 slot.container 5 phantom_membrane 10
replaceitem block ~-6 ~1 ~4 slot.container 9 pale_oak_sapling 8
replaceitem block ~-6 ~1 ~4 slot.container 10 pale_moss_block 13
replaceitem block ~-6 ~1 ~4 slot.container 11 iron_ingot 14
replaceitem block ~-6 ~1 ~4 slot.container 12 diamond 2
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~-6 ~1 ~4 slot.container 14 iron_axe 1
loot insert ~-6 ~1 ~4 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
