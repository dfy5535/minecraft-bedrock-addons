# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0638/4224 | 主题内编号: b126/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双子主塔天桥宫殿与暗牢 (pale_garden_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-7 ~9 ~14 ~7 air [] replace leaves
fill ~-9 ~1 ~-7 ~9 ~14 ~7 air [] replace leaves2
fill ~-9 ~1 ~-7 ~9 ~14 ~7 air [] replace log
fill ~-9 ~1 ~-7 ~9 ~14 ~7 air [] replace log2
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 resin_bricks [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 resin_bricks [] replace water
fill ~-8 ~0 ~-6 ~8 ~0 ~6 resin_brick_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 polished_deepslate []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 resin_bricks []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 lantern []
setblock ~5 ~-6 ~-3 lantern []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 resin_clump 17
replaceitem block ~5 ~-4 ~3 slot.container 1 bone 16
replaceitem block ~5 ~-4 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~-4 ~3 slot.container 3 string 10
replaceitem block ~5 ~-4 ~3 slot.container 4 gunpowder 9
replaceitem block ~5 ~-4 ~3 slot.container 5 ender_pearl 5
replaceitem block ~5 ~-4 ~3 slot.container 9 golden_apple 5
replaceitem block ~5 ~-4 ~3 slot.container 10 iron_axe 1
replaceitem block ~5 ~-4 ~3 slot.container 11 shield 1
replaceitem block ~5 ~-4 ~3 slot.container 12 soul_lantern 10
replaceitem block ~5 ~-4 ~3 slot.container 13 resin_brick 12
replaceitem block ~5 ~-4 ~3 slot.container 14 pale_oak_log 17
loot insert ~5 ~-4 ~3 loot "rsf/pale_garden"
loot insert ~5 ~-4 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~11 ~5 resin_bricks []
fill ~2 ~1 ~-5 ~7 ~11 ~5 resin_bricks []
fill ~-6 ~1 ~-4 ~-3 ~10 ~4 air []
fill ~3 ~1 ~-4 ~6 ~10 ~4 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 pale_oak_planks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 pale_oak_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 resin_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 resin_block []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 pale_moss_block []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x8x3) ---
fill ~-10 ~0 ~-1 ~-10 ~6 ~-1 pale_oak_log []
fill ~10 ~0 ~-1 ~10 ~6 ~-1 pale_oak_log []
setblock ~-10 ~7 ~-1 resin_block []
setblock ~10 ~7 ~-1 chiseled_resin_bricks []
setblock ~-10 ~8 ~-1 soul_lantern []
setblock ~10 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 spider_eye 12
replaceitem block ~-6 ~1 ~3 slot.container 1 phantom_membrane 10
replaceitem block ~-6 ~1 ~3 slot.container 2 resin_clump 12
replaceitem block ~-6 ~1 ~3 slot.container 3 bone 11
replaceitem block ~-6 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~3 slot.container 5 string 13
replaceitem block ~-6 ~1 ~3 slot.container 9 iron_ingot 9
replaceitem block ~-6 ~1 ~3 slot.container 10 diamond 4
replaceitem block ~-6 ~1 ~3 slot.container 11 golden_apple 5
replaceitem block ~-6 ~1 ~3 slot.container 12 iron_axe 1
replaceitem block ~-6 ~1 ~3 slot.container 13 shield 1
replaceitem block ~-6 ~1 ~3 slot.container 14 soul_lantern 10
loot insert ~-6 ~1 ~3 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-4 ~0
