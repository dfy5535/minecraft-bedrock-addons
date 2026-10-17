# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0610/4224 | 主题内编号: b098/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·四角炮楼重装要塞 (pale_garden_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 resin_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 resin_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 resin_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 resin_bricks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 lantern []
setblock ~5 ~-6 ~-4 lantern []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 gunpowder 9
replaceitem block ~5 ~-4 ~4 slot.container 1 ender_pearl 5
replaceitem block ~5 ~-4 ~4 slot.container 2 spider_eye 9
replaceitem block ~5 ~-4 ~4 slot.container 3 phantom_membrane 7
replaceitem block ~5 ~-4 ~4 slot.container 4 resin_clump 17
replaceitem block ~5 ~-4 ~4 slot.container 5 bone 16
replaceitem block ~5 ~-4 ~4 slot.container 9 pale_oak_sapling 7
replaceitem block ~5 ~-4 ~4 slot.container 10 pale_moss_block 12
replaceitem block ~5 ~-4 ~4 slot.container 11 iron_ingot 13
replaceitem block ~5 ~-4 ~4 slot.container 12 diamond 8
replaceitem block ~5 ~-4 ~4 slot.container 13 golden_apple 2
replaceitem block ~5 ~-4 ~4 slot.container 14 iron_axe 1
loot insert ~5 ~-4 ~4 loot "rsf/pale_garden"
loot insert ~5 ~-4 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 resin_bricks []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~10 ~-5 pale_oak_planks []
setblock ~-7 ~11 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~10 ~6 pale_oak_planks []
setblock ~-7 ~11 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~10 ~-5 pale_oak_planks []
setblock ~6 ~11 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~10 ~6 pale_oak_planks []
setblock ~6 ~11 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 pale_oak_planks []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 resin_brick_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x8x5) ---
fill ~-10 ~0 ~0 ~-10 ~8 ~0 pale_oak_log []
fill ~10 ~0 ~0 ~10 ~8 ~0 pale_oak_log []
setblock ~-10 ~9 ~0 resin_block []
setblock ~10 ~9 ~0 chiseled_resin_bricks []
setblock ~-10 ~10 ~0 soul_lantern []
setblock ~10 ~10 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 string 13
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 3 ender_pearl 8
replaceitem block ~-6 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-6 ~1 ~4 slot.container 5 phantom_membrane 10
replaceitem block ~-6 ~1 ~4 slot.container 9 resin_brick 13
replaceitem block ~-6 ~1 ~4 slot.container 10 pale_oak_log 18
replaceitem block ~-6 ~1 ~4 slot.container 11 pale_oak_sapling 7
replaceitem block ~-6 ~1 ~4 slot.container 12 pale_moss_block 12
replaceitem block ~-6 ~1 ~4 slot.container 13 iron_ingot 13
replaceitem block ~-6 ~1 ~4 slot.container 14 diamond 8
loot insert ~-6 ~1 ~4 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
