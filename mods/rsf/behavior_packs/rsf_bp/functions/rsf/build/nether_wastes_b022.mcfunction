# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3478/4224 | 主题内编号: b022/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·廊柱书库秘藏室 (nether_wastes_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 nether_brick [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 quartz_block []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 gilded_blackstone []
setblock ~-4 ~-5 ~-5 soul_lantern []
setblock ~4 ~-5 ~5 soul_lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 bone 12
replaceitem block ~0 ~-3 ~5 slot.container 1 ender_pearl 7
replaceitem block ~0 ~-3 ~5 slot.container 2 coal 16
replaceitem block ~0 ~-3 ~5 slot.container 3 blaze_rod 11
replaceitem block ~0 ~-3 ~5 slot.container 4 magma_cream 14
replaceitem block ~0 ~-3 ~5 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-3 ~5 slot.container 9 golden_apple 7
replaceitem block ~0 ~-3 ~5 slot.container 10 golden_carrot 14
replaceitem block ~0 ~-3 ~5 slot.container 11 netherite_scrap 1
replaceitem block ~0 ~-3 ~5 slot.container 12 fire_charge 7
replaceitem block ~0 ~-3 ~5 slot.container 13 soul_lantern 6
replaceitem block ~0 ~-3 ~5 slot.container 14 gold_ingot 13
loot insert ~0 ~-3 ~5 loot "rsf/nether_wastes"
loot insert ~0 ~-3 ~5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 red_nether_brick []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 chiseled_nether_bricks []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 chiseled_nether_bricks []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 chiseled_nether_bricks []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 chiseled_nether_bricks []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 chiseled_nether_bricks []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 chiseled_nether_bricks []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 chiseled_nether_bricks []
fill ~1 ~1 ~6 ~1 ~6 ~6 chiseled_nether_bricks []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 chiseled_nether_bricks []
fill ~3 ~1 ~6 ~3 ~6 ~6 chiseled_nether_bricks []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 chiseled_nether_bricks []
fill ~5 ~1 ~6 ~5 ~6 ~6 chiseled_nether_bricks []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 chiseled_nether_bricks []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 chiseled_nether_bricks []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 chiseled_nether_bricks []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 chiseled_nether_bricks []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 chiseled_nether_bricks []
fill ~5 ~1 ~0 ~5 ~6 ~0 chiseled_nether_bricks []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 chiseled_nether_bricks []
fill ~5 ~1 ~2 ~5 ~6 ~2 chiseled_nether_bricks []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 chiseled_nether_bricks []
fill ~5 ~1 ~4 ~5 ~6 ~4 chiseled_nether_bricks []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 red_nether_brick []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 polished_blackstone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 glowstone []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_nether_brick []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 chiseled_nether_bricks []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 chiseled_nether_bricks []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 nether_brick_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~-7 ~0 ~-9 ~-7 ~5 ~-9 nether_brick []
setblock ~-7 ~6 ~-9 magma []
setblock ~-7 ~7 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 1 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 2 blaze_rod 6
replaceitem block ~-4 ~1 ~5 slot.container 3 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 9 crying_obsidian 10
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_carrot 9
replaceitem block ~-4 ~1 ~5 slot.container 12 netherite_scrap 3
replaceitem block ~-4 ~1 ~5 slot.container 13 fire_charge 9
replaceitem block ~-4 ~1 ~5 slot.container 14 soul_lantern 8
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 1 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 19
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 crying_obsidian 8
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 11 golden_carrot 14
replaceitem block ~4 ~1 ~5 slot.container 12 netherite_scrap 1
replaceitem block ~4 ~1 ~5 slot.container 13 fire_charge 7
replaceitem block ~4 ~1 ~5 slot.container 14 soul_lantern 6
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
