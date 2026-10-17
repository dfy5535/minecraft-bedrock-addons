# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3469/4224 | 主题内编号: b013/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·地底熔炉苦工地牢 (nether_wastes_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-9 ~7 ~9 ~9 air [] replace lava
fill ~-7 ~0 ~-9 ~7 ~9 ~9 air [] replace fire
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 quartz_block [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 quartz_block [] replace lava
fill ~-6 ~0 ~-8 ~6 ~0 ~8 quartz_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 polished_blackstone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 nether_brick []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 lava []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 coal 16
replaceitem block ~-2 ~-4 ~3 slot.container 1 blaze_rod 11
replaceitem block ~-2 ~-4 ~3 slot.container 2 magma_cream 14
replaceitem block ~-2 ~-4 ~3 slot.container 3 ghast_tear 11
replaceitem block ~-2 ~-4 ~3 slot.container 4 gold_nugget 16
replaceitem block ~-2 ~-4 ~3 slot.container 5 rotten_flesh 13
replaceitem block ~-2 ~-4 ~3 slot.container 9 soul_lantern 8
replaceitem block ~-2 ~-4 ~3 slot.container 10 gold_ingot 15
replaceitem block ~-2 ~-4 ~3 slot.container 11 quartz 22
replaceitem block ~-2 ~-4 ~3 slot.container 12 nether_wart 12
replaceitem block ~-2 ~-4 ~3 slot.container 13 obsidian 9
replaceitem block ~-2 ~-4 ~3 slot.container 14 crying_obsidian 6
loot insert ~-2 ~-4 ~3 loot "rsf/nether_wastes"
loot insert ~-2 ~-4 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~6 ~7 quartz_block []
fill ~-4 ~1 ~-6 ~4 ~5 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~6 ~-7 quartz_pillar []
fill ~-5 ~1 ~7 ~-5 ~6 ~7 quartz_pillar []
fill ~5 ~1 ~-7 ~5 ~6 ~-7 quartz_pillar []
fill ~5 ~1 ~7 ~5 ~6 ~7 quartz_pillar []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 nether_brick_fence []
setblock ~5 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 nether_brick []
fill ~-5 ~7 ~-7 ~5 ~7 ~7 nether_brick_fence []
fill ~-4 ~7 ~-6 ~4 ~7 ~6 air []
setblock ~-5 ~7 ~-7 quartz_pillar []
setblock ~-5 ~8 ~-7 soul_lantern []
setblock ~-5 ~7 ~7 quartz_pillar []
setblock ~-5 ~8 ~7 soul_lantern []
setblock ~5 ~7 ~-7 quartz_pillar []
setblock ~5 ~8 ~-7 soul_lantern []
setblock ~5 ~7 ~7 quartz_pillar []
setblock ~5 ~8 ~7 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 nether_brick []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x10x3) ---
fill ~-7 ~0 ~-10 ~-7 ~6 ~-10 nether_brick []
setblock ~-7 ~7 ~-10 magma []
setblock ~-7 ~8 ~-10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 bone 15
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 10
replaceitem block ~4 ~1 ~6 slot.container 2 coal 19
replaceitem block ~4 ~1 ~6 slot.container 3 blaze_rod 6
replaceitem block ~4 ~1 ~6 slot.container 4 magma_cream 9
replaceitem block ~4 ~1 ~6 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~6 slot.container 9 netherite_scrap 5
replaceitem block ~4 ~1 ~6 slot.container 10 fire_charge 11
replaceitem block ~4 ~1 ~6 slot.container 11 soul_lantern 10
replaceitem block ~4 ~1 ~6 slot.container 12 gold_ingot 10
replaceitem block ~4 ~1 ~6 slot.container 13 quartz 17
replaceitem block ~4 ~1 ~6 slot.container 14 nether_wart 14
loot insert ~4 ~1 ~6 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
