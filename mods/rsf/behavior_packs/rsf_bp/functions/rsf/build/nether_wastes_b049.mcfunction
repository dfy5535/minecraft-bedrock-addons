# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3505/4224 | 主题内编号: b049/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双坡顶林间猎人木屋 (nether_wastes_outpost_hunter_cabin)
# 建筑构造: 主体[rect_hall] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-8 ~6 ~9 ~8 air [] replace lava
fill ~-6 ~0 ~-8 ~6 ~9 ~8 air [] replace fire
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 quartz_block [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 quartz_block [] replace lava
fill ~-5 ~0 ~-7 ~5 ~0 ~7 quartz_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 polished_blackstone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 nether_brick []
fill ~-2 ~-5 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~2 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~4 slot.container 0 bone 12
replaceitem block ~2 ~-3 ~4 slot.container 1 ender_pearl 7
replaceitem block ~2 ~-3 ~4 slot.container 2 coal 16
replaceitem block ~2 ~-3 ~4 slot.container 3 blaze_rod 11
replaceitem block ~2 ~-3 ~4 slot.container 4 magma_cream 14
replaceitem block ~2 ~-3 ~4 slot.container 5 ghast_tear 11
replaceitem block ~2 ~-3 ~4 slot.container 9 soul_lantern 5
replaceitem block ~2 ~-3 ~4 slot.container 10 gold_ingot 12
replaceitem block ~2 ~-3 ~4 slot.container 11 quartz 19
replaceitem block ~2 ~-3 ~4 slot.container 12 nether_wart 16
replaceitem block ~2 ~-3 ~4 slot.container 13 obsidian 13
replaceitem block ~2 ~-3 ~4 slot.container 14 crying_obsidian 10
loot insert ~2 ~-3 ~4 loot "rsf/nether_wastes"
loot insert ~2 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~6 ~6 quartz_block []
fill ~-3 ~1 ~-5 ~3 ~5 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~6 ~-6 quartz_pillar []
fill ~-4 ~1 ~6 ~-4 ~6 ~6 quartz_pillar []
fill ~4 ~1 ~-6 ~4 ~6 ~-6 quartz_pillar []
fill ~4 ~1 ~6 ~4 ~6 ~6 quartz_pillar []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 nether_brick_fence []
setblock ~4 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~6 ~-5 ~-4 ~8 ~-5 quartz_pillar []
setblock ~-4 ~9 ~-5 soul_lantern []
fill ~-4 ~6 ~5 ~-4 ~8 ~5 quartz_pillar []
setblock ~-4 ~9 ~5 soul_lantern []
fill ~4 ~6 ~-5 ~4 ~8 ~-5 quartz_pillar []
setblock ~4 ~9 ~-5 soul_lantern []
fill ~4 ~6 ~5 ~4 ~8 ~5 quartz_pillar []
setblock ~4 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 polished_blackstone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x9x4) ---
fill ~-6 ~0 ~-9 ~-6 ~7 ~-9 nether_brick []
setblock ~-6 ~8 ~-9 magma []
setblock ~-6 ~9 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 magma_cream 9
replaceitem block ~3 ~1 ~5 slot.container 1 ghast_tear 6
replaceitem block ~3 ~1 ~5 slot.container 2 gold_nugget 19
replaceitem block ~3 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~5 slot.container 4 bone 15
replaceitem block ~3 ~1 ~5 slot.container 5 ender_pearl 10
replaceitem block ~3 ~1 ~5 slot.container 9 golden_apple 7
replaceitem block ~3 ~1 ~5 slot.container 10 golden_carrot 14
replaceitem block ~3 ~1 ~5 slot.container 11 netherite_scrap 1
replaceitem block ~3 ~1 ~5 slot.container 12 fire_charge 7
replaceitem block ~3 ~1 ~5 slot.container 13 soul_lantern 6
replaceitem block ~3 ~1 ~5 slot.container 14 gold_ingot 13
loot insert ~3 ~1 ~5 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
