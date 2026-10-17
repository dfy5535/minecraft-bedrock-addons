# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0572/4224 | 主题内编号: b060/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·圆形穹顶万骨祠堂 (pale_garden_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_lantern []
setblock ~4 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~3 slot.container 1 string 10
replaceitem block ~0 ~-4 ~3 slot.container 2 gunpowder 9
replaceitem block ~0 ~-4 ~3 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-4 ~3 slot.container 4 spider_eye 9
replaceitem block ~0 ~-4 ~3 slot.container 5 phantom_membrane 7
replaceitem block ~0 ~-4 ~3 slot.container 9 shield 1
replaceitem block ~0 ~-4 ~3 slot.container 10 soul_lantern 9
replaceitem block ~0 ~-4 ~3 slot.container 11 resin_brick 18
replaceitem block ~0 ~-4 ~3 slot.container 12 pale_oak_log 16
replaceitem block ~0 ~-4 ~3 slot.container 13 pale_oak_sapling 5
replaceitem block ~0 ~-4 ~3 slot.container 14 pale_moss_block 10
loot insert ~0 ~-4 ~3 loot "rsf/pale_garden"
loot insert ~0 ~-4 ~3 loot "chests/woodland_mansion"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 16
replaceitem block ~0 ~-4 ~-3 slot.container 2 gunpowder 15
replaceitem block ~0 ~-4 ~-3 slot.container 3 ender_pearl 3
replaceitem block ~0 ~-4 ~-3 slot.container 4 spider_eye 7
replaceitem block ~0 ~-4 ~-3 slot.container 5 phantom_membrane 5
replaceitem block ~0 ~-4 ~-3 slot.container 9 shield 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 soul_lantern 8
replaceitem block ~0 ~-4 ~-3 slot.container 11 resin_brick 17
replaceitem block ~0 ~-4 ~-3 slot.container 12 pale_oak_log 22
replaceitem block ~0 ~-4 ~-3 slot.container 13 pale_oak_sapling 4
replaceitem block ~0 ~-4 ~-3 slot.container 14 pale_moss_block 9
loot insert ~0 ~-4 ~-3 loot "rsf/pale_garden"
loot insert ~0 ~-4 ~-3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 pale_oak_planks []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 pale_oak_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 pale_oak_log []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 pale_oak_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 pale_oak_log []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 pale_oak_log []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 pale_oak_log []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 pale_oak_log []
fill ~0 ~1 ~5 ~0 ~7 ~5 pale_oak_log []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 pale_oak_log []
fill ~2 ~1 ~5 ~2 ~7 ~5 pale_oak_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 pale_oak_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 pale_oak_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 pale_oak_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 pale_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 pale_oak_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 pale_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 pale_oak_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 pale_oak_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 pale_oak_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 pale_oak_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 pale_oak_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 pale_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 pale_oak_planks []
fill ~-5 ~9 ~-4 ~5 ~10 ~4 glass []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~0 ~-2 ~-9 ~5 ~-2 pale_oak_log []
fill ~9 ~0 ~-2 ~9 ~5 ~-2 pale_oak_log []
setblock ~-9 ~6 ~-2 resin_block []
setblock ~9 ~6 ~-2 chiseled_resin_bricks []
setblock ~-9 ~7 ~-2 soul_lantern []
setblock ~9 ~7 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 resin_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 10
replaceitem block ~-5 ~1 ~3 slot.container 4 resin_clump 12
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_axe 1
replaceitem block ~-5 ~1 ~3 slot.container 11 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 12 soul_lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 13 resin_brick 14
replaceitem block ~-5 ~1 ~3 slot.container 14 pale_oak_log 19
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-4 ~0
