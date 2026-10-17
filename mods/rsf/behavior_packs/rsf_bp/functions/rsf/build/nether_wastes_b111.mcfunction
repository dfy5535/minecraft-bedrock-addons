# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3567/4224 | 主题内编号: b111/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·地下禁忌书库与炼药室 (nether_wastes_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks []
fill ~-4 ~-6 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-6 ~0 lantern []
setblock ~3 ~-6 ~0 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 bone 12
replaceitem block ~0 ~-4 ~4 slot.container 1 ender_pearl 7
replaceitem block ~0 ~-4 ~4 slot.container 2 coal 16
replaceitem block ~0 ~-4 ~4 slot.container 3 blaze_rod 11
replaceitem block ~0 ~-4 ~4 slot.container 4 magma_cream 14
replaceitem block ~0 ~-4 ~4 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-4 ~4 slot.container 9 obsidian 11
replaceitem block ~0 ~-4 ~4 slot.container 10 crying_obsidian 8
replaceitem block ~0 ~-4 ~4 slot.container 11 golden_apple 7
replaceitem block ~0 ~-4 ~4 slot.container 12 golden_carrot 14
replaceitem block ~0 ~-4 ~4 slot.container 13 netherite_scrap 1
replaceitem block ~0 ~-4 ~4 slot.container 14 fire_charge 7
loot insert ~0 ~-4 ~4 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~4 loot "chests/nether_bridge"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 bone 10
replaceitem block ~0 ~-4 ~-4 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-4 ~-4 slot.container 2 coal 14
replaceitem block ~0 ~-4 ~-4 slot.container 3 blaze_rod 9
replaceitem block ~0 ~-4 ~-4 slot.container 4 magma_cream 12
replaceitem block ~0 ~-4 ~-4 slot.container 5 ghast_tear 9
replaceitem block ~0 ~-4 ~-4 slot.container 9 obsidian 10
replaceitem block ~0 ~-4 ~-4 slot.container 10 crying_obsidian 7
replaceitem block ~0 ~-4 ~-4 slot.container 11 golden_apple 6
replaceitem block ~0 ~-4 ~-4 slot.container 12 golden_carrot 13
replaceitem block ~0 ~-4 ~-4 slot.container 13 netherite_scrap 7
replaceitem block ~0 ~-4 ~-4 slot.container 14 fire_charge 6
loot insert ~0 ~-4 ~-4 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 nether_brick []
fill ~0 ~1 ~-6 ~0 ~2 ~6 nether_brick []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 nether_brick []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 red_nether_brick []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gold_block []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-7 ~0 ~-8 ~-7 ~9 ~-8 nether_brick []
setblock ~-7 ~10 ~-8 magma []
setblock ~-7 ~11 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 coal 19
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 6
replaceitem block ~4 ~1 ~5 slot.container 2 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 4 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 9 quartz 20
replaceitem block ~4 ~1 ~5 slot.container 10 nether_wart 17
replaceitem block ~4 ~1 ~5 slot.container 11 obsidian 14
replaceitem block ~4 ~1 ~5 slot.container 12 crying_obsidian 4
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 14 golden_carrot 10
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon wither_skeleton ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
