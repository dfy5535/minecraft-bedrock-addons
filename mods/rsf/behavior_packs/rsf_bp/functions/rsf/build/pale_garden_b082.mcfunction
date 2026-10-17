# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0594/4224 | 主题内编号: b082/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·竖井井架矿工物资站 (pale_garden_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 6格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 resin_bricks [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 resin_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 resin_bricks []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 lantern []
setblock ~3 ~-7 ~-2 lantern []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 gunpowder 9
replaceitem block ~3 ~-5 ~2 slot.container 1 ender_pearl 5
replaceitem block ~3 ~-5 ~2 slot.container 2 spider_eye 9
replaceitem block ~3 ~-5 ~2 slot.container 3 phantom_membrane 7
replaceitem block ~3 ~-5 ~2 slot.container 4 resin_clump 17
replaceitem block ~3 ~-5 ~2 slot.container 5 bone 16
replaceitem block ~3 ~-5 ~2 slot.container 9 iron_ingot 9
replaceitem block ~3 ~-5 ~2 slot.container 10 diamond 4
replaceitem block ~3 ~-5 ~2 slot.container 11 golden_apple 5
replaceitem block ~3 ~-5 ~2 slot.container 12 iron_axe 1
replaceitem block ~3 ~-5 ~2 slot.container 13 shield 1
replaceitem block ~3 ~-5 ~2 slot.container 14 soul_lantern 10
loot insert ~3 ~-5 ~2 loot "rsf/pale_garden"
loot insert ~3 ~-5 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 resin_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 resin_brick_slab []
fill ~-4 ~5 ~-3 ~4 ~9 ~3 deepslate_bricks []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 pale_oak_planks []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 deepslate_bricks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 resin_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~-8 ~0 ~1 ~-8 ~7 ~1 pale_oak_log []
fill ~8 ~0 ~1 ~8 ~7 ~1 pale_oak_log []
setblock ~-8 ~8 ~1 resin_block []
setblock ~8 ~8 ~1 chiseled_resin_bricks []
setblock ~-8 ~9 ~1 soul_lantern []
setblock ~8 ~9 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-4 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 1 string 13
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 4 spider_eye 12
replaceitem block ~-4 ~1 ~2 slot.container 5 phantom_membrane 10
replaceitem block ~-4 ~1 ~2 slot.container 9 pale_oak_sapling 10
replaceitem block ~-4 ~1 ~2 slot.container 10 pale_moss_block 8
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 12 diamond 4
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 5
replaceitem block ~-4 ~1 ~2 slot.container 14 iron_axe 1
loot insert ~-4 ~1 ~2 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
