# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0550/4224 | 主题内编号: b038/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·四方凯旋衣冠冢 (pale_garden_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 resin_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 resin_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
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
fill ~-2 ~1 ~-4 ~2 ~9 ~4 resin_bricks []
fill ~-5 ~1 ~-2 ~5 ~9 ~2 resin_bricks []
fill ~-1 ~1 ~-3 ~1 ~8 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~8 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 resin_brick_wall []
setblock ~5 ~2 ~0 resin_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 pale_oak_planks []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 deepslate_bricks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 resin_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 pale_oak_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 stripped_pale_oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 stripped_pale_oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 resin_brick_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~-8 ~0 ~1 ~-8 ~8 ~1 pale_oak_log []
fill ~8 ~0 ~1 ~8 ~8 ~1 pale_oak_log []
setblock ~-8 ~9 ~1 resin_block []
setblock ~8 ~9 ~1 chiseled_resin_bricks []
setblock ~-8 ~10 ~1 soul_lantern []
setblock ~8 ~10 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~8 ~0 soul_lantern []
fill ~-4 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 resin_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 10
replaceitem block ~-4 ~1 ~2 slot.container 2 resin_clump 12
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 5 string 13
replaceitem block ~-4 ~1 ~2 slot.container 9 resin_brick 16
replaceitem block ~-4 ~1 ~2 slot.container 10 pale_oak_log 21
replaceitem block ~-4 ~1 ~2 slot.container 11 pale_oak_sapling 10
replaceitem block ~-4 ~1 ~2 slot.container 12 pale_moss_block 8
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 14 diamond 4
loot insert ~-4 ~1 ~2 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
