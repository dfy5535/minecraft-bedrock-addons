# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3495/4224 | 主题内编号: b039/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·永恒圣火图腾方尖塔 (nether_wastes_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~13 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~13 ~6 air [] replace fire
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 polished_blackstone_bricks []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 gold_nugget 16
replaceitem block ~1 ~-3 ~2 slot.container 1 rotten_flesh 13
replaceitem block ~1 ~-3 ~2 slot.container 2 bone 12
replaceitem block ~1 ~-3 ~2 slot.container 3 ender_pearl 7
replaceitem block ~1 ~-3 ~2 slot.container 4 coal 16
replaceitem block ~1 ~-3 ~2 slot.container 5 blaze_rod 11
replaceitem block ~1 ~-3 ~2 slot.container 9 quartz 17
replaceitem block ~1 ~-3 ~2 slot.container 10 nether_wart 14
replaceitem block ~1 ~-3 ~2 slot.container 11 obsidian 11
replaceitem block ~1 ~-3 ~2 slot.container 12 crying_obsidian 8
replaceitem block ~1 ~-3 ~2 slot.container 13 golden_apple 7
replaceitem block ~1 ~-3 ~2 slot.container 14 golden_carrot 14
loot insert ~1 ~-3 ~2 loot "rsf/nether_wastes"
loot insert ~1 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~10 ~4 polished_blackstone_bricks []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 gilded_blackstone []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 gilded_blackstone []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 gilded_blackstone []
fill ~3 ~1 ~4 ~3 ~10 ~4 gilded_blackstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 polished_blackstone_wall []
setblock ~3 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 nether_brick []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 polished_blackstone_bricks []
fill ~0 ~16 ~0 ~0 ~16 ~0 gold_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 nether_brick []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 soul_lantern []
setblock ~2 ~4 ~-10 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 5x6x4) ---
fill ~-5 ~0 ~-6 ~-5 ~7 ~-6 nether_brick []
setblock ~-5 ~8 ~-6 magma []
setblock ~-5 ~9 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-2 ~1 ~3 smoker []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 coal 19
replaceitem block ~2 ~1 ~3 slot.container 1 blaze_rod 6
replaceitem block ~2 ~1 ~3 slot.container 2 magma_cream 9
replaceitem block ~2 ~1 ~3 slot.container 3 ghast_tear 6
replaceitem block ~2 ~1 ~3 slot.container 4 gold_nugget 19
replaceitem block ~2 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~2 ~1 ~3 slot.container 9 golden_apple 4
replaceitem block ~2 ~1 ~3 slot.container 10 golden_carrot 11
replaceitem block ~2 ~1 ~3 slot.container 11 netherite_scrap 5
replaceitem block ~2 ~1 ~3 slot.container 12 fire_charge 11
replaceitem block ~2 ~1 ~3 slot.container 13 soul_lantern 10
replaceitem block ~2 ~1 ~3 slot.container 14 gold_ingot 10
loot insert ~2 ~1 ~3 loot "rsf/nether_wastes"
summon wither_skeleton ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
