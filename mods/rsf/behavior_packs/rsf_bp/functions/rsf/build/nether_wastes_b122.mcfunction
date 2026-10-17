# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3578/4224 | 主题内编号: b122/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·十字穹顶宏伟圣堂与墓窟 (nether_wastes_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~12 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~12 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 nether_brick [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 nether_brick [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 nether_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 red_nether_brick []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-3 ~-5 slot.container 1 bone 12
replaceitem block ~0 ~-3 ~-5 slot.container 2 ender_pearl 7
replaceitem block ~0 ~-3 ~-5 slot.container 3 coal 16
replaceitem block ~0 ~-3 ~-5 slot.container 4 blaze_rod 11
replaceitem block ~0 ~-3 ~-5 slot.container 5 magma_cream 14
replaceitem block ~0 ~-3 ~-5 slot.container 9 gold_ingot 14
replaceitem block ~0 ~-3 ~-5 slot.container 10 quartz 21
replaceitem block ~0 ~-3 ~-5 slot.container 11 nether_wart 18
replaceitem block ~0 ~-3 ~-5 slot.container 12 obsidian 8
replaceitem block ~0 ~-3 ~-5 slot.container 13 crying_obsidian 5
replaceitem block ~0 ~-3 ~-5 slot.container 14 golden_apple 4
loot insert ~0 ~-3 ~-5 loot "rsf/nether_wastes"
loot insert ~0 ~-3 ~-5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~9 ~7 nether_brick []
fill ~-6 ~1 ~-2 ~6 ~9 ~2 nether_brick []
fill ~-1 ~1 ~-6 ~1 ~8 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~8 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 nether_brick_fence []
setblock ~6 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 red_nether_brick []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 nether_brick []
fill ~0 ~15 ~0 ~0 ~15 ~0 glowstone []
setblock ~0 ~16 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 nether_brick []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~-8 ~-8 ~5 ~-8 nether_brick []
setblock ~-8 ~6 ~-8 magma []
setblock ~-8 ~7 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 1 gold_nugget 19
replaceitem block ~-5 ~1 ~6 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 4 ender_pearl 10
replaceitem block ~-5 ~1 ~6 slot.container 5 coal 19
replaceitem block ~-5 ~1 ~6 slot.container 9 crying_obsidian 5
replaceitem block ~-5 ~1 ~6 slot.container 10 golden_apple 4
replaceitem block ~-5 ~1 ~6 slot.container 11 golden_carrot 11
replaceitem block ~-5 ~1 ~6 slot.container 12 netherite_scrap 5
replaceitem block ~-5 ~1 ~6 slot.container 13 fire_charge 11
replaceitem block ~-5 ~1 ~6 slot.container 14 soul_lantern 10
loot insert ~-5 ~1 ~6 loot "rsf/nether_wastes"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 19
replaceitem block ~5 ~1 ~6 slot.container 1 bone 10
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 5
replaceitem block ~5 ~1 ~6 slot.container 3 coal 14
replaceitem block ~5 ~1 ~6 slot.container 4 blaze_rod 9
replaceitem block ~5 ~1 ~6 slot.container 5 magma_cream 12
replaceitem block ~5 ~1 ~6 slot.container 9 crying_obsidian 10
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 11 golden_carrot 9
replaceitem block ~5 ~1 ~6 slot.container 12 netherite_scrap 3
replaceitem block ~5 ~1 ~6 slot.container 13 fire_charge 9
replaceitem block ~5 ~1 ~6 slot.container 14 soul_lantern 8
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
loot insert ~5 ~1 ~6 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~-3 ~0
