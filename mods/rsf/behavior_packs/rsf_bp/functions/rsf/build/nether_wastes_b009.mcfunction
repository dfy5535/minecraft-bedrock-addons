# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3465/4224 | 主题内编号: b009/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·铁栏双室地下死牢 (nether_wastes_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace fire
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 quartz_block [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 quartz_block [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 quartz_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 soul_lantern []
setblock ~3 ~-6 ~-4 soul_lantern []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 gold_nugget 16
replaceitem block ~3 ~-4 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~3 ~-4 ~4 slot.container 2 bone 12
replaceitem block ~3 ~-4 ~4 slot.container 3 ender_pearl 7
replaceitem block ~3 ~-4 ~4 slot.container 4 coal 16
replaceitem block ~3 ~-4 ~4 slot.container 5 blaze_rod 11
replaceitem block ~3 ~-4 ~4 slot.container 9 netherite_scrap 3
replaceitem block ~3 ~-4 ~4 slot.container 10 fire_charge 9
replaceitem block ~3 ~-4 ~4 slot.container 11 soul_lantern 8
replaceitem block ~3 ~-4 ~4 slot.container 12 gold_ingot 15
replaceitem block ~3 ~-4 ~4 slot.container 13 quartz 22
replaceitem block ~3 ~-4 ~4 slot.container 14 nether_wart 12
loot insert ~3 ~-4 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~-4 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 quartz_block []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 nether_brick []
fill ~0 ~1 ~-6 ~0 ~2 ~6 nether_brick []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 nether_brick []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 nether_brick_fence []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 air []
setblock ~-5 ~6 ~-6 quartz_pillar []
setblock ~-5 ~7 ~-6 soul_lantern []
setblock ~-5 ~6 ~6 quartz_pillar []
setblock ~-5 ~7 ~6 soul_lantern []
setblock ~5 ~6 ~-6 quartz_pillar []
setblock ~5 ~7 ~-6 soul_lantern []
setblock ~5 ~6 ~6 quartz_pillar []
setblock ~5 ~7 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-7 ~0 ~-8 ~-7 ~7 ~-8 nether_brick []
setblock ~-7 ~8 ~-8 magma []
setblock ~-7 ~9 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 soul_lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 gilded_blackstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 1 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 2 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 10 golden_carrot 9
replaceitem block ~4 ~1 ~5 slot.container 11 netherite_scrap 3
replaceitem block ~4 ~1 ~5 slot.container 12 fire_charge 9
replaceitem block ~4 ~1 ~5 slot.container 13 soul_lantern 8
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 15
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon wither_skeleton ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
