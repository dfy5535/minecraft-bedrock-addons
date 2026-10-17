# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3568/4224 | 主题内编号: b112/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·U型回廊学者修道院 (nether_wastes_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_nether_brick [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 quartz_block []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~-2 ~4 slot.container 1 bone 12
replaceitem block ~3 ~-2 ~4 slot.container 2 ender_pearl 7
replaceitem block ~3 ~-2 ~4 slot.container 3 coal 16
replaceitem block ~3 ~-2 ~4 slot.container 4 blaze_rod 11
replaceitem block ~3 ~-2 ~4 slot.container 5 magma_cream 14
replaceitem block ~3 ~-2 ~4 slot.container 9 fire_charge 7
replaceitem block ~3 ~-2 ~4 slot.container 10 soul_lantern 6
replaceitem block ~3 ~-2 ~4 slot.container 11 gold_ingot 13
replaceitem block ~3 ~-2 ~4 slot.container 12 quartz 20
replaceitem block ~3 ~-2 ~4 slot.container 13 nether_wart 17
replaceitem block ~3 ~-2 ~4 slot.container 14 obsidian 14
loot insert ~3 ~-2 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~-2 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 red_nether_brick []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 nether_brick []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 polished_blackstone_bricks []
fill ~0 ~15 ~0 ~0 ~15 ~0 gold_block []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 nether_brick []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 chiseled_nether_bricks []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 chiseled_nether_bricks []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 red_nether_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~-7 ~0 ~-9 ~-7 ~5 ~-9 nether_brick []
setblock ~-7 ~6 ~-9 magma []
setblock ~-7 ~7 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 blaze_rod 6
replaceitem block ~-4 ~1 ~5 slot.container 1 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 2 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 3 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 16
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 9 crying_obsidian 9
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 8
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_carrot 8
replaceitem block ~-4 ~1 ~5 slot.container 12 netherite_scrap 2
replaceitem block ~-4 ~1 ~5 slot.container 13 fire_charge 8
replaceitem block ~-4 ~1 ~5 slot.container 14 soul_lantern 7
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 1 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 19
replaceitem block ~4 ~1 ~5 slot.container 3 bone 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 5 coal 14
replaceitem block ~4 ~1 ~5 slot.container 9 crying_obsidian 7
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 11 golden_carrot 13
replaceitem block ~4 ~1 ~5 slot.container 12 netherite_scrap 7
replaceitem block ~4 ~1 ~5 slot.container 13 fire_charge 6
replaceitem block ~4 ~1 ~5 slot.container 14 soul_lantern 5
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
