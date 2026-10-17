# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3559/4224 | 主题内编号: b103/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·十字全向防御方堡 (nether_wastes_bunker_cross_redoubt)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 red_nether_brick []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 blaze_rod 11
replaceitem block ~0 ~-2 ~-3 slot.container 1 magma_cream 14
replaceitem block ~0 ~-2 ~-3 slot.container 2 ghast_tear 11
replaceitem block ~0 ~-2 ~-3 slot.container 3 gold_nugget 16
replaceitem block ~0 ~-2 ~-3 slot.container 4 rotten_flesh 13
replaceitem block ~0 ~-2 ~-3 slot.container 5 bone 12
replaceitem block ~0 ~-2 ~-3 slot.container 9 fire_charge 10
replaceitem block ~0 ~-2 ~-3 slot.container 10 soul_lantern 9
replaceitem block ~0 ~-2 ~-3 slot.container 11 gold_ingot 16
replaceitem block ~0 ~-2 ~-3 slot.container 12 quartz 16
replaceitem block ~0 ~-2 ~-3 slot.container 13 nether_wart 13
replaceitem block ~0 ~-2 ~-3 slot.container 14 obsidian 10
loot insert ~0 ~-2 ~-3 loot "rsf/nether_wastes"
loot insert ~0 ~-2 ~-3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 polished_blackstone_bricks []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 nether_brick []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 polished_blackstone_wall []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 gilded_blackstone []
setblock ~-5 ~9 ~-6 lantern []
setblock ~-5 ~8 ~6 gilded_blackstone []
setblock ~-5 ~9 ~6 lantern []
setblock ~5 ~8 ~-6 gilded_blackstone []
setblock ~5 ~9 ~-6 lantern []
setblock ~5 ~8 ~6 gilded_blackstone []
setblock ~5 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~4 ~-8 gilded_blackstone []
setblock ~-7 ~5 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~4 ~8 gilded_blackstone []
setblock ~-7 ~5 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~4 ~-8 gilded_blackstone []
setblock ~7 ~5 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~4 ~8 gilded_blackstone []
setblock ~7 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-7 ~0 ~-9 ~-7 ~6 ~-9 nether_brick []
setblock ~-7 ~7 ~-9 magma []
setblock ~-7 ~8 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 coal 19
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 6
replaceitem block ~4 ~1 ~5 slot.container 2 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 4 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 9 netherite_scrap 4
replaceitem block ~4 ~1 ~5 slot.container 10 fire_charge 10
replaceitem block ~4 ~1 ~5 slot.container 11 soul_lantern 9
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 13 quartz 16
replaceitem block ~4 ~1 ~5 slot.container 14 nether_wart 13
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
