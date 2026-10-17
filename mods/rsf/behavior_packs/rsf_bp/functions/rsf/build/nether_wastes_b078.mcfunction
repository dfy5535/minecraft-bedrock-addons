# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3534/4224 | 主题内编号: b078/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·下沉祭池图腾柱群 (nether_wastes_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 nether_brick [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 red_nether_brick []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 blaze_rod 11
replaceitem block ~-3 ~-3 ~4 slot.container 1 magma_cream 14
replaceitem block ~-3 ~-3 ~4 slot.container 2 ghast_tear 11
replaceitem block ~-3 ~-3 ~4 slot.container 3 gold_nugget 16
replaceitem block ~-3 ~-3 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~-3 ~-3 ~4 slot.container 5 bone 12
replaceitem block ~-3 ~-3 ~4 slot.container 9 fire_charge 6
replaceitem block ~-3 ~-3 ~4 slot.container 10 soul_lantern 5
replaceitem block ~-3 ~-3 ~4 slot.container 11 gold_ingot 12
replaceitem block ~-3 ~-3 ~4 slot.container 12 quartz 19
replaceitem block ~-3 ~-3 ~4 slot.container 13 nether_wart 16
replaceitem block ~-3 ~-3 ~4 slot.container 14 obsidian 13
loot insert ~-3 ~-3 ~4 loot "rsf/nether_wastes"
loot insert ~-3 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 nether_brick []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 red_nether_brick []
fill ~0 ~1 ~-6 ~0 ~2 ~6 red_nether_brick []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 nether_brick_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 polished_blackstone_bricks []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 polished_blackstone_brick_slab []
setblock ~0 ~12 ~0 glowstone []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~4 ~-8 chiseled_nether_bricks []
setblock ~-7 ~5 ~-8 soul_lantern []
fill ~-7 ~0 ~8 ~-7 ~4 ~8 chiseled_nether_bricks []
setblock ~-7 ~5 ~8 soul_lantern []
fill ~7 ~0 ~-8 ~7 ~4 ~-8 chiseled_nether_bricks []
setblock ~7 ~5 ~-8 soul_lantern []
fill ~7 ~0 ~8 ~7 ~4 ~8 chiseled_nether_bricks []
setblock ~7 ~5 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-7 ~0 ~-8 ~-7 ~6 ~-8 nether_brick []
setblock ~-7 ~7 ~-8 magma []
setblock ~-7 ~8 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 1 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 2 blaze_rod 6
replaceitem block ~-4 ~1 ~5 slot.container 3 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 9 nether_wart 18
replaceitem block ~-4 ~1 ~5 slot.container 10 obsidian 8
replaceitem block ~-4 ~1 ~5 slot.container 11 crying_obsidian 5
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~-4 ~1 ~5 slot.container 13 golden_carrot 11
replaceitem block ~-4 ~1 ~5 slot.container 14 netherite_scrap 5
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 1 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 19
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 nether_wart 16
replaceitem block ~4 ~1 ~5 slot.container 10 obsidian 13
replaceitem block ~4 ~1 ~5 slot.container 11 crying_obsidian 10
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 13 golden_carrot 9
replaceitem block ~4 ~1 ~5 slot.container 14 netherite_scrap 3
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
