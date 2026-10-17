# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3467/4224 | 主题内编号: b011/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·深渊困兽角斗地牢 (nether_wastes_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 gold_nugget 16
replaceitem block ~0 ~-4 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-4 ~4 slot.container 2 bone 12
replaceitem block ~0 ~-4 ~4 slot.container 3 ender_pearl 7
replaceitem block ~0 ~-4 ~4 slot.container 4 coal 16
replaceitem block ~0 ~-4 ~4 slot.container 5 blaze_rod 11
replaceitem block ~0 ~-4 ~4 slot.container 9 obsidian 14
replaceitem block ~0 ~-4 ~4 slot.container 10 crying_obsidian 4
replaceitem block ~0 ~-4 ~4 slot.container 11 golden_apple 3
replaceitem block ~0 ~-4 ~4 slot.container 12 golden_carrot 10
replaceitem block ~0 ~-4 ~4 slot.container 13 netherite_scrap 4
replaceitem block ~0 ~-4 ~4 slot.container 14 fire_charge 10
loot insert ~0 ~-4 ~4 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 air []
fill ~5 ~1 ~6 ~5 ~7 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 gilded_blackstone []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 gilded_blackstone []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 gilded_blackstone []
fill ~4 ~1 ~5 ~4 ~6 ~5 gilded_blackstone []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 gilded_blackstone []
setblock ~-5 ~9 ~-6 lantern []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 gilded_blackstone []
setblock ~-5 ~9 ~6 lantern []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 gilded_blackstone []
setblock ~5 ~9 ~-6 lantern []
fill ~5 ~6 ~6 ~5 ~8 ~6 gilded_blackstone []
setblock ~5 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~-7 ~-7 ~9 ~-7 nether_brick []
setblock ~-7 ~10 ~-7 magma []
setblock ~-7 ~11 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 4 coal 19
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 6
replaceitem block ~4 ~1 ~5 slot.container 9 quartz 18
replaceitem block ~4 ~1 ~5 slot.container 10 nether_wart 15
replaceitem block ~4 ~1 ~5 slot.container 11 obsidian 12
replaceitem block ~4 ~1 ~5 slot.container 12 crying_obsidian 9
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 8
replaceitem block ~4 ~1 ~5 slot.container 14 golden_carrot 8
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~-4 ~0
