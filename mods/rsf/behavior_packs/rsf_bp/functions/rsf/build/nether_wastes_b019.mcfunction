# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3475/4224 | 主题内编号: b019/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·琉璃穹顶圣物秘室 (nether_wastes_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 red_nether_brick []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 gold_nugget 16
replaceitem block ~2 ~-3 ~0 slot.container 1 rotten_flesh 13
replaceitem block ~2 ~-3 ~0 slot.container 2 bone 12
replaceitem block ~2 ~-3 ~0 slot.container 3 ender_pearl 7
replaceitem block ~2 ~-3 ~0 slot.container 4 coal 16
replaceitem block ~2 ~-3 ~0 slot.container 5 blaze_rod 11
replaceitem block ~2 ~-3 ~0 slot.container 9 quartz 17
replaceitem block ~2 ~-3 ~0 slot.container 10 nether_wart 14
replaceitem block ~2 ~-3 ~0 slot.container 11 obsidian 11
replaceitem block ~2 ~-3 ~0 slot.container 12 crying_obsidian 8
replaceitem block ~2 ~-3 ~0 slot.container 13 golden_apple 7
replaceitem block ~2 ~-3 ~0 slot.container 14 golden_carrot 14
loot insert ~2 ~-3 ~0 loot "rsf/nether_wastes"
loot insert ~2 ~-3 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 polished_blackstone_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 gilded_blackstone []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 gilded_blackstone []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 gilded_blackstone []
fill ~3 ~1 ~4 ~3 ~7 ~4 gilded_blackstone []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 nether_brick []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~-6 ~0 ~-8 ~-6 ~7 ~-8 nether_brick []
setblock ~-6 ~8 ~-8 magma []
setblock ~-6 ~9 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gold_nugget 19
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 10
replaceitem block ~3 ~1 ~4 slot.container 4 coal 19
replaceitem block ~3 ~1 ~4 slot.container 5 blaze_rod 6
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 5
replaceitem block ~3 ~1 ~4 slot.container 10 golden_carrot 12
replaceitem block ~3 ~1 ~4 slot.container 11 netherite_scrap 6
replaceitem block ~3 ~1 ~4 slot.container 12 fire_charge 12
replaceitem block ~3 ~1 ~4 slot.container 13 soul_lantern 4
replaceitem block ~3 ~1 ~4 slot.container 14 gold_ingot 11
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
