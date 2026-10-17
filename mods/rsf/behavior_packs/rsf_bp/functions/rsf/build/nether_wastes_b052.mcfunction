# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3508/4224 | 主题内编号: b052/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·重檐行商旅店客栈 (nether_wastes_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-9 ~7 ~10 ~9 air [] replace lava
fill ~-7 ~0 ~-9 ~7 ~10 ~9 air [] replace fire
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 red_nether_brick [] replace air
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 red_nether_brick [] replace lava
fill ~-6 ~0 ~-8 ~6 ~0 ~8 red_nether_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 quartz_block []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 quartz_block []
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~5 slot.container 0 blaze_rod 11
replaceitem block ~3 ~-2 ~5 slot.container 1 magma_cream 14
replaceitem block ~3 ~-2 ~5 slot.container 2 ghast_tear 11
replaceitem block ~3 ~-2 ~5 slot.container 3 gold_nugget 16
replaceitem block ~3 ~-2 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~-2 ~5 slot.container 5 bone 12
replaceitem block ~3 ~-2 ~5 slot.container 9 fire_charge 10
replaceitem block ~3 ~-2 ~5 slot.container 10 soul_lantern 9
replaceitem block ~3 ~-2 ~5 slot.container 11 gold_ingot 16
replaceitem block ~3 ~-2 ~5 slot.container 12 quartz 16
replaceitem block ~3 ~-2 ~5 slot.container 13 nether_wart 13
replaceitem block ~3 ~-2 ~5 slot.container 14 obsidian 10
loot insert ~3 ~-2 ~5 loot "rsf/nether_wastes"
loot insert ~3 ~-2 ~5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~3 ~7 red_nether_brick []
fill ~-4 ~1 ~-6 ~4 ~2 ~6 air []
fill ~-6 ~3 ~-8 ~6 ~3 ~8 red_nether_brick_slab []
fill ~-4 ~4 ~-6 ~4 ~7 ~6 quartz_block []
fill ~-3 ~4 ~-5 ~3 ~6 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~4 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-8 ~6 ~7 ~8 red_nether_brick_slab []
fill ~-4 ~8 ~-6 ~4 ~9 ~6 quartz_block []
fill ~-5 ~10 ~-7 ~5 ~10 ~7 quartz_slab []
setblock ~0 ~11 ~0 magma []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 nether_brick_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x10x2) ---
fill ~-7 ~0 ~-10 ~-7 ~5 ~-10 nether_brick []
setblock ~-7 ~6 ~-10 magma []
setblock ~-7 ~7 ~-10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 smoker []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 rotten_flesh 16
replaceitem block ~-4 ~1 ~6 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~6 slot.container 2 ender_pearl 10
replaceitem block ~-4 ~1 ~6 slot.container 3 coal 19
replaceitem block ~-4 ~1 ~6 slot.container 4 blaze_rod 6
replaceitem block ~-4 ~1 ~6 slot.container 5 magma_cream 9
replaceitem block ~-4 ~1 ~6 slot.container 9 crying_obsidian 5
replaceitem block ~-4 ~1 ~6 slot.container 10 golden_apple 4
replaceitem block ~-4 ~1 ~6 slot.container 11 golden_carrot 11
replaceitem block ~-4 ~1 ~6 slot.container 12 netherite_scrap 5
replaceitem block ~-4 ~1 ~6 slot.container 13 fire_charge 11
replaceitem block ~-4 ~1 ~6 slot.container 14 soul_lantern 10
loot insert ~-4 ~1 ~6 loot "rsf/nether_wastes"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~6 slot.container 1 coal 14
replaceitem block ~4 ~1 ~6 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~6 slot.container 3 magma_cream 12
replaceitem block ~4 ~1 ~6 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~6 slot.container 5 gold_nugget 22
replaceitem block ~4 ~1 ~6 slot.container 9 crying_obsidian 10
replaceitem block ~4 ~1 ~6 slot.container 10 golden_apple 2
replaceitem block ~4 ~1 ~6 slot.container 11 golden_carrot 9
replaceitem block ~4 ~1 ~6 slot.container 12 netherite_scrap 3
replaceitem block ~4 ~1 ~6 slot.container 13 fire_charge 9
replaceitem block ~4 ~1 ~6 slot.container 14 soul_lantern 8
loot insert ~4 ~1 ~6 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~6 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
