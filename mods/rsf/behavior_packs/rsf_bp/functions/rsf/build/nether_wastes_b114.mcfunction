# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3570/4224 | 主题内编号: b114/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双联拱顶植物培育馆 (nether_wastes_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 nether_brick [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 red_nether_brick []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 nether_brick []
fill ~2 ~1 ~-5 ~6 ~7 ~5 nether_brick []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 red_nether_brick []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 red_nether_brick []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 glass []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~4 ~-8 chiseled_nether_bricks []
setblock ~-8 ~5 ~-8 soul_lantern []
fill ~-8 ~0 ~8 ~-8 ~4 ~8 chiseled_nether_bricks []
setblock ~-8 ~5 ~8 soul_lantern []
fill ~8 ~0 ~-8 ~8 ~4 ~-8 chiseled_nether_bricks []
setblock ~8 ~5 ~-8 soul_lantern []
fill ~8 ~0 ~8 ~8 ~4 ~8 chiseled_nether_bricks []
setblock ~8 ~5 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~0 ~-7 ~-8 ~7 ~-7 nether_brick []
setblock ~-8 ~8 ~-7 magma []
setblock ~-8 ~9 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 smoker []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ghast_tear 6
replaceitem block ~-5 ~1 ~4 slot.container 1 gold_nugget 19
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 10
replaceitem block ~-5 ~1 ~4 slot.container 5 coal 19
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 10 quartz 17
replaceitem block ~-5 ~1 ~4 slot.container 11 nether_wart 14
replaceitem block ~-5 ~1 ~4 slot.container 12 obsidian 11
replaceitem block ~-5 ~1 ~4 slot.container 13 crying_obsidian 8
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~-5 ~1 ~4 loot "rsf/nether_wastes"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 19
replaceitem block ~5 ~1 ~4 slot.container 1 bone 10
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 5
replaceitem block ~5 ~1 ~4 slot.container 3 coal 14
replaceitem block ~5 ~1 ~4 slot.container 4 blaze_rod 9
replaceitem block ~5 ~1 ~4 slot.container 5 magma_cream 12
replaceitem block ~5 ~1 ~4 slot.container 9 gold_ingot 15
replaceitem block ~5 ~1 ~4 slot.container 10 quartz 22
replaceitem block ~5 ~1 ~4 slot.container 11 nether_wart 12
replaceitem block ~5 ~1 ~4 slot.container 12 obsidian 9
replaceitem block ~5 ~1 ~4 slot.container 13 crying_obsidian 6
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~5 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~5 ~1 ~4 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
