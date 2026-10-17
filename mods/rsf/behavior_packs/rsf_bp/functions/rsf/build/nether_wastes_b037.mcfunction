# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3493/4224 | 主题内编号: b037/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·环廊聖柱纪念碑 (nether_wastes_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 quartz_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 nether_brick []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gilded_blackstone []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 bone 12
replaceitem block ~3 ~-3 ~0 slot.container 1 ender_pearl 7
replaceitem block ~3 ~-3 ~0 slot.container 2 coal 16
replaceitem block ~3 ~-3 ~0 slot.container 3 blaze_rod 11
replaceitem block ~3 ~-3 ~0 slot.container 4 magma_cream 14
replaceitem block ~3 ~-3 ~0 slot.container 5 ghast_tear 11
replaceitem block ~3 ~-3 ~0 slot.container 9 golden_apple 7
replaceitem block ~3 ~-3 ~0 slot.container 10 golden_carrot 14
replaceitem block ~3 ~-3 ~0 slot.container 11 netherite_scrap 1
replaceitem block ~3 ~-3 ~0 slot.container 12 fire_charge 7
replaceitem block ~3 ~-3 ~0 slot.container 13 soul_lantern 6
replaceitem block ~3 ~-3 ~0 slot.container 14 gold_ingot 13
loot insert ~3 ~-3 ~0 loot "rsf/nether_wastes"
loot insert ~3 ~-3 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 nether_brick []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 quartz_pillar []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 quartz_pillar []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 quartz_pillar []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 quartz_pillar []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 quartz_pillar []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 quartz_pillar []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 quartz_pillar []
fill ~1 ~1 ~6 ~1 ~7 ~6 quartz_pillar []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 quartz_pillar []
fill ~3 ~1 ~6 ~3 ~7 ~6 quartz_pillar []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 quartz_pillar []
fill ~5 ~1 ~6 ~5 ~7 ~6 quartz_pillar []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 quartz_pillar []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 quartz_pillar []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 quartz_pillar []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 quartz_pillar []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 quartz_pillar []
fill ~5 ~1 ~0 ~5 ~7 ~0 quartz_pillar []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 quartz_pillar []
fill ~5 ~1 ~2 ~5 ~7 ~2 quartz_pillar []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 quartz_pillar []
fill ~5 ~1 ~4 ~5 ~7 ~4 quartz_pillar []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~8 ~-6 ~-5 ~10 ~-6 quartz_pillar []
setblock ~-5 ~11 ~-6 soul_lantern []
fill ~-5 ~8 ~6 ~-5 ~10 ~6 quartz_pillar []
setblock ~-5 ~11 ~6 soul_lantern []
fill ~5 ~8 ~-6 ~5 ~10 ~-6 quartz_pillar []
setblock ~5 ~11 ~-6 soul_lantern []
fill ~5 ~8 ~6 ~5 ~10 ~6 quartz_pillar []
setblock ~5 ~11 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~-7 ~0 ~-9 ~-7 ~5 ~-9 nether_brick []
setblock ~-7 ~6 ~-9 magma []
setblock ~-7 ~7 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 2 coal 19
replaceitem block ~4 ~1 ~5 slot.container 3 blaze_rod 6
replaceitem block ~4 ~1 ~5 slot.container 4 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 9 soul_lantern 4
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 11 quartz 18
replaceitem block ~4 ~1 ~5 slot.container 12 nether_wart 15
replaceitem block ~4 ~1 ~5 slot.container 13 obsidian 12
replaceitem block ~4 ~1 ~5 slot.container 14 crying_obsidian 9
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
