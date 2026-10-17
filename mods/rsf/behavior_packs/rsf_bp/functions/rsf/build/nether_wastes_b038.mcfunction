# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3494/4224 | 主题内编号: b038/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·四方凯旋衣冠冢 (nether_wastes_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 nether_brick [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 nether_brick [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 gold_nugget 16
replaceitem block ~0 ~-4 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-4 ~4 slot.container 2 bone 12
replaceitem block ~0 ~-4 ~4 slot.container 3 ender_pearl 7
replaceitem block ~0 ~-4 ~4 slot.container 4 coal 16
replaceitem block ~0 ~-4 ~4 slot.container 5 blaze_rod 11
replaceitem block ~0 ~-4 ~4 slot.container 9 obsidian 14
replaceitem block ~0 ~-4 ~4 slot.container 10 crying_obsidian 4
replaceitem block ~0 ~-4 ~4 slot.container 11 golden_apple 3
replaceitem block ~0 ~-4 ~4 slot.container 12 golden_carrot 10
replaceitem block ~0 ~-4 ~4 slot.container 13 netherite_scrap 4
replaceitem block ~0 ~-4 ~4 slot.container 14 fire_charge 10
loot insert ~0 ~-4 ~4 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 nether_brick []
fill ~-4 ~1 ~-2 ~4 ~8 ~2 nether_brick []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 nether_brick_fence []
setblock ~4 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 red_nether_brick []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 polished_blackstone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 glowstone []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_nether_brick []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_nether_bricks []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_nether_bricks []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 nether_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~-6 ~0 ~-6 ~-6 ~6 ~-6 nether_brick []
setblock ~-6 ~7 ~-6 magma []
setblock ~-6 ~8 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~7 ~0 soul_lantern []
fill ~-3 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 glowstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 1 coal 19
replaceitem block ~-3 ~1 ~4 slot.container 2 blaze_rod 6
replaceitem block ~-3 ~1 ~4 slot.container 3 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 5 gold_nugget 19
replaceitem block ~-3 ~1 ~4 slot.container 9 nether_wart 13
replaceitem block ~-3 ~1 ~4 slot.container 10 obsidian 10
replaceitem block ~-3 ~1 ~4 slot.container 11 crying_obsidian 7
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-3 ~1 ~4 slot.container 13 golden_carrot 13
replaceitem block ~-3 ~1 ~4 slot.container 14 netherite_scrap 7
loot insert ~-3 ~1 ~4 loot "rsf/nether_wastes"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 1 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 19
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 nether_wart 18
replaceitem block ~3 ~1 ~4 slot.container 10 obsidian 8
replaceitem block ~3 ~1 ~4 slot.container 11 crying_obsidian 5
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 13 golden_carrot 11
replaceitem block ~3 ~1 ~4 slot.container 14 netherite_scrap 5
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~1 ~4 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~-2 ~0
