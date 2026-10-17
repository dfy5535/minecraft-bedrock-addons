# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3490/4224 | 主题内编号: b034/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双子对称铭文方尖碑 (nether_wastes_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 nether_brick [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 nether_brick [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 polished_blackstone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 ender_pearl 7
replaceitem block ~3 ~-2 ~2 slot.container 1 coal 16
replaceitem block ~3 ~-2 ~2 slot.container 2 blaze_rod 11
replaceitem block ~3 ~-2 ~2 slot.container 3 magma_cream 14
replaceitem block ~3 ~-2 ~2 slot.container 4 ghast_tear 11
replaceitem block ~3 ~-2 ~2 slot.container 5 gold_nugget 16
replaceitem block ~3 ~-2 ~2 slot.container 9 crying_obsidian 4
replaceitem block ~3 ~-2 ~2 slot.container 10 golden_apple 3
replaceitem block ~3 ~-2 ~2 slot.container 11 golden_carrot 10
replaceitem block ~3 ~-2 ~2 slot.container 12 netherite_scrap 4
replaceitem block ~3 ~-2 ~2 slot.container 13 fire_charge 10
replaceitem block ~3 ~-2 ~2 slot.container 14 soul_lantern 9
loot insert ~3 ~-2 ~2 loot "rsf/nether_wastes"
loot insert ~3 ~-2 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~11 ~4 nether_brick []
fill ~2 ~1 ~-4 ~5 ~11 ~4 nether_brick []
fill ~-4 ~1 ~-3 ~-3 ~10 ~3 air []
fill ~3 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 red_nether_brick []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 red_nether_brick []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 nether_brick []
fill ~0 ~16 ~0 ~0 ~16 ~0 glowstone []
setblock ~0 ~17 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 blackstone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~0 ~-7 ~-7 ~7 ~-7 nether_brick []
setblock ~-7 ~8 ~-7 magma []
setblock ~-7 ~9 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~3 slot.container 1 gold_nugget 19
replaceitem block ~-4 ~1 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 10
replaceitem block ~-4 ~1 ~3 slot.container 5 coal 19
replaceitem block ~-4 ~1 ~3 slot.container 9 gold_ingot 14
replaceitem block ~-4 ~1 ~3 slot.container 10 quartz 21
replaceitem block ~-4 ~1 ~3 slot.container 11 nether_wart 18
replaceitem block ~-4 ~1 ~3 slot.container 12 obsidian 8
replaceitem block ~-4 ~1 ~3 slot.container 13 crying_obsidian 5
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 4
loot insert ~-4 ~1 ~3 loot "rsf/nether_wastes"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 rotten_flesh 19
replaceitem block ~4 ~1 ~3 slot.container 1 bone 10
replaceitem block ~4 ~1 ~3 slot.container 2 ender_pearl 5
replaceitem block ~4 ~1 ~3 slot.container 3 coal 14
replaceitem block ~4 ~1 ~3 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~3 slot.container 5 magma_cream 12
replaceitem block ~4 ~1 ~3 slot.container 9 gold_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 10 quartz 19
replaceitem block ~4 ~1 ~3 slot.container 11 nether_wart 16
replaceitem block ~4 ~1 ~3 slot.container 12 obsidian 13
replaceitem block ~4 ~1 ~3 slot.container 13 crying_obsidian 10
replaceitem block ~4 ~1 ~3 slot.container 14 golden_apple 2
loot insert ~4 ~1 ~3 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~3 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
