# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3521/4224 | 主题内编号: b065/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·断柱露天古神庙废墟 (nether_wastes_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-9 ~7 ~9 ~9 air [] replace lava
fill ~-7 ~0 ~-9 ~7 ~9 ~9 air [] replace fire
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 quartz_block [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 quartz_block [] replace lava
fill ~-6 ~0 ~-8 ~6 ~0 ~8 quartz_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 polished_blackstone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 nether_brick []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 bone 12
replaceitem block ~3 ~-3 ~5 slot.container 1 ender_pearl 7
replaceitem block ~3 ~-3 ~5 slot.container 2 coal 16
replaceitem block ~3 ~-3 ~5 slot.container 3 blaze_rod 11
replaceitem block ~3 ~-3 ~5 slot.container 4 magma_cream 14
replaceitem block ~3 ~-3 ~5 slot.container 5 ghast_tear 11
replaceitem block ~3 ~-3 ~5 slot.container 9 netherite_scrap 4
replaceitem block ~3 ~-3 ~5 slot.container 10 fire_charge 10
replaceitem block ~3 ~-3 ~5 slot.container 11 soul_lantern 9
replaceitem block ~3 ~-3 ~5 slot.container 12 gold_ingot 16
replaceitem block ~3 ~-3 ~5 slot.container 13 quartz 16
replaceitem block ~3 ~-3 ~5 slot.container 14 nether_wart 13
loot insert ~3 ~-3 ~5 loot "rsf/nether_wastes"
loot insert ~3 ~-3 ~5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 nether_brick []
fill ~-5 ~1 ~-7 ~-5 ~5 ~-7 quartz_pillar []
fill ~-5 ~1 ~7 ~-5 ~5 ~7 quartz_pillar []
fill ~-3 ~1 ~-7 ~-3 ~5 ~-7 quartz_pillar []
fill ~-3 ~1 ~7 ~-3 ~5 ~7 quartz_pillar []
fill ~-1 ~1 ~-7 ~-1 ~5 ~-7 quartz_pillar []
fill ~-1 ~1 ~7 ~-1 ~5 ~7 quartz_pillar []
fill ~1 ~1 ~-7 ~1 ~5 ~-7 quartz_pillar []
fill ~1 ~1 ~7 ~1 ~5 ~7 quartz_pillar []
fill ~3 ~1 ~-7 ~3 ~5 ~-7 quartz_pillar []
fill ~3 ~1 ~7 ~3 ~5 ~7 quartz_pillar []
fill ~5 ~1 ~-7 ~5 ~5 ~-7 quartz_pillar []
fill ~5 ~1 ~7 ~5 ~5 ~7 quartz_pillar []
fill ~-5 ~1 ~-5 ~-5 ~5 ~-5 quartz_pillar []
fill ~5 ~1 ~-5 ~5 ~5 ~-5 quartz_pillar []
fill ~-5 ~1 ~-3 ~-5 ~5 ~-3 quartz_pillar []
fill ~5 ~1 ~-3 ~5 ~5 ~-3 quartz_pillar []
fill ~-5 ~1 ~-1 ~-5 ~5 ~-1 quartz_pillar []
fill ~5 ~1 ~-1 ~5 ~5 ~-1 quartz_pillar []
fill ~-5 ~1 ~1 ~-5 ~5 ~1 quartz_pillar []
fill ~5 ~1 ~1 ~5 ~5 ~1 quartz_pillar []
fill ~-5 ~1 ~3 ~-5 ~5 ~3 quartz_pillar []
fill ~5 ~1 ~3 ~5 ~5 ~3 quartz_pillar []
fill ~-5 ~1 ~5 ~-5 ~5 ~5 quartz_pillar []
fill ~5 ~1 ~5 ~5 ~5 ~5 quartz_pillar []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 quartz_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~-8 ~-7 ~8 ~-8 nether_brick []
setblock ~-7 ~9 ~-8 magma []
setblock ~-7 ~10 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 gilded_blackstone []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 magma_cream 9
replaceitem block ~4 ~1 ~6 slot.container 1 ghast_tear 6
replaceitem block ~4 ~1 ~6 slot.container 2 gold_nugget 19
replaceitem block ~4 ~1 ~6 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~6 slot.container 4 bone 15
replaceitem block ~4 ~1 ~6 slot.container 5 ender_pearl 10
replaceitem block ~4 ~1 ~6 slot.container 9 obsidian 8
replaceitem block ~4 ~1 ~6 slot.container 10 crying_obsidian 5
replaceitem block ~4 ~1 ~6 slot.container 11 golden_apple 4
replaceitem block ~4 ~1 ~6 slot.container 12 golden_carrot 11
replaceitem block ~4 ~1 ~6 slot.container 13 netherite_scrap 5
replaceitem block ~4 ~1 ~6 slot.container 14 fire_charge 11
loot insert ~4 ~1 ~6 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~-3 ~0
