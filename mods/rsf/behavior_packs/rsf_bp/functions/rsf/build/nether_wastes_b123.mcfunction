# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3579/4224 | 主题内编号: b123/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·四角塔楼领主城堡复合体 (nether_wastes_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 lantern []
setblock ~4 ~-6 ~-5 lantern []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 bone 12
replaceitem block ~4 ~-4 ~5 slot.container 1 ender_pearl 7
replaceitem block ~4 ~-4 ~5 slot.container 2 coal 16
replaceitem block ~4 ~-4 ~5 slot.container 3 blaze_rod 11
replaceitem block ~4 ~-4 ~5 slot.container 4 magma_cream 14
replaceitem block ~4 ~-4 ~5 slot.container 5 ghast_tear 11
replaceitem block ~4 ~-4 ~5 slot.container 9 soul_lantern 8
replaceitem block ~4 ~-4 ~5 slot.container 10 gold_ingot 15
replaceitem block ~4 ~-4 ~5 slot.container 11 quartz 22
replaceitem block ~4 ~-4 ~5 slot.container 12 nether_wart 12
replaceitem block ~4 ~-4 ~5 slot.container 13 obsidian 9
replaceitem block ~4 ~-4 ~5 slot.container 14 crying_obsidian 6
loot insert ~4 ~-4 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~-4 ~5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 polished_blackstone_bricks []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~10 ~-6 nether_brick []
setblock ~-6 ~11 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~10 ~7 nether_brick []
setblock ~-6 ~11 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~10 ~-6 nether_brick []
setblock ~5 ~11 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~10 ~7 nether_brick []
setblock ~5 ~11 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 nether_brick []
fill ~-6 ~9 ~-7 ~6 ~9 ~7 polished_blackstone_wall []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 air []
setblock ~-6 ~9 ~-7 gilded_blackstone []
setblock ~-6 ~10 ~-7 lantern []
setblock ~-6 ~9 ~7 gilded_blackstone []
setblock ~-6 ~10 ~7 lantern []
setblock ~6 ~9 ~-7 gilded_blackstone []
setblock ~6 ~10 ~-7 lantern []
setblock ~6 ~9 ~7 gilded_blackstone []
setblock ~6 ~10 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-8 ~0 ~-9 ~-8 ~6 ~-9 nether_brick []
setblock ~-8 ~7 ~-9 magma []
setblock ~-8 ~8 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 magma []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gold_nugget 19
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 2 bone 15
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 4 coal 19
replaceitem block ~5 ~1 ~6 slot.container 5 blaze_rod 6
replaceitem block ~5 ~1 ~6 slot.container 9 netherite_scrap 3
replaceitem block ~5 ~1 ~6 slot.container 10 fire_charge 9
replaceitem block ~5 ~1 ~6 slot.container 11 soul_lantern 8
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 15
replaceitem block ~5 ~1 ~6 slot.container 13 quartz 22
replaceitem block ~5 ~1 ~6 slot.container 14 nether_wart 12
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
summon wither_skeleton ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
