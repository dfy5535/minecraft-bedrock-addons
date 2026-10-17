# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0548/4224 | 主题内编号: b036/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·下沉碑林地宫方尖碑 (pale_garden_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 resin_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 soul_lantern []
setblock ~3 ~-6 ~-2 soul_lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 spider_eye 9
replaceitem block ~3 ~-4 ~2 slot.container 1 phantom_membrane 7
replaceitem block ~3 ~-4 ~2 slot.container 2 resin_clump 17
replaceitem block ~3 ~-4 ~2 slot.container 3 bone 16
replaceitem block ~3 ~-4 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-4 ~2 slot.container 5 string 10
replaceitem block ~3 ~-4 ~2 slot.container 9 golden_apple 6
replaceitem block ~3 ~-4 ~2 slot.container 10 iron_axe 1
replaceitem block ~3 ~-4 ~2 slot.container 11 shield 1
replaceitem block ~3 ~-4 ~2 slot.container 12 soul_lantern 4
replaceitem block ~3 ~-4 ~2 slot.container 13 resin_brick 13
replaceitem block ~3 ~-4 ~2 slot.container 14 pale_oak_log 18
loot insert ~3 ~-4 ~2 loot "rsf/pale_garden"
loot insert ~3 ~-4 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 pale_oak_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 pale_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 pale_oak_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 resin_block []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 resin_bricks []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~-1 ~-8 ~6 ~-1 pale_oak_log []
fill ~8 ~0 ~-1 ~8 ~6 ~-1 pale_oak_log []
setblock ~-8 ~7 ~-1 resin_block []
setblock ~8 ~7 ~-1 chiseled_resin_bricks []
setblock ~-8 ~8 ~-1 soul_lantern []
setblock ~8 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 resin_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~2 slot.container 3 phantom_membrane 10
replaceitem block ~-4 ~1 ~2 slot.container 4 resin_clump 12
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 5
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_axe 1
replaceitem block ~-4 ~1 ~2 slot.container 13 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 14 soul_lantern 4
loot insert ~-4 ~1 ~2 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-4 ~0
