# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0592/4224 | 主题内编号: b080/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·悬灯祈福图腾花坛 (pale_garden_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 resin_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 resin_bricks []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 lantern []
setblock ~5 ~-7 ~0 lantern []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 resin_clump 17
replaceitem block ~0 ~-5 ~4 slot.container 1 bone 16
replaceitem block ~0 ~-5 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-5 ~4 slot.container 3 string 10
replaceitem block ~0 ~-5 ~4 slot.container 4 gunpowder 9
replaceitem block ~0 ~-5 ~4 slot.container 5 ender_pearl 5
replaceitem block ~0 ~-5 ~4 slot.container 9 shield 1
replaceitem block ~0 ~-5 ~4 slot.container 10 soul_lantern 8
replaceitem block ~0 ~-5 ~4 slot.container 11 resin_brick 17
replaceitem block ~0 ~-5 ~4 slot.container 12 pale_oak_log 22
replaceitem block ~0 ~-5 ~4 slot.container 13 pale_oak_sapling 4
replaceitem block ~0 ~-5 ~4 slot.container 14 pale_moss_block 9
loot insert ~0 ~-5 ~4 loot "rsf/pale_garden"
loot insert ~0 ~-5 ~4 loot "chests/woodland_mansion"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 resin_clump 15
replaceitem block ~0 ~-5 ~-4 slot.container 1 bone 14
replaceitem block ~0 ~-5 ~-4 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-5 ~-4 slot.container 3 string 16
replaceitem block ~0 ~-5 ~-4 slot.container 4 gunpowder 15
replaceitem block ~0 ~-5 ~-4 slot.container 5 ender_pearl 3
replaceitem block ~0 ~-5 ~-4 slot.container 9 shield 1
replaceitem block ~0 ~-5 ~-4 slot.container 10 soul_lantern 7
replaceitem block ~0 ~-5 ~-4 slot.container 11 resin_brick 16
replaceitem block ~0 ~-5 ~-4 slot.container 12 pale_oak_log 21
replaceitem block ~0 ~-5 ~-4 slot.container 13 pale_oak_sapling 10
replaceitem block ~0 ~-5 ~-4 slot.container 14 pale_moss_block 8
loot insert ~0 ~-5 ~-4 loot "rsf/pale_garden"
loot insert ~0 ~-5 ~-4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 pale_oak_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 pale_oak_planks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 pale_oak_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 pale_oak_planks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 pale_oak_slab []
setblock ~0 ~12 ~0 resin_block []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 pale_oak_log []
setblock ~0 ~4 ~-6 chiseled_resin_bricks []
setblock ~0 ~5 ~-6 soul_lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 pale_oak_log []
setblock ~0 ~4 ~6 chiseled_resin_bricks []
setblock ~0 ~5 ~6 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 pale_oak_log []
setblock ~-7 ~4 ~0 chiseled_resin_bricks []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 pale_oak_log []
setblock ~7 ~4 ~0 chiseled_resin_bricks []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-8 ~0 ~-1 ~-8 ~5 ~-1 pale_oak_log []
fill ~8 ~0 ~-1 ~8 ~5 ~-1 pale_oak_log []
setblock ~-8 ~6 ~-1 resin_block []
setblock ~8 ~6 ~-1 chiseled_resin_bricks []
setblock ~-8 ~7 ~-1 soul_lantern []
setblock ~8 ~7 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~3 smoker []
setblock ~4 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 resin_clump 12
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 string 13
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 10 iron_axe 1
replaceitem block ~-4 ~1 ~2 slot.container 11 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 12 soul_lantern 4
replaceitem block ~-4 ~1 ~2 slot.container 13 resin_brick 13
replaceitem block ~-4 ~1 ~2 slot.container 14 pale_oak_log 18
loot insert ~-4 ~1 ~2 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
