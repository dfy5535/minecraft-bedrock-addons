# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0554/4224 | 主题内编号: b042/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·地底铁栏死斗深坑 (pale_garden_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 resin_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 resin_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 resin_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 resin_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~3 lantern []
setblock ~4 ~-6 ~-3 lantern []
setblock ~4 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~3 slot.container 0 gunpowder 9
replaceitem block ~4 ~-4 ~3 slot.container 1 ender_pearl 5
replaceitem block ~4 ~-4 ~3 slot.container 2 spider_eye 9
replaceitem block ~4 ~-4 ~3 slot.container 3 phantom_membrane 7
replaceitem block ~4 ~-4 ~3 slot.container 4 resin_clump 17
replaceitem block ~4 ~-4 ~3 slot.container 5 bone 16
replaceitem block ~4 ~-4 ~3 slot.container 9 iron_ingot 11
replaceitem block ~4 ~-4 ~3 slot.container 10 diamond 6
replaceitem block ~4 ~-4 ~3 slot.container 11 golden_apple 7
replaceitem block ~4 ~-4 ~3 slot.container 12 iron_axe 1
replaceitem block ~4 ~-4 ~3 slot.container 13 shield 1
replaceitem block ~4 ~-4 ~3 slot.container 14 soul_lantern 5
loot insert ~4 ~-4 ~3 loot "rsf/pale_garden"
loot insert ~4 ~-4 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 resin_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 pale_oak_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 pale_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 stripped_pale_oak_log []
setblock ~-6 ~9 ~-5 lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 stripped_pale_oak_log []
setblock ~-6 ~9 ~5 lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 stripped_pale_oak_log []
setblock ~6 ~9 ~-5 lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 stripped_pale_oak_log []
setblock ~6 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-9 ~0 ~0 ~-9 ~7 ~0 pale_oak_log []
fill ~9 ~0 ~0 ~9 ~7 ~0 pale_oak_log []
setblock ~-9 ~8 ~0 resin_block []
setblock ~9 ~8 ~0 chiseled_resin_bricks []
setblock ~-9 ~9 ~0 soul_lantern []
setblock ~9 ~9 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 resin_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 13
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 10
replaceitem block ~-5 ~1 ~3 slot.container 9 pale_oak_sapling 5
replaceitem block ~-5 ~1 ~3 slot.container 10 pale_moss_block 10
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 6
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_axe 1
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-4 ~0
