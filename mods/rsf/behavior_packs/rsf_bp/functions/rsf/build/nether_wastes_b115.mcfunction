# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3571/4224 | 主题内编号: b115/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·阶梯立体生态种植台 (nether_wastes_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 quartz_block []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 magma_cream 14
replaceitem block ~3 ~-4 ~5 slot.container 1 ghast_tear 11
replaceitem block ~3 ~-4 ~5 slot.container 2 gold_nugget 16
replaceitem block ~3 ~-4 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~3 ~-4 ~5 slot.container 4 bone 12
replaceitem block ~3 ~-4 ~5 slot.container 5 ender_pearl 7
replaceitem block ~3 ~-4 ~5 slot.container 9 obsidian 11
replaceitem block ~3 ~-4 ~5 slot.container 10 crying_obsidian 8
replaceitem block ~3 ~-4 ~5 slot.container 11 golden_apple 7
replaceitem block ~3 ~-4 ~5 slot.container 12 golden_carrot 14
replaceitem block ~3 ~-4 ~5 slot.container 13 netherite_scrap 1
replaceitem block ~3 ~-4 ~5 slot.container 14 fire_charge 7
loot insert ~3 ~-4 ~5 loot "rsf/nether_wastes"
loot insert ~3 ~-4 ~5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 polished_blackstone_bricks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 nether_brick []
fill ~-3 ~5 ~-4 ~3 ~6 ~4 red_nether_brick []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 polished_blackstone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 gilded_blackstone []
setblock ~-5 ~9 ~-6 lantern []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 gilded_blackstone []
setblock ~-5 ~9 ~6 lantern []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 gilded_blackstone []
setblock ~5 ~9 ~-6 lantern []
fill ~5 ~6 ~6 ~5 ~8 ~6 gilded_blackstone []
setblock ~5 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 polished_blackstone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-7 ~0 ~-9 ~-7 ~8 ~-9 nether_brick []
setblock ~-7 ~9 ~-9 magma []
setblock ~-7 ~10 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 4 coal 19
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 6
replaceitem block ~4 ~1 ~5 slot.container 9 obsidian 9
replaceitem block ~4 ~1 ~5 slot.container 10 crying_obsidian 6
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 12 golden_carrot 12
replaceitem block ~4 ~1 ~5 slot.container 13 netherite_scrap 6
replaceitem block ~4 ~1 ~5 slot.container 14 fire_charge 12
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
