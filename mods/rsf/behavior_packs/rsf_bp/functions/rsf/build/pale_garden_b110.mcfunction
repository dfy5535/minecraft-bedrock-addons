# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0622/4224 | 主题内编号: b110/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双子附魔与酿造实验楼 (pale_garden_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 resin_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 resin_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 resin_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_deepslate []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 resin_bricks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 lantern []
setblock ~5 ~-5 ~-2 lantern []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 resin_clump 17
replaceitem block ~5 ~-3 ~2 slot.container 1 bone 16
replaceitem block ~5 ~-3 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~-3 ~2 slot.container 3 string 10
replaceitem block ~5 ~-3 ~2 slot.container 4 gunpowder 9
replaceitem block ~5 ~-3 ~2 slot.container 5 ender_pearl 5
replaceitem block ~5 ~-3 ~2 slot.container 9 iron_ingot 8
replaceitem block ~5 ~-3 ~2 slot.container 10 diamond 3
replaceitem block ~5 ~-3 ~2 slot.container 11 golden_apple 4
replaceitem block ~5 ~-3 ~2 slot.container 12 iron_axe 1
replaceitem block ~5 ~-3 ~2 slot.container 13 shield 1
replaceitem block ~5 ~-3 ~2 slot.container 14 soul_lantern 9
loot insert ~5 ~-3 ~2 loot "rsf/pale_garden"
loot insert ~5 ~-3 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 resin_bricks []
fill ~2 ~1 ~-4 ~7 ~9 ~4 resin_bricks []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 pale_oak_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~8 ~-5 ~8 ~8 ~5 resin_brick_slab []
fill ~-6 ~9 ~-3 ~6 ~10 ~3 deepslate_bricks []
fill ~-7 ~11 ~-4 ~7 ~11 ~4 deepslate_brick_slab []
setblock ~0 ~12 ~0 resin_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 pale_oak_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x6x2) ---
fill ~-10 ~0 ~1 ~-10 ~5 ~1 pale_oak_log []
fill ~10 ~0 ~1 ~10 ~5 ~1 pale_oak_log []
setblock ~-10 ~6 ~1 resin_block []
setblock ~10 ~6 ~1 chiseled_resin_bricks []
setblock ~-10 ~7 ~1 soul_lantern []
setblock ~10 ~7 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 resin_block []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-6 ~1 ~2 slot.container 1 phantom_membrane 10
replaceitem block ~-6 ~1 ~2 slot.container 2 resin_clump 12
replaceitem block ~-6 ~1 ~2 slot.container 3 bone 11
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~2 slot.container 5 string 13
replaceitem block ~-6 ~1 ~2 slot.container 9 golden_apple 8
replaceitem block ~-6 ~1 ~2 slot.container 10 iron_axe 1
replaceitem block ~-6 ~1 ~2 slot.container 11 shield 1
replaceitem block ~-6 ~1 ~2 slot.container 12 soul_lantern 6
replaceitem block ~-6 ~1 ~2 slot.container 13 resin_brick 15
replaceitem block ~-6 ~1 ~2 slot.container 14 pale_oak_log 20
loot insert ~-6 ~1 ~2 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
