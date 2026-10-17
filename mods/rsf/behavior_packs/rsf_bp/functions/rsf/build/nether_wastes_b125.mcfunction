# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3581/4224 | 主题内编号: b125/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·巨型阶梯金字塔神王殿 (nether_wastes_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~12 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~12 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 quartz_block [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 quartz_block [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 quartz_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 nether_brick []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 bone 12
replaceitem block ~2 ~-3 ~3 slot.container 1 ender_pearl 7
replaceitem block ~2 ~-3 ~3 slot.container 2 coal 16
replaceitem block ~2 ~-3 ~3 slot.container 3 blaze_rod 11
replaceitem block ~2 ~-3 ~3 slot.container 4 magma_cream 14
replaceitem block ~2 ~-3 ~3 slot.container 5 ghast_tear 11
replaceitem block ~2 ~-3 ~3 slot.container 9 golden_apple 4
replaceitem block ~2 ~-3 ~3 slot.container 10 golden_carrot 11
replaceitem block ~2 ~-3 ~3 slot.container 11 netherite_scrap 5
replaceitem block ~2 ~-3 ~3 slot.container 12 fire_charge 11
replaceitem block ~2 ~-3 ~3 slot.container 13 soul_lantern 10
replaceitem block ~2 ~-3 ~3 slot.container 14 gold_ingot 10
loot insert ~2 ~-3 ~3 loot "rsf/nether_wastes"
loot insert ~2 ~-3 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 quartz_block []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 nether_brick []
fill ~-4 ~5 ~-5 ~4 ~9 ~5 nether_brick []
fill ~-4 ~1 ~-5 ~4 ~8 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 quartz_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~10 ~-7 ~6 ~10 ~7 nether_brick []
fill ~-5 ~11 ~-6 ~5 ~11 ~6 nether_brick []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 gilded_blackstone []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 quartz_pillar []
setblock ~0 ~4 ~-9 glowstone []
setblock ~0 ~5 ~-9 soul_lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 quartz_pillar []
setblock ~0 ~4 ~9 glowstone []
setblock ~0 ~5 ~9 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 quartz_pillar []
setblock ~-8 ~4 ~0 glowstone []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 quartz_pillar []
setblock ~8 ~4 ~0 glowstone []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~-8 ~-8 ~8 ~-8 nether_brick []
setblock ~-8 ~9 ~-8 magma []
setblock ~-8 ~10 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~0 ~1 ~0 gilded_blackstone []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 15
replaceitem block ~5 ~1 ~6 slot.container 1 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 2 coal 19
replaceitem block ~5 ~1 ~6 slot.container 3 blaze_rod 6
replaceitem block ~5 ~1 ~6 slot.container 4 magma_cream 9
replaceitem block ~5 ~1 ~6 slot.container 5 ghast_tear 6
replaceitem block ~5 ~1 ~6 slot.container 9 obsidian 12
replaceitem block ~5 ~1 ~6 slot.container 10 crying_obsidian 9
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 8
replaceitem block ~5 ~1 ~6 slot.container 12 golden_carrot 8
replaceitem block ~5 ~1 ~6 slot.container 13 netherite_scrap 2
replaceitem block ~5 ~1 ~6 slot.container 14 fire_charge 8
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~-4 ~0
