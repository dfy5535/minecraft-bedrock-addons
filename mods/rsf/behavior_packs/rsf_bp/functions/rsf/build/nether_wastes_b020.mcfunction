# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3476/4224 | 主题内编号: b020/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·重甲防爆金库房间 (nether_wastes_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_nether_brick [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_nether_brick [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_nether_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 quartz_block []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 blaze_rod 11
replaceitem block ~2 ~-2 ~3 slot.container 1 magma_cream 14
replaceitem block ~2 ~-2 ~3 slot.container 2 ghast_tear 11
replaceitem block ~2 ~-2 ~3 slot.container 3 gold_nugget 16
replaceitem block ~2 ~-2 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~2 ~-2 ~3 slot.container 5 bone 12
replaceitem block ~2 ~-2 ~3 slot.container 9 nether_wart 12
replaceitem block ~2 ~-2 ~3 slot.container 10 obsidian 9
replaceitem block ~2 ~-2 ~3 slot.container 11 crying_obsidian 6
replaceitem block ~2 ~-2 ~3 slot.container 12 golden_apple 5
replaceitem block ~2 ~-2 ~3 slot.container 13 golden_carrot 12
replaceitem block ~2 ~-2 ~3 slot.container 14 netherite_scrap 6
loot insert ~2 ~-2 ~3 loot "rsf/nether_wastes"
loot insert ~2 ~-2 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 red_nether_brick []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-3 ~8 ~-4 nether_brick []
setblock ~-4 ~9 ~-5 soul_lantern []
fill ~-4 ~1 ~4 ~-3 ~8 ~5 nether_brick []
setblock ~-4 ~9 ~4 soul_lantern []
fill ~3 ~1 ~-5 ~4 ~8 ~-4 nether_brick []
setblock ~3 ~9 ~-5 soul_lantern []
fill ~3 ~1 ~4 ~4 ~8 ~5 nether_brick []
setblock ~3 ~9 ~4 soul_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 nether_brick []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~5 ~-2 chiseled_nether_bricks []
fill ~-5 ~0 ~2 ~-5 ~5 ~2 chiseled_nether_bricks []
fill ~5 ~0 ~-2 ~5 ~5 ~-2 chiseled_nether_bricks []
fill ~5 ~0 ~2 ~5 ~5 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~-6 ~0 ~-6 ~-6 ~8 ~-6 nether_brick []
setblock ~-6 ~9 ~-6 magma []
setblock ~-6 ~10 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 2 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 3 coal 19
replaceitem block ~-3 ~1 ~4 slot.container 4 blaze_rod 6
replaceitem block ~-3 ~1 ~4 slot.container 5 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 9 fire_charge 10
replaceitem block ~-3 ~1 ~4 slot.container 10 soul_lantern 9
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 12 quartz 16
replaceitem block ~-3 ~1 ~4 slot.container 13 nether_wart 13
replaceitem block ~-3 ~1 ~4 slot.container 14 obsidian 10
loot insert ~-3 ~1 ~4 loot "rsf/nether_wastes"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~3 ~1 ~4 slot.container 1 coal 14
replaceitem block ~3 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 3 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 5 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 9 fire_charge 8
replaceitem block ~3 ~1 ~4 slot.container 10 soul_lantern 7
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 12 quartz 21
replaceitem block ~3 ~1 ~4 slot.container 13 nether_wart 18
replaceitem block ~3 ~1 ~4 slot.container 14 obsidian 8
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~1 ~4 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~-2 ~0
