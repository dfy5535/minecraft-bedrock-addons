# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3566/4224 | 主题内编号: b110/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双子附魔与酿造实验楼 (nether_wastes_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 nether_brick [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 red_nether_brick []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 coal 16
replaceitem block ~3 ~-3 ~0 slot.container 1 blaze_rod 11
replaceitem block ~3 ~-3 ~0 slot.container 2 magma_cream 14
replaceitem block ~3 ~-3 ~0 slot.container 3 ghast_tear 11
replaceitem block ~3 ~-3 ~0 slot.container 4 gold_nugget 16
replaceitem block ~3 ~-3 ~0 slot.container 5 rotten_flesh 13
replaceitem block ~3 ~-3 ~0 slot.container 9 golden_apple 5
replaceitem block ~3 ~-3 ~0 slot.container 10 golden_carrot 12
replaceitem block ~3 ~-3 ~0 slot.container 11 netherite_scrap 6
replaceitem block ~3 ~-3 ~0 slot.container 12 fire_charge 12
replaceitem block ~3 ~-3 ~0 slot.container 13 soul_lantern 4
replaceitem block ~3 ~-3 ~0 slot.container 14 gold_ingot 11
loot insert ~3 ~-3 ~0 loot "rsf/nether_wastes"
loot insert ~3 ~-3 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 nether_brick []
fill ~2 ~1 ~-5 ~6 ~8 ~5 nether_brick []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 red_nether_brick []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 nether_brick_slab []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 polished_blackstone_bricks []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 polished_blackstone_brick_slab []
setblock ~0 ~11 ~0 glowstone []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 red_nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~-8 ~0 ~-6 ~-8 ~8 ~-6 nether_brick []
setblock ~-8 ~9 ~-6 magma []
setblock ~-8 ~10 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 glowstone []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 10
replaceitem block ~-5 ~1 ~4 slot.container 1 coal 19
replaceitem block ~-5 ~1 ~4 slot.container 2 blaze_rod 6
replaceitem block ~-5 ~1 ~4 slot.container 3 magma_cream 9
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-5 ~1 ~4 slot.container 5 gold_nugget 19
replaceitem block ~-5 ~1 ~4 slot.container 9 fire_charge 9
replaceitem block ~-5 ~1 ~4 slot.container 10 soul_lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 12 quartz 22
replaceitem block ~-5 ~1 ~4 slot.container 13 nether_wart 12
replaceitem block ~-5 ~1 ~4 slot.container 14 obsidian 9
loot insert ~-5 ~1 ~4 loot "rsf/nether_wastes"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 blaze_rod 9
replaceitem block ~5 ~1 ~4 slot.container 1 magma_cream 12
replaceitem block ~5 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~5 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 19
replaceitem block ~5 ~1 ~4 slot.container 5 bone 10
replaceitem block ~5 ~1 ~4 slot.container 9 fire_charge 7
replaceitem block ~5 ~1 ~4 slot.container 10 soul_lantern 6
replaceitem block ~5 ~1 ~4 slot.container 11 gold_ingot 13
replaceitem block ~5 ~1 ~4 slot.container 12 quartz 20
replaceitem block ~5 ~1 ~4 slot.container 13 nether_wart 17
replaceitem block ~5 ~1 ~4 slot.container 14 obsidian 14
loot insert ~5 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~5 ~1 ~4 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~-2 ~0
