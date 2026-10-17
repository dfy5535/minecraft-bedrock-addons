# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3515/4224 | 主题内编号: b059/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·阶梯金字塔法老墓室 (nether_wastes_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 nether_brick []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_lantern []
setblock ~4 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 blaze_rod 11
replaceitem block ~0 ~-4 ~5 slot.container 1 magma_cream 14
replaceitem block ~0 ~-4 ~5 slot.container 2 ghast_tear 11
replaceitem block ~0 ~-4 ~5 slot.container 3 gold_nugget 16
replaceitem block ~0 ~-4 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~0 ~-4 ~5 slot.container 5 bone 12
replaceitem block ~0 ~-4 ~5 slot.container 9 gold_ingot 10
replaceitem block ~0 ~-4 ~5 slot.container 10 quartz 17
replaceitem block ~0 ~-4 ~5 slot.container 11 nether_wart 14
replaceitem block ~0 ~-4 ~5 slot.container 12 obsidian 11
replaceitem block ~0 ~-4 ~5 slot.container 13 crying_obsidian 8
replaceitem block ~0 ~-4 ~5 slot.container 14 golden_apple 7
loot insert ~0 ~-4 ~5 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~5 loot "chests/nether_bridge"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 blaze_rod 9
replaceitem block ~0 ~-4 ~-5 slot.container 1 magma_cream 12
replaceitem block ~0 ~-4 ~-5 slot.container 2 ghast_tear 9
replaceitem block ~0 ~-4 ~-5 slot.container 3 gold_nugget 22
replaceitem block ~0 ~-4 ~-5 slot.container 4 rotten_flesh 19
replaceitem block ~0 ~-4 ~-5 slot.container 5 bone 10
replaceitem block ~0 ~-4 ~-5 slot.container 9 gold_ingot 16
replaceitem block ~0 ~-4 ~-5 slot.container 10 quartz 16
replaceitem block ~0 ~-4 ~-5 slot.container 11 nether_wart 13
replaceitem block ~0 ~-4 ~-5 slot.container 12 obsidian 10
replaceitem block ~0 ~-4 ~-5 slot.container 13 crying_obsidian 7
replaceitem block ~0 ~-4 ~-5 slot.container 14 golden_apple 6
loot insert ~0 ~-4 ~-5 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~-5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 polished_blackstone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 nether_brick []
fill ~-4 ~5 ~-5 ~4 ~7 ~5 red_nether_brick []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 polished_blackstone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 nether_brick []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 red_nether_brick []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 gilded_blackstone []
setblock ~-8 ~5 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 gilded_blackstone []
setblock ~-8 ~5 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 gilded_blackstone []
setblock ~8 ~5 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~4 ~9 gilded_blackstone []
setblock ~8 ~5 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~-8 ~-8 ~7 ~-8 nether_brick []
setblock ~-8 ~8 ~-8 magma []
setblock ~-8 ~9 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 soul_lantern []
fill ~-5 ~1 ~6 ~-1 ~2 ~6 barrel ["facing_direction"=2]
setblock ~0 ~1 ~6 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gold_nugget 19
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 2 bone 15
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 4 coal 19
replaceitem block ~5 ~1 ~6 slot.container 5 blaze_rod 6
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 10 golden_carrot 10
replaceitem block ~5 ~1 ~6 slot.container 11 netherite_scrap 4
replaceitem block ~5 ~1 ~6 slot.container 12 fire_charge 10
replaceitem block ~5 ~1 ~6 slot.container 13 soul_lantern 9
replaceitem block ~5 ~1 ~6 slot.container 14 gold_ingot 16
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~-4 ~0
