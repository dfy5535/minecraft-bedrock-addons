# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3554/4224 | 主题内编号: b098/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·四角炮楼重装要塞 (nether_wastes_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 nether_brick [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 nether_brick [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 nether_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 gold_nugget 16
replaceitem block ~0 ~-4 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-4 ~4 slot.container 2 bone 12
replaceitem block ~0 ~-4 ~4 slot.container 3 ender_pearl 7
replaceitem block ~0 ~-4 ~4 slot.container 4 coal 16
replaceitem block ~0 ~-4 ~4 slot.container 5 blaze_rod 11
replaceitem block ~0 ~-4 ~4 slot.container 9 obsidian 14
replaceitem block ~0 ~-4 ~4 slot.container 10 crying_obsidian 4
replaceitem block ~0 ~-4 ~4 slot.container 11 golden_apple 3
replaceitem block ~0 ~-4 ~4 slot.container 12 golden_carrot 10
replaceitem block ~0 ~-4 ~4 slot.container 13 netherite_scrap 4
replaceitem block ~0 ~-4 ~4 slot.container 14 fire_charge 10
loot insert ~0 ~-4 ~4 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 nether_brick []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 red_nether_brick []
setblock ~-6 ~10 ~-7 soul_lantern []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 red_nether_brick []
setblock ~-6 ~10 ~6 soul_lantern []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 red_nether_brick []
setblock ~5 ~10 ~-7 soul_lantern []
fill ~5 ~1 ~6 ~6 ~9 ~7 red_nether_brick []
setblock ~5 ~10 ~6 soul_lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 red_nether_brick []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 nether_brick_fence []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 chiseled_nether_bricks []
setblock ~-6 ~9 ~-7 soul_lantern []
setblock ~-6 ~8 ~7 chiseled_nether_bricks []
setblock ~-6 ~9 ~7 soul_lantern []
setblock ~6 ~8 ~-7 chiseled_nether_bricks []
setblock ~6 ~9 ~-7 soul_lantern []
setblock ~6 ~8 ~7 chiseled_nether_bricks []
setblock ~6 ~9 ~7 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 nether_brick_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~-8 ~-8 ~6 ~-8 nether_brick []
setblock ~-8 ~7 ~-8 magma []
setblock ~-8 ~8 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 1 gold_nugget 19
replaceitem block ~-5 ~1 ~6 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 4 ender_pearl 10
replaceitem block ~-5 ~1 ~6 slot.container 5 coal 19
replaceitem block ~-5 ~1 ~6 slot.container 9 nether_wart 17
replaceitem block ~-5 ~1 ~6 slot.container 10 obsidian 14
replaceitem block ~-5 ~1 ~6 slot.container 11 crying_obsidian 4
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 3
replaceitem block ~-5 ~1 ~6 slot.container 13 golden_carrot 10
replaceitem block ~-5 ~1 ~6 slot.container 14 netherite_scrap 4
loot insert ~-5 ~1 ~6 loot "rsf/nether_wastes"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 19
replaceitem block ~5 ~1 ~6 slot.container 1 bone 10
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 5
replaceitem block ~5 ~1 ~6 slot.container 3 coal 14
replaceitem block ~5 ~1 ~6 slot.container 4 blaze_rod 9
replaceitem block ~5 ~1 ~6 slot.container 5 magma_cream 12
replaceitem block ~5 ~1 ~6 slot.container 9 nether_wart 15
replaceitem block ~5 ~1 ~6 slot.container 10 obsidian 12
replaceitem block ~5 ~1 ~6 slot.container 11 crying_obsidian 9
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 8
replaceitem block ~5 ~1 ~6 slot.container 13 golden_carrot 8
replaceitem block ~5 ~1 ~6 slot.container 14 netherite_scrap 2
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
loot insert ~5 ~1 ~6 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~-3 ~0
