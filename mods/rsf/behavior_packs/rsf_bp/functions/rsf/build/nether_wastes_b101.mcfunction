# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3557/4224 | 主题内编号: b101/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·L型驻军兵营军械所 (nether_wastes_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
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
replaceitem block ~3 ~-3 ~4 slot.container 0 magma_cream 14
replaceitem block ~3 ~-3 ~4 slot.container 1 ghast_tear 11
replaceitem block ~3 ~-3 ~4 slot.container 2 gold_nugget 16
replaceitem block ~3 ~-3 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~3 ~-3 ~4 slot.container 4 bone 12
replaceitem block ~3 ~-3 ~4 slot.container 5 ender_pearl 7
replaceitem block ~3 ~-3 ~4 slot.container 9 golden_apple 6
replaceitem block ~3 ~-3 ~4 slot.container 10 golden_carrot 13
replaceitem block ~3 ~-3 ~4 slot.container 11 netherite_scrap 7
replaceitem block ~3 ~-3 ~4 slot.container 12 fire_charge 6
replaceitem block ~3 ~-3 ~4 slot.container 13 soul_lantern 5
replaceitem block ~3 ~-3 ~4 slot.container 14 gold_ingot 12
loot insert ~3 ~-3 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~7 ~6 quartz_block []
fill ~-5 ~1 ~0 ~5 ~6 ~6 nether_brick []
fill ~-4 ~1 ~-5 ~-1 ~6 ~5 air []
fill ~-1 ~1 ~1 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 red_nether_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 nether_brick []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~-7 ~-7 ~9 ~-7 nether_brick []
setblock ~-7 ~10 ~-7 magma []
setblock ~-7 ~11 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 2 coal 19
replaceitem block ~4 ~1 ~5 slot.container 3 blaze_rod 6
replaceitem block ~4 ~1 ~5 slot.container 4 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 9 quartz 17
replaceitem block ~4 ~1 ~5 slot.container 10 nether_wart 14
replaceitem block ~4 ~1 ~5 slot.container 11 obsidian 11
replaceitem block ~4 ~1 ~5 slot.container 12 crying_obsidian 8
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 14 golden_carrot 14
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~-3 ~0
