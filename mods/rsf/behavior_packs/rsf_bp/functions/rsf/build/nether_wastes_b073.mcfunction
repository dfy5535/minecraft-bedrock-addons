# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3529/4224 | 主题内编号: b073/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·八方图腾圣火石阵 (nether_wastes_totem_eight_pillars)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
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
replaceitem block ~3 ~-3 ~4 slot.container 0 bone 12
replaceitem block ~3 ~-3 ~4 slot.container 1 ender_pearl 7
replaceitem block ~3 ~-3 ~4 slot.container 2 coal 16
replaceitem block ~3 ~-3 ~4 slot.container 3 blaze_rod 11
replaceitem block ~3 ~-3 ~4 slot.container 4 magma_cream 14
replaceitem block ~3 ~-3 ~4 slot.container 5 ghast_tear 11
replaceitem block ~3 ~-3 ~4 slot.container 9 quartz 20
replaceitem block ~3 ~-3 ~4 slot.container 10 nether_wart 17
replaceitem block ~3 ~-3 ~4 slot.container 11 obsidian 14
replaceitem block ~3 ~-3 ~4 slot.container 12 crying_obsidian 4
replaceitem block ~3 ~-3 ~4 slot.container 13 golden_apple 3
replaceitem block ~3 ~-3 ~4 slot.container 14 golden_carrot 10
loot insert ~3 ~-3 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 quartz_block []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 air []
fill ~5 ~1 ~6 ~5 ~8 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 quartz_pillar []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 quartz_pillar []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 quartz_pillar []
fill ~4 ~1 ~5 ~4 ~7 ~5 quartz_pillar []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 nether_brick []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 nether_brick_fence []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 quartz_pillar []
setblock ~-5 ~9 ~-6 soul_lantern []
setblock ~-5 ~8 ~6 quartz_pillar []
setblock ~-5 ~9 ~6 soul_lantern []
setblock ~5 ~8 ~-6 quartz_pillar []
setblock ~5 ~9 ~-6 soul_lantern []
setblock ~5 ~8 ~6 quartz_pillar []
setblock ~5 ~9 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 quartz_pillar []
setblock ~0 ~4 ~-8 glowstone []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 quartz_pillar []
setblock ~0 ~4 ~8 glowstone []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 quartz_pillar []
setblock ~-7 ~4 ~0 glowstone []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 quartz_pillar []
setblock ~7 ~4 ~0 glowstone []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-7 ~0 ~-9 ~-7 ~6 ~-9 nether_brick []
setblock ~-7 ~7 ~-9 magma []
setblock ~-7 ~8 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 gilded_blackstone []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 1 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 2 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 9 netherite_scrap 2
replaceitem block ~4 ~1 ~5 slot.container 10 fire_charge 8
replaceitem block ~4 ~1 ~5 slot.container 11 soul_lantern 7
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 13 quartz 21
replaceitem block ~4 ~1 ~5 slot.container 14 nether_wart 18
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
