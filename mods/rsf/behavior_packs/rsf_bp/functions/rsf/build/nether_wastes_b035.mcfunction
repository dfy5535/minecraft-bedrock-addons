# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3491/4224 | 主题内编号: b035/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·巨石垒砌古战石冢 (nether_wastes_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace fire
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 magma_cream 14
replaceitem block ~0 ~-4 ~3 slot.container 1 ghast_tear 11
replaceitem block ~0 ~-4 ~3 slot.container 2 gold_nugget 16
replaceitem block ~0 ~-4 ~3 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-4 ~3 slot.container 4 bone 12
replaceitem block ~0 ~-4 ~3 slot.container 5 ender_pearl 7
replaceitem block ~0 ~-4 ~3 slot.container 9 golden_apple 6
replaceitem block ~0 ~-4 ~3 slot.container 10 golden_carrot 13
replaceitem block ~0 ~-4 ~3 slot.container 11 netherite_scrap 7
replaceitem block ~0 ~-4 ~3 slot.container 12 fire_charge 6
replaceitem block ~0 ~-4 ~3 slot.container 13 soul_lantern 5
replaceitem block ~0 ~-4 ~3 slot.container 14 gold_ingot 12
loot insert ~0 ~-4 ~3 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~3 loot "chests/nether_bridge"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 magma_cream 12
replaceitem block ~0 ~-4 ~-3 slot.container 1 ghast_tear 9
replaceitem block ~0 ~-4 ~-3 slot.container 2 gold_nugget 22
replaceitem block ~0 ~-4 ~-3 slot.container 3 rotten_flesh 19
replaceitem block ~0 ~-4 ~-3 slot.container 4 bone 10
replaceitem block ~0 ~-4 ~-3 slot.container 5 ender_pearl 5
replaceitem block ~0 ~-4 ~-3 slot.container 9 golden_apple 5
replaceitem block ~0 ~-4 ~-3 slot.container 10 golden_carrot 12
replaceitem block ~0 ~-4 ~-3 slot.container 11 netherite_scrap 6
replaceitem block ~0 ~-4 ~-3 slot.container 12 fire_charge 12
replaceitem block ~0 ~-4 ~-3 slot.container 13 soul_lantern 4
replaceitem block ~0 ~-4 ~-3 slot.container 14 gold_ingot 11
loot insert ~0 ~-4 ~-3 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~-3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 polished_blackstone_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 gilded_blackstone []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 gilded_blackstone []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 gilded_blackstone []
fill ~3 ~1 ~4 ~3 ~7 ~4 gilded_blackstone []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 nether_brick []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 red_nether_brick []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~-6 ~0 ~-6 ~-6 ~8 ~-6 nether_brick []
setblock ~-6 ~9 ~-6 magma []
setblock ~-6 ~10 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~-2 ~1 ~4 anvil []
setblock ~2 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gold_nugget 19
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 10
replaceitem block ~3 ~1 ~4 slot.container 4 coal 19
replaceitem block ~3 ~1 ~4 slot.container 5 blaze_rod 6
replaceitem block ~3 ~1 ~4 slot.container 9 obsidian 13
replaceitem block ~3 ~1 ~4 slot.container 10 crying_obsidian 10
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 2
replaceitem block ~3 ~1 ~4 slot.container 12 golden_carrot 9
replaceitem block ~3 ~1 ~4 slot.container 13 netherite_scrap 3
replaceitem block ~3 ~1 ~4 slot.container 14 fire_charge 9
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~-4 ~0
