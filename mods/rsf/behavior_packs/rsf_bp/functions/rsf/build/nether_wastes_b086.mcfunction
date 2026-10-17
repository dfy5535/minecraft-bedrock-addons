# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3542/4224 | 主题内编号: b086/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·重装矿石金库碉堡 (nether_wastes_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 nether_brick [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 ghast_tear 11
replaceitem block ~3 ~-2 ~4 slot.container 1 gold_nugget 16
replaceitem block ~3 ~-2 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~-2 ~4 slot.container 3 bone 12
replaceitem block ~3 ~-2 ~4 slot.container 4 ender_pearl 7
replaceitem block ~3 ~-2 ~4 slot.container 5 coal 16
replaceitem block ~3 ~-2 ~4 slot.container 9 gold_ingot 13
replaceitem block ~3 ~-2 ~4 slot.container 10 quartz 20
replaceitem block ~3 ~-2 ~4 slot.container 11 nether_wart 17
replaceitem block ~3 ~-2 ~4 slot.container 12 obsidian 14
replaceitem block ~3 ~-2 ~4 slot.container 13 crying_obsidian 4
replaceitem block ~3 ~-2 ~4 slot.container 14 golden_apple 3
loot insert ~3 ~-2 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~-2 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 nether_brick []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~8 ~-5 red_nether_brick []
setblock ~-5 ~9 ~-6 soul_lantern []
fill ~-5 ~1 ~5 ~-4 ~8 ~6 red_nether_brick []
setblock ~-5 ~9 ~5 soul_lantern []
fill ~4 ~1 ~-6 ~5 ~8 ~-5 red_nether_brick []
setblock ~4 ~9 ~-6 soul_lantern []
fill ~4 ~1 ~5 ~5 ~8 ~6 red_nether_brick []
setblock ~4 ~9 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 nether_brick_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 polished_blackstone_bricks []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 polished_blackstone_brick_slab []
setblock ~0 ~12 ~0 glowstone []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 nether_brick_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~-7 ~-7 ~9 ~-7 nether_brick []
setblock ~-7 ~10 ~-7 magma []
setblock ~-7 ~11 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 glowstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 1 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 2 blaze_rod 6
replaceitem block ~-4 ~1 ~5 slot.container 3 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 9 golden_carrot 8
replaceitem block ~-4 ~1 ~5 slot.container 10 netherite_scrap 2
replaceitem block ~-4 ~1 ~5 slot.container 11 fire_charge 8
replaceitem block ~-4 ~1 ~5 slot.container 12 soul_lantern 7
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 14 quartz 21
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 1 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 19
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 golden_carrot 13
replaceitem block ~4 ~1 ~5 slot.container 10 netherite_scrap 7
replaceitem block ~4 ~1 ~5 slot.container 11 fire_charge 6
replaceitem block ~4 ~1 ~5 slot.container 12 soul_lantern 5
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 14 quartz 19
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~-2 ~0
