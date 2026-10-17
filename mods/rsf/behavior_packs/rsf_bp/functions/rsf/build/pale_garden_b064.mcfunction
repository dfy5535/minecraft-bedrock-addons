# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0576/4224 | 主题内编号: b064/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·U型冥庭守墓人陵园 (pale_garden_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 pale_oak_planks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 pale_oak_planks []
setblock ~0 ~-7 ~0 chiseled_resin_bricks []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 soul_lantern []
setblock ~2 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 10
replaceitem block ~0 ~-4 ~-3 slot.container 2 gunpowder 9
replaceitem block ~0 ~-4 ~-3 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-4 ~-3 slot.container 4 spider_eye 9
replaceitem block ~0 ~-4 ~-3 slot.container 5 phantom_membrane 7
replaceitem block ~0 ~-4 ~-3 slot.container 9 iron_ingot 13
replaceitem block ~0 ~-4 ~-3 slot.container 10 diamond 8
replaceitem block ~0 ~-4 ~-3 slot.container 11 golden_apple 2
replaceitem block ~0 ~-4 ~-3 slot.container 12 iron_axe 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 shield 1
replaceitem block ~0 ~-4 ~-3 slot.container 14 soul_lantern 7
loot insert ~0 ~-4 ~-3 loot "rsf/pale_garden"
loot insert ~0 ~-4 ~-3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 pale_moss_block []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 pale_oak_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 pale_oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-9 ~0 ~2 ~-9 ~9 ~2 pale_oak_log []
fill ~9 ~0 ~2 ~9 ~9 ~2 pale_oak_log []
setblock ~-9 ~10 ~2 resin_block []
setblock ~9 ~10 ~2 chiseled_resin_bricks []
setblock ~-9 ~11 ~2 soul_lantern []
setblock ~9 ~11 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 resin_clump 12
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 string 13
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 9 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 10 soul_lantern 7
replaceitem block ~-5 ~1 ~3 slot.container 11 resin_brick 16
replaceitem block ~-5 ~1 ~3 slot.container 12 pale_oak_log 21
replaceitem block ~-5 ~1 ~3 slot.container 13 pale_oak_sapling 10
replaceitem block ~-5 ~1 ~3 slot.container 14 pale_moss_block 8
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
