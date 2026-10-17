# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3492/4224 | 主题内编号: b036/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·下沉碑林地宫方尖碑 (nether_wastes_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 red_nether_brick [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 red_nether_brick [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_nether_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 red_nether_brick []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-5 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-5 ~3 soul_lantern []
setblock ~2 ~-5 ~-3 soul_lantern []
setblock ~2 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-3 ~3 slot.container 0 ender_pearl 7
replaceitem block ~2 ~-3 ~3 slot.container 1 coal 16
replaceitem block ~2 ~-3 ~3 slot.container 2 blaze_rod 11
replaceitem block ~2 ~-3 ~3 slot.container 3 magma_cream 14
replaceitem block ~2 ~-3 ~3 slot.container 4 ghast_tear 11
replaceitem block ~2 ~-3 ~3 slot.container 5 gold_nugget 16
replaceitem block ~2 ~-3 ~3 slot.container 9 fire_charge 7
replaceitem block ~2 ~-3 ~3 slot.container 10 soul_lantern 6
replaceitem block ~2 ~-3 ~3 slot.container 11 gold_ingot 13
replaceitem block ~2 ~-3 ~3 slot.container 12 quartz 20
replaceitem block ~2 ~-3 ~3 slot.container 13 nether_wart 17
replaceitem block ~2 ~-3 ~3 slot.container 14 obsidian 14
loot insert ~2 ~-3 ~3 loot "rsf/nether_wastes"
loot insert ~2 ~-3 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 red_nether_brick []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 nether_brick []
fill ~0 ~1 ~-5 ~0 ~2 ~5 nether_brick []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 nether_brick []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 red_nether_brick []
fill ~0 ~15 ~0 ~0 ~15 ~0 magma []
setblock ~0 ~16 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 polished_blackstone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-6 ~0 ~-7 ~-6 ~9 ~-7 nether_brick []
setblock ~-6 ~10 ~-7 magma []
setblock ~-6 ~11 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 magma []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 2 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 3 coal 19
replaceitem block ~-3 ~1 ~4 slot.container 4 blaze_rod 6
replaceitem block ~-3 ~1 ~4 slot.container 5 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 9 golden_carrot 14
replaceitem block ~-3 ~1 ~4 slot.container 10 netherite_scrap 1
replaceitem block ~-3 ~1 ~4 slot.container 11 fire_charge 7
replaceitem block ~-3 ~1 ~4 slot.container 12 soul_lantern 6
replaceitem block ~-3 ~1 ~4 slot.container 13 gold_ingot 13
replaceitem block ~-3 ~1 ~4 slot.container 14 quartz 20
loot insert ~-3 ~1 ~4 loot "rsf/nether_wastes"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~3 ~1 ~4 slot.container 1 coal 14
replaceitem block ~3 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 3 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 5 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 9 golden_carrot 12
replaceitem block ~3 ~1 ~4 slot.container 10 netherite_scrap 6
replaceitem block ~3 ~1 ~4 slot.container 11 fire_charge 12
replaceitem block ~3 ~1 ~4 slot.container 12 soul_lantern 4
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 14 quartz 18
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~1 ~4 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
