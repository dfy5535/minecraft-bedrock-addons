# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3481/4224 | 主题内编号: b025/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·雉堞女墙四方哨塔 (nether_wastes_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~13 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~13 ~6 air [] replace fire
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 quartz_block [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 quartz_block [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 polished_blackstone_bricks []
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
fill ~-3 ~1 ~-4 ~3 ~10 ~4 quartz_block []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 quartz_pillar []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 quartz_pillar []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 quartz_pillar []
fill ~3 ~1 ~4 ~3 ~10 ~4 quartz_pillar []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 nether_brick_fence []
setblock ~3 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~10 ~-4 ~3 ~10 ~4 nether_brick []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 nether_brick_fence []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~-3 ~11 ~-4 quartz_pillar []
setblock ~-3 ~12 ~-4 soul_lantern []
setblock ~-3 ~11 ~4 quartz_pillar []
setblock ~-3 ~12 ~4 soul_lantern []
setblock ~3 ~11 ~-4 quartz_pillar []
setblock ~3 ~12 ~-4 soul_lantern []
setblock ~3 ~11 ~4 quartz_pillar []
setblock ~3 ~12 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 nether_brick []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 quartz_pillar []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 quartz_pillar []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 quartz_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 5x7x5) ---
fill ~-5 ~0 ~-7 ~-5 ~8 ~-7 nether_brick []
setblock ~-5 ~9 ~-7 magma []
setblock ~-5 ~10 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 magma_cream 9
replaceitem block ~2 ~1 ~3 slot.container 1 ghast_tear 6
replaceitem block ~2 ~1 ~3 slot.container 2 gold_nugget 19
replaceitem block ~2 ~1 ~3 slot.container 3 rotten_flesh 16
replaceitem block ~2 ~1 ~3 slot.container 4 bone 15
replaceitem block ~2 ~1 ~3 slot.container 5 ender_pearl 10
replaceitem block ~2 ~1 ~3 slot.container 9 obsidian 10
replaceitem block ~2 ~1 ~3 slot.container 10 crying_obsidian 7
replaceitem block ~2 ~1 ~3 slot.container 11 golden_apple 6
replaceitem block ~2 ~1 ~3 slot.container 12 golden_carrot 13
replaceitem block ~2 ~1 ~3 slot.container 13 netherite_scrap 7
replaceitem block ~2 ~1 ~3 slot.container 14 fire_charge 6
loot insert ~2 ~1 ~3 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
