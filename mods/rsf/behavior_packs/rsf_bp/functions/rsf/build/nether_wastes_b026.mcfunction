# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3482/4224 | 主题内编号: b026/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·尖顶信标引航高塔 (nether_wastes_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~14 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~14 ~6 air [] replace fire
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 nether_brick [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 nether_brick [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-2 ~-3 ~-3 ~2 ~-1 ~3 polished_blackstone_bricks []
fill ~-1 ~-4 ~-2 ~1 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~1 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-2 ~2 slot.container 0 ender_pearl 7
replaceitem block ~1 ~-2 ~2 slot.container 1 coal 16
replaceitem block ~1 ~-2 ~2 slot.container 2 blaze_rod 11
replaceitem block ~1 ~-2 ~2 slot.container 3 magma_cream 14
replaceitem block ~1 ~-2 ~2 slot.container 4 ghast_tear 11
replaceitem block ~1 ~-2 ~2 slot.container 5 gold_nugget 16
replaceitem block ~1 ~-2 ~2 slot.container 9 gold_ingot 16
replaceitem block ~1 ~-2 ~2 slot.container 10 quartz 16
replaceitem block ~1 ~-2 ~2 slot.container 11 nether_wart 13
replaceitem block ~1 ~-2 ~2 slot.container 12 obsidian 10
replaceitem block ~1 ~-2 ~2 slot.container 13 crying_obsidian 7
replaceitem block ~1 ~-2 ~2 slot.container 14 golden_apple 6
loot insert ~1 ~-2 ~2 loot "rsf/nether_wastes"
loot insert ~1 ~-2 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 nether_brick []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~12 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~12 ~-4 air []
fill ~-3 ~1 ~4 ~-3 ~12 ~4 air []
fill ~3 ~1 ~4 ~3 ~12 ~4 air []
fill ~-2 ~1 ~-3 ~-2 ~11 ~-3 chiseled_nether_bricks []
fill ~2 ~1 ~-3 ~2 ~11 ~-3 chiseled_nether_bricks []
fill ~-2 ~1 ~3 ~-2 ~11 ~3 chiseled_nether_bricks []
fill ~2 ~1 ~3 ~2 ~11 ~3 chiseled_nether_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 red_nether_brick []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 nether_brick []
fill ~0 ~17 ~0 ~0 ~17 ~0 glowstone []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 blackstone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 5x5x6) ---
fill ~-5 ~0 ~-5 ~-5 ~9 ~-5 nether_brick []
setblock ~-5 ~10 ~-5 magma []
setblock ~-5 ~11 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~10 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 glowstone []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~3 slot.container 0 ghast_tear 6
replaceitem block ~-2 ~1 ~3 slot.container 1 gold_nugget 19
replaceitem block ~-2 ~1 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-2 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-2 ~1 ~3 slot.container 4 ender_pearl 10
replaceitem block ~-2 ~1 ~3 slot.container 5 coal 19
replaceitem block ~-2 ~1 ~3 slot.container 9 golden_carrot 11
replaceitem block ~-2 ~1 ~3 slot.container 10 netherite_scrap 5
replaceitem block ~-2 ~1 ~3 slot.container 11 fire_charge 11
replaceitem block ~-2 ~1 ~3 slot.container 12 soul_lantern 10
replaceitem block ~-2 ~1 ~3 slot.container 13 gold_ingot 10
replaceitem block ~-2 ~1 ~3 slot.container 14 quartz 17
loot insert ~-2 ~1 ~3 loot "rsf/nether_wastes"
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 rotten_flesh 19
replaceitem block ~2 ~1 ~3 slot.container 1 bone 10
replaceitem block ~2 ~1 ~3 slot.container 2 ender_pearl 5
replaceitem block ~2 ~1 ~3 slot.container 3 coal 14
replaceitem block ~2 ~1 ~3 slot.container 4 blaze_rod 9
replaceitem block ~2 ~1 ~3 slot.container 5 magma_cream 12
replaceitem block ~2 ~1 ~3 slot.container 9 golden_carrot 9
replaceitem block ~2 ~1 ~3 slot.container 10 netherite_scrap 3
replaceitem block ~2 ~1 ~3 slot.container 11 fire_charge 9
replaceitem block ~2 ~1 ~3 slot.container 12 soul_lantern 8
replaceitem block ~2 ~1 ~3 slot.container 13 gold_ingot 15
replaceitem block ~2 ~1 ~3 slot.container 14 quartz 22
loot insert ~2 ~1 ~3 loot "rsf/nether_wastes"
loot insert ~2 ~1 ~3 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~-2 ~0
