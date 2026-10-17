# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3564/4224 | 主题内编号: b108/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·十字四相元素秘法殿 (nether_wastes_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_nether_brick [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

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
fill ~-2 ~1 ~-6 ~2 ~7 ~6 red_nether_brick []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 red_nether_brick []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 nether_brick_fence []
setblock ~5 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 nether_brick []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 quartz_block []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 magma []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 chiseled_nether_bricks []
setblock ~0 ~4 ~-8 gilded_blackstone []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 chiseled_nether_bricks []
setblock ~0 ~4 ~8 gilded_blackstone []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_nether_bricks []
setblock ~-7 ~4 ~0 gilded_blackstone []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_nether_bricks []
setblock ~7 ~4 ~0 gilded_blackstone []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-7 ~0 ~-8 ~-7 ~6 ~-8 nether_brick []
setblock ~-7 ~7 ~-8 magma []
setblock ~-7 ~8 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 16
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 3 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 4 blaze_rod 6
replaceitem block ~-4 ~1 ~5 slot.container 5 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 9 nether_wart 13
replaceitem block ~-4 ~1 ~5 slot.container 10 obsidian 10
replaceitem block ~-4 ~1 ~5 slot.container 11 crying_obsidian 7
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 6
replaceitem block ~-4 ~1 ~5 slot.container 13 golden_carrot 13
replaceitem block ~-4 ~1 ~5 slot.container 14 netherite_scrap 7
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 1 coal 14
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 3 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 5 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 9 nether_wart 18
replaceitem block ~4 ~1 ~5 slot.container 10 obsidian 8
replaceitem block ~4 ~1 ~5 slot.container 11 crying_obsidian 5
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 13 golden_carrot 11
replaceitem block ~4 ~1 ~5 slot.container 14 netherite_scrap 5
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
