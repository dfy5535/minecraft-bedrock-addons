# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3565/4224 | 主题内编号: b109/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·环柱能量矩阵奥术厅 (nether_wastes_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 quartz_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 nether_brick []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 magma_cream 14
replaceitem block ~3 ~-3 ~4 slot.container 1 ghast_tear 11
replaceitem block ~3 ~-3 ~4 slot.container 2 gold_nugget 16
replaceitem block ~3 ~-3 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~3 ~-3 ~4 slot.container 4 bone 12
replaceitem block ~3 ~-3 ~4 slot.container 5 ender_pearl 7
replaceitem block ~3 ~-3 ~4 slot.container 9 soul_lantern 9
replaceitem block ~3 ~-3 ~4 slot.container 10 gold_ingot 16
replaceitem block ~3 ~-3 ~4 slot.container 11 quartz 16
replaceitem block ~3 ~-3 ~4 slot.container 12 nether_wart 13
replaceitem block ~3 ~-3 ~4 slot.container 13 obsidian 10
replaceitem block ~3 ~-3 ~4 slot.container 14 crying_obsidian 7
loot insert ~3 ~-3 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 nether_brick []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 quartz_pillar []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 quartz_pillar []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 quartz_pillar []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 quartz_pillar []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 quartz_pillar []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 quartz_pillar []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 quartz_pillar []
fill ~1 ~1 ~6 ~1 ~7 ~6 quartz_pillar []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 quartz_pillar []
fill ~3 ~1 ~6 ~3 ~7 ~6 quartz_pillar []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 quartz_pillar []
fill ~5 ~1 ~6 ~5 ~7 ~6 quartz_pillar []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 quartz_pillar []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 quartz_pillar []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 quartz_pillar []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 quartz_pillar []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 quartz_pillar []
fill ~5 ~1 ~0 ~5 ~7 ~0 quartz_pillar []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 quartz_pillar []
fill ~5 ~1 ~2 ~5 ~7 ~2 quartz_pillar []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 quartz_pillar []
fill ~5 ~1 ~4 ~5 ~7 ~4 quartz_pillar []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 nether_brick []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 quartz_block []
fill ~0 ~14 ~0 ~0 ~14 ~0 gilded_blackstone []
setblock ~0 ~15 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~4 ~-8 quartz_pillar []
setblock ~-7 ~5 ~-8 soul_lantern []
fill ~-7 ~0 ~8 ~-7 ~4 ~8 quartz_pillar []
setblock ~-7 ~5 ~8 soul_lantern []
fill ~7 ~0 ~-8 ~7 ~4 ~-8 quartz_pillar []
setblock ~7 ~5 ~-8 soul_lantern []
fill ~7 ~0 ~8 ~7 ~4 ~8 quartz_pillar []
setblock ~7 ~5 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~-7 ~0 ~-9 ~-7 ~7 ~-9 nether_brick []
setblock ~-7 ~8 ~-9 magma []
setblock ~-7 ~9 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gilded_blackstone []
setblock ~0 ~1 ~0 glowstone []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 2 coal 19
replaceitem block ~4 ~1 ~5 slot.container 3 blaze_rod 6
replaceitem block ~4 ~1 ~5 slot.container 4 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 10 golden_carrot 11
replaceitem block ~4 ~1 ~5 slot.container 11 netherite_scrap 5
replaceitem block ~4 ~1 ~5 slot.container 12 fire_charge 11
replaceitem block ~4 ~1 ~5 slot.container 13 soul_lantern 10
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 10
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
