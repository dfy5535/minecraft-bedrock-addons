# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0640/4224 | 主题内编号: b128/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·U型紫禁朝堂大殿与地底金库 (pale_garden_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 pale_oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 resin_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 gunpowder 9
replaceitem block ~5 ~-4 ~4 slot.container 1 ender_pearl 5
replaceitem block ~5 ~-4 ~4 slot.container 2 spider_eye 9
replaceitem block ~5 ~-4 ~4 slot.container 3 phantom_membrane 7
replaceitem block ~5 ~-4 ~4 slot.container 4 resin_clump 17
replaceitem block ~5 ~-4 ~4 slot.container 5 bone 16
replaceitem block ~5 ~-4 ~4 slot.container 9 golden_apple 4
replaceitem block ~5 ~-4 ~4 slot.container 10 iron_axe 1
replaceitem block ~5 ~-4 ~4 slot.container 11 shield 1
replaceitem block ~5 ~-4 ~4 slot.container 12 soul_lantern 9
replaceitem block ~5 ~-4 ~4 slot.container 13 resin_brick 18
replaceitem block ~5 ~-4 ~4 slot.container 14 pale_oak_log 16
loot insert ~5 ~-4 ~4 loot "rsf/pale_garden"
loot insert ~5 ~-4 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~9 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 pale_moss_block []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~9 ~-7 ~8 ~9 ~7 pale_oak_slab []
fill ~-6 ~10 ~-5 ~6 ~11 ~5 pale_oak_planks []
fill ~-7 ~12 ~-6 ~7 ~12 ~6 pale_oak_slab []
setblock ~0 ~13 ~0 resin_block []
setblock ~0 ~14 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x8x5) ---
fill ~-10 ~0 ~0 ~-10 ~8 ~0 pale_oak_log []
fill ~10 ~0 ~0 ~10 ~8 ~0 pale_oak_log []
setblock ~-10 ~9 ~0 resin_block []
setblock ~10 ~9 ~0 chiseled_resin_bricks []
setblock ~-10 ~10 ~0 soul_lantern []
setblock ~10 ~10 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-6 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 resin_clump 12
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 3 string 13
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~-6 ~1 ~4 slot.container 9 resin_brick 15
replaceitem block ~-6 ~1 ~4 slot.container 10 pale_oak_log 20
replaceitem block ~-6 ~1 ~4 slot.container 11 pale_oak_sapling 9
replaceitem block ~-6 ~1 ~4 slot.container 12 pale_moss_block 14
replaceitem block ~-6 ~1 ~4 slot.container 13 iron_ingot 8
replaceitem block ~-6 ~1 ~4 slot.container 14 diamond 3
loot insert ~-6 ~1 ~4 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
