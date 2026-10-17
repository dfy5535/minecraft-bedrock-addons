# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3538/4224 | 主题内编号: b082/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·竖井井架矿工物资站 (nether_wastes_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace fire
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 nether_brick [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 nether_brick [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 nether_brick []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-6 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-6 ~3 soul_lantern []
setblock ~2 ~-6 ~-3 soul_lantern []
setblock ~2 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-4 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~2 ~-4 ~3 slot.container 1 bone 12
replaceitem block ~2 ~-4 ~3 slot.container 2 ender_pearl 7
replaceitem block ~2 ~-4 ~3 slot.container 3 coal 16
replaceitem block ~2 ~-4 ~3 slot.container 4 blaze_rod 11
replaceitem block ~2 ~-4 ~3 slot.container 5 magma_cream 14
replaceitem block ~2 ~-4 ~3 slot.container 9 golden_carrot 13
replaceitem block ~2 ~-4 ~3 slot.container 10 netherite_scrap 7
replaceitem block ~2 ~-4 ~3 slot.container 11 fire_charge 6
replaceitem block ~2 ~-4 ~3 slot.container 12 soul_lantern 5
replaceitem block ~2 ~-4 ~3 slot.container 13 gold_ingot 12
replaceitem block ~2 ~-4 ~3 slot.container 14 quartz 19
loot insert ~2 ~-4 ~3 loot "rsf/nether_wastes"
loot insert ~2 ~-4 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 nether_brick []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 nether_brick_slab []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 polished_blackstone_bricks []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 red_nether_brick []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 polished_blackstone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 glowstone []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-6 ~0 ~-8 ~-6 ~5 ~-8 nether_brick []
setblock ~-6 ~6 ~-8 magma []
setblock ~-6 ~7 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-3 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 1 gold_nugget 19
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 16
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 4 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 5 coal 19
replaceitem block ~-3 ~1 ~4 slot.container 9 crying_obsidian 7
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~-3 ~1 ~4 slot.container 11 golden_carrot 13
replaceitem block ~-3 ~1 ~4 slot.container 12 netherite_scrap 7
replaceitem block ~-3 ~1 ~4 slot.container 13 fire_charge 6
replaceitem block ~-3 ~1 ~4 slot.container 14 soul_lantern 5
loot insert ~-3 ~1 ~4 loot "rsf/nether_wastes"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 19
replaceitem block ~3 ~1 ~4 slot.container 1 bone 10
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 5
replaceitem block ~3 ~1 ~4 slot.container 3 coal 14
replaceitem block ~3 ~1 ~4 slot.container 4 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 5 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 9 crying_obsidian 5
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 11 golden_carrot 11
replaceitem block ~3 ~1 ~4 slot.container 12 netherite_scrap 5
replaceitem block ~3 ~1 ~4 slot.container 13 fire_charge 11
replaceitem block ~3 ~1 ~4 slot.container 14 soul_lantern 10
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~1 ~4 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
