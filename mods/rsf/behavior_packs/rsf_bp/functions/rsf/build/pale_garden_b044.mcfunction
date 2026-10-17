# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0556/4224 | 主题内编号: b044/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·双子祭台勇士角斗场 (pale_garden_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-7 ~9 ~11 ~7 air [] replace leaves
fill ~-9 ~1 ~-7 ~9 ~11 ~7 air [] replace leaves2
fill ~-9 ~1 ~-7 ~9 ~11 ~7 air [] replace log
fill ~-9 ~1 ~-7 ~9 ~11 ~7 air [] replace log2
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 stone_bricks [] replace air
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 stone_bricks [] replace water
fill ~-8 ~0 ~-6 ~8 ~0 ~6 pale_oak_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 resin_bricks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-4 ~6 ~-1 ~4 pale_oak_planks []
fill ~-5 ~-5 ~-3 ~5 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~3 slot.container 0 resin_clump 17
replaceitem block ~5 ~-3 ~3 slot.container 1 bone 16
replaceitem block ~5 ~-3 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~-3 ~3 slot.container 3 string 10
replaceitem block ~5 ~-3 ~3 slot.container 4 gunpowder 9
replaceitem block ~5 ~-3 ~3 slot.container 5 ender_pearl 5
replaceitem block ~5 ~-3 ~3 slot.container 9 pale_oak_sapling 10
replaceitem block ~5 ~-3 ~3 slot.container 10 pale_moss_block 8
replaceitem block ~5 ~-3 ~3 slot.container 11 iron_ingot 9
replaceitem block ~5 ~-3 ~3 slot.container 12 diamond 4
replaceitem block ~5 ~-3 ~3 slot.container 13 golden_apple 5
replaceitem block ~5 ~-3 ~3 slot.container 14 iron_axe 1
loot insert ~5 ~-3 ~3 loot "rsf/pale_garden"
loot insert ~5 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~8 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~7 ~8 ~5 stone_bricks []
fill ~-6 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~6 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 pale_oak_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-5 ~-7 ~9 ~-5 pale_oak_log []
setblock ~-7 ~10 ~-5 soul_lantern []
fill ~-7 ~7 ~5 ~-7 ~9 ~5 pale_oak_log []
setblock ~-7 ~10 ~5 soul_lantern []
fill ~7 ~7 ~-5 ~7 ~9 ~-5 pale_oak_log []
setblock ~7 ~10 ~-5 soul_lantern []
fill ~7 ~7 ~5 ~7 ~9 ~5 pale_oak_log []
setblock ~7 ~10 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x7x6) ---
fill ~-10 ~0 ~2 ~-10 ~9 ~2 pale_oak_log []
fill ~10 ~0 ~2 ~10 ~9 ~2 pale_oak_log []
setblock ~-10 ~10 ~2 resin_block []
setblock ~10 ~10 ~2 chiseled_resin_bricks []
setblock ~-10 ~11 ~2 soul_lantern []
setblock ~10 ~11 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_deepslate []
setblock ~0 ~1 ~0 resin_block []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~3 slot.container 1 ender_pearl 8
replaceitem block ~-6 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-6 ~1 ~3 slot.container 3 phantom_membrane 10
replaceitem block ~-6 ~1 ~3 slot.container 4 resin_clump 12
replaceitem block ~-6 ~1 ~3 slot.container 5 bone 11
replaceitem block ~-6 ~1 ~3 slot.container 9 shield 1
replaceitem block ~-6 ~1 ~3 slot.container 10 soul_lantern 8
replaceitem block ~-6 ~1 ~3 slot.container 11 resin_brick 17
replaceitem block ~-6 ~1 ~3 slot.container 12 pale_oak_log 22
replaceitem block ~-6 ~1 ~3 slot.container 13 pale_oak_sapling 4
replaceitem block ~-6 ~1 ~3 slot.container 14 pale_moss_block 9
loot insert ~-6 ~1 ~3 loot "rsf/pale_garden"
summon enderman ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon creaking ~1 ~1 ~1
