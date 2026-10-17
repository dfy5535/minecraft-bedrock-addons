# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3519/4224 | 主题内编号: b063/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·方尖碑镇压古墓穴 (nether_wastes_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace fire
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
replaceitem block ~0 ~-4 ~3 slot.container 0 bone 12
replaceitem block ~0 ~-4 ~3 slot.container 1 ender_pearl 7
replaceitem block ~0 ~-4 ~3 slot.container 2 coal 16
replaceitem block ~0 ~-4 ~3 slot.container 3 blaze_rod 11
replaceitem block ~0 ~-4 ~3 slot.container 4 magma_cream 14
replaceitem block ~0 ~-4 ~3 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-4 ~3 slot.container 9 soul_lantern 8
replaceitem block ~0 ~-4 ~3 slot.container 10 gold_ingot 15
replaceitem block ~0 ~-4 ~3 slot.container 11 quartz 22
replaceitem block ~0 ~-4 ~3 slot.container 12 nether_wart 12
replaceitem block ~0 ~-4 ~3 slot.container 13 obsidian 9
replaceitem block ~0 ~-4 ~3 slot.container 14 crying_obsidian 6
loot insert ~0 ~-4 ~3 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~3 loot "chests/nether_bridge"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 bone 10
replaceitem block ~0 ~-4 ~-3 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-4 ~-3 slot.container 2 coal 14
replaceitem block ~0 ~-4 ~-3 slot.container 3 blaze_rod 9
replaceitem block ~0 ~-4 ~-3 slot.container 4 magma_cream 12
replaceitem block ~0 ~-4 ~-3 slot.container 5 ghast_tear 9
replaceitem block ~0 ~-4 ~-3 slot.container 9 soul_lantern 7
replaceitem block ~0 ~-4 ~-3 slot.container 10 gold_ingot 14
replaceitem block ~0 ~-4 ~-3 slot.container 11 quartz 21
replaceitem block ~0 ~-4 ~-3 slot.container 12 nether_wart 18
replaceitem block ~0 ~-4 ~-3 slot.container 13 obsidian 8
replaceitem block ~0 ~-4 ~-3 slot.container 14 crying_obsidian 5
loot insert ~0 ~-4 ~-3 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~-3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 polished_blackstone_bricks []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~10 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~10 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~10 ~5 air []
fill ~4 ~1 ~5 ~4 ~10 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 gilded_blackstone []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 gilded_blackstone []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 gilded_blackstone []
fill ~3 ~1 ~4 ~3 ~9 ~4 gilded_blackstone []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 nether_brick []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 polished_blackstone_bricks []
fill ~0 ~15 ~0 ~0 ~15 ~0 gold_block []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-6 ~0 ~-7 ~-6 ~6 ~-7 nether_brick []
setblock ~-6 ~7 ~-7 magma []
setblock ~-6 ~8 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 coal 19
replaceitem block ~3 ~1 ~4 slot.container 1 blaze_rod 6
replaceitem block ~3 ~1 ~4 slot.container 2 magma_cream 9
replaceitem block ~3 ~1 ~4 slot.container 3 ghast_tear 6
replaceitem block ~3 ~1 ~4 slot.container 4 gold_nugget 19
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 9 netherite_scrap 6
replaceitem block ~3 ~1 ~4 slot.container 10 fire_charge 12
replaceitem block ~3 ~1 ~4 slot.container 11 soul_lantern 4
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 13 quartz 18
replaceitem block ~3 ~1 ~4 slot.container 14 nether_wart 15
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
summon wither_skeleton ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
