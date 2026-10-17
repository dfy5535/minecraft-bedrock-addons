# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3485/4224 | 主题内编号: b029/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·奥术星象琉璃塔 (nether_wastes_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~13 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~13 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 nether_brick []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gilded_blackstone []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 bone 12
replaceitem block ~2 ~-3 ~0 slot.container 1 ender_pearl 7
replaceitem block ~2 ~-3 ~0 slot.container 2 coal 16
replaceitem block ~2 ~-3 ~0 slot.container 3 blaze_rod 11
replaceitem block ~2 ~-3 ~0 slot.container 4 magma_cream 14
replaceitem block ~2 ~-3 ~0 slot.container 5 ghast_tear 11
replaceitem block ~2 ~-3 ~0 slot.container 9 quartz 20
replaceitem block ~2 ~-3 ~0 slot.container 10 nether_wart 17
replaceitem block ~2 ~-3 ~0 slot.container 11 obsidian 14
replaceitem block ~2 ~-3 ~0 slot.container 12 crying_obsidian 4
replaceitem block ~2 ~-3 ~0 slot.container 13 golden_apple 3
replaceitem block ~2 ~-3 ~0 slot.container 14 golden_carrot 10
loot insert ~2 ~-3 ~0 loot "rsf/nether_wastes"
loot insert ~2 ~-3 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 quartz_block []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 nether_brick_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~10 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 nether_brick []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 glass []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 blackstone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~-6 ~0 ~-6 ~-6 ~7 ~-6 nether_brick []
setblock ~-6 ~8 ~-6 magma []
setblock ~-6 ~9 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 15
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 10
replaceitem block ~3 ~1 ~4 slot.container 2 coal 19
replaceitem block ~3 ~1 ~4 slot.container 3 blaze_rod 6
replaceitem block ~3 ~1 ~4 slot.container 4 magma_cream 9
replaceitem block ~3 ~1 ~4 slot.container 5 ghast_tear 6
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 8
replaceitem block ~3 ~1 ~4 slot.container 10 golden_carrot 8
replaceitem block ~3 ~1 ~4 slot.container 11 netherite_scrap 2
replaceitem block ~3 ~1 ~4 slot.container 12 fire_charge 8
replaceitem block ~3 ~1 ~4 slot.container 13 soul_lantern 7
replaceitem block ~3 ~1 ~4 slot.container 14 gold_ingot 14
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~-3 ~0
