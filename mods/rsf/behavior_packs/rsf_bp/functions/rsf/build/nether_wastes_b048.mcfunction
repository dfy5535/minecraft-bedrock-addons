# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3504/4224 | 主题内编号: b048/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·阶梯王座巅峰试炼台 (nether_wastes_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace fire
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 red_nether_brick [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 red_nether_brick [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_nether_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 quartz_block []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 quartz_block []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 magma_cream 14
replaceitem block ~3 ~-4 ~5 slot.container 1 ghast_tear 11
replaceitem block ~3 ~-4 ~5 slot.container 2 gold_nugget 16
replaceitem block ~3 ~-4 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~3 ~-4 ~5 slot.container 4 bone 12
replaceitem block ~3 ~-4 ~5 slot.container 5 ender_pearl 7
replaceitem block ~3 ~-4 ~5 slot.container 9 obsidian 11
replaceitem block ~3 ~-4 ~5 slot.container 10 crying_obsidian 8
replaceitem block ~3 ~-4 ~5 slot.container 11 golden_apple 7
replaceitem block ~3 ~-4 ~5 slot.container 12 golden_carrot 14
replaceitem block ~3 ~-4 ~5 slot.container 13 netherite_scrap 1
replaceitem block ~3 ~-4 ~5 slot.container 14 fire_charge 7
loot insert ~3 ~-4 ~5 loot "rsf/nether_wastes"
loot insert ~3 ~-4 ~5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 red_nether_brick []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 nether_brick []
fill ~-4 ~5 ~-5 ~4 ~7 ~5 quartz_block []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 red_nether_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 chiseled_nether_bricks []
setblock ~-6 ~10 ~-7 soul_lantern []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 chiseled_nether_bricks []
setblock ~-6 ~10 ~7 soul_lantern []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 chiseled_nether_bricks []
setblock ~6 ~10 ~-7 soul_lantern []
fill ~6 ~7 ~7 ~6 ~9 ~7 chiseled_nether_bricks []
setblock ~6 ~10 ~7 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 chiseled_nether_bricks []
setblock ~0 ~4 ~-9 gilded_blackstone []
setblock ~0 ~5 ~-9 soul_lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 chiseled_nether_bricks []
setblock ~0 ~4 ~9 gilded_blackstone []
setblock ~0 ~5 ~9 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_nether_bricks []
setblock ~-8 ~4 ~0 gilded_blackstone []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_nether_bricks []
setblock ~8 ~4 ~0 gilded_blackstone []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-8 ~0 ~-9 ~-8 ~6 ~-9 nether_brick []
setblock ~-8 ~7 ~-9 magma []
setblock ~-8 ~8 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 magma []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 blaze_rod 6
replaceitem block ~-5 ~1 ~6 slot.container 1 magma_cream 9
replaceitem block ~-5 ~1 ~6 slot.container 2 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 3 gold_nugget 19
replaceitem block ~-5 ~1 ~6 slot.container 4 rotten_flesh 16
replaceitem block ~-5 ~1 ~6 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 9 nether_wart 16
replaceitem block ~-5 ~1 ~6 slot.container 10 obsidian 13
replaceitem block ~-5 ~1 ~6 slot.container 11 crying_obsidian 10
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 2
replaceitem block ~-5 ~1 ~6 slot.container 13 golden_carrot 9
replaceitem block ~-5 ~1 ~6 slot.container 14 netherite_scrap 3
loot insert ~-5 ~1 ~6 loot "rsf/nether_wastes"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ghast_tear 9
replaceitem block ~5 ~1 ~6 slot.container 1 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 19
replaceitem block ~5 ~1 ~6 slot.container 3 bone 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 5
replaceitem block ~5 ~1 ~6 slot.container 5 coal 14
replaceitem block ~5 ~1 ~6 slot.container 9 nether_wart 14
replaceitem block ~5 ~1 ~6 slot.container 10 obsidian 11
replaceitem block ~5 ~1 ~6 slot.container 11 crying_obsidian 8
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 7
replaceitem block ~5 ~1 ~6 slot.container 13 golden_carrot 14
replaceitem block ~5 ~1 ~6 slot.container 14 netherite_scrap 1
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
loot insert ~5 ~1 ~6 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
