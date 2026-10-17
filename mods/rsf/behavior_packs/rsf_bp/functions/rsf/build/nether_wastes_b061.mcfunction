# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3517/4224 | 主题内编号: b061/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双子封土古墓地宫 (nether_wastes_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 quartz_block [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 quartz_block [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 nether_brick []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 nether_brick []
setblock ~0 ~-7 ~0 glowstone []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 soul_lantern []
setblock ~2 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 coal 16
replaceitem block ~0 ~-4 ~-3 slot.container 1 blaze_rod 11
replaceitem block ~0 ~-4 ~-3 slot.container 2 magma_cream 14
replaceitem block ~0 ~-4 ~-3 slot.container 3 ghast_tear 11
replaceitem block ~0 ~-4 ~-3 slot.container 4 gold_nugget 16
replaceitem block ~0 ~-4 ~-3 slot.container 5 rotten_flesh 13
replaceitem block ~0 ~-4 ~-3 slot.container 9 netherite_scrap 7
replaceitem block ~0 ~-4 ~-3 slot.container 10 fire_charge 6
replaceitem block ~0 ~-4 ~-3 slot.container 11 soul_lantern 5
replaceitem block ~0 ~-4 ~-3 slot.container 12 gold_ingot 12
replaceitem block ~0 ~-4 ~-3 slot.container 13 quartz 19
replaceitem block ~0 ~-4 ~-3 slot.container 14 nether_wart 16
loot insert ~0 ~-4 ~-3 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~-3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 quartz_block []
fill ~2 ~1 ~-5 ~6 ~7 ~5 quartz_block []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 nether_brick []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 nether_brick []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 nether_brick []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gilded_blackstone []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 nether_brick_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~-8 ~-8 ~9 ~-8 nether_brick []
setblock ~-8 ~10 ~-8 magma []
setblock ~-8 ~11 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 15
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 10
replaceitem block ~5 ~1 ~4 slot.container 2 coal 19
replaceitem block ~5 ~1 ~4 slot.container 3 blaze_rod 6
replaceitem block ~5 ~1 ~4 slot.container 4 magma_cream 9
replaceitem block ~5 ~1 ~4 slot.container 5 ghast_tear 6
replaceitem block ~5 ~1 ~4 slot.container 9 quartz 19
replaceitem block ~5 ~1 ~4 slot.container 10 nether_wart 16
replaceitem block ~5 ~1 ~4 slot.container 11 obsidian 13
replaceitem block ~5 ~1 ~4 slot.container 12 crying_obsidian 10
replaceitem block ~5 ~1 ~4 slot.container 13 golden_apple 2
replaceitem block ~5 ~1 ~4 slot.container 14 golden_carrot 9
loot insert ~5 ~1 ~4 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
