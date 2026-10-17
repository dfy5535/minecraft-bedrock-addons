# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3558/4224 | 主题内编号: b102/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双子箭塔联防碉楼 (nether_wastes_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 nether_brick [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 nether_brick []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 soul_lantern []
setblock ~4 ~-4 ~-3 soul_lantern []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 blaze_rod 11
replaceitem block ~4 ~-2 ~3 slot.container 1 magma_cream 14
replaceitem block ~4 ~-2 ~3 slot.container 2 ghast_tear 11
replaceitem block ~4 ~-2 ~3 slot.container 3 gold_nugget 16
replaceitem block ~4 ~-2 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~-2 ~3 slot.container 5 bone 12
replaceitem block ~4 ~-2 ~3 slot.container 9 golden_carrot 12
replaceitem block ~4 ~-2 ~3 slot.container 10 netherite_scrap 6
replaceitem block ~4 ~-2 ~3 slot.container 11 fire_charge 12
replaceitem block ~4 ~-2 ~3 slot.container 12 soul_lantern 4
replaceitem block ~4 ~-2 ~3 slot.container 13 gold_ingot 11
replaceitem block ~4 ~-2 ~3 slot.container 14 quartz 18
loot insert ~4 ~-2 ~3 loot "rsf/nether_wastes"
loot insert ~4 ~-2 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~9 ~5 nether_brick []
fill ~2 ~1 ~-5 ~6 ~9 ~5 nether_brick []
fill ~-5 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 red_nether_brick []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 red_nether_brick []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 nether_brick_fence []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 chiseled_nether_bricks []
setblock ~-6 ~10 ~-5 soul_lantern []
setblock ~-6 ~9 ~5 chiseled_nether_bricks []
setblock ~-6 ~10 ~5 soul_lantern []
setblock ~6 ~9 ~-5 chiseled_nether_bricks []
setblock ~6 ~10 ~-5 soul_lantern []
setblock ~6 ~9 ~5 chiseled_nether_bricks []
setblock ~6 ~10 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~4 ~-8 chiseled_nether_bricks []
setblock ~-8 ~5 ~-8 soul_lantern []
fill ~-8 ~0 ~8 ~-8 ~4 ~8 chiseled_nether_bricks []
setblock ~-8 ~5 ~8 soul_lantern []
fill ~8 ~0 ~-8 ~8 ~4 ~-8 chiseled_nether_bricks []
setblock ~8 ~5 ~-8 soul_lantern []
fill ~8 ~0 ~8 ~8 ~4 ~8 chiseled_nether_bricks []
setblock ~8 ~5 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 nether_brick []
setblock ~-8 ~6 ~-7 magma []
setblock ~-8 ~7 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 10
replaceitem block ~-5 ~1 ~4 slot.container 1 coal 19
replaceitem block ~-5 ~1 ~4 slot.container 2 blaze_rod 6
replaceitem block ~-5 ~1 ~4 slot.container 3 magma_cream 9
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-5 ~1 ~4 slot.container 5 gold_nugget 19
replaceitem block ~-5 ~1 ~4 slot.container 9 crying_obsidian 6
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_carrot 12
replaceitem block ~-5 ~1 ~4 slot.container 12 netherite_scrap 6
replaceitem block ~-5 ~1 ~4 slot.container 13 fire_charge 12
replaceitem block ~-5 ~1 ~4 slot.container 14 soul_lantern 4
loot insert ~-5 ~1 ~4 loot "rsf/nether_wastes"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 blaze_rod 9
replaceitem block ~5 ~1 ~4 slot.container 1 magma_cream 12
replaceitem block ~5 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~5 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 19
replaceitem block ~5 ~1 ~4 slot.container 5 bone 10
replaceitem block ~5 ~1 ~4 slot.container 9 crying_obsidian 4
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~5 ~1 ~4 slot.container 11 golden_carrot 10
replaceitem block ~5 ~1 ~4 slot.container 12 netherite_scrap 4
replaceitem block ~5 ~1 ~4 slot.container 13 fire_charge 10
replaceitem block ~5 ~1 ~4 slot.container 14 soul_lantern 9
loot insert ~5 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~5 ~1 ~4 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
