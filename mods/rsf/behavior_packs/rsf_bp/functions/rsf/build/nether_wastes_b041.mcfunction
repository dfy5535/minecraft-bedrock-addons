# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3497/4224 | 主题内编号: b041/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·八角看台古罗马斗技场 (nether_wastes_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 quartz_block [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 quartz_block [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 quartz_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 quartz_block []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 gilded_blackstone []
setblock ~-4 ~-5 ~-5 soul_lantern []
setblock ~4 ~-5 ~5 soul_lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 magma_cream 14
replaceitem block ~0 ~-3 ~5 slot.container 1 ghast_tear 11
replaceitem block ~0 ~-3 ~5 slot.container 2 gold_nugget 16
replaceitem block ~0 ~-3 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-3 ~5 slot.container 4 bone 12
replaceitem block ~0 ~-3 ~5 slot.container 5 ender_pearl 7
replaceitem block ~0 ~-3 ~5 slot.container 9 obsidian 9
replaceitem block ~0 ~-3 ~5 slot.container 10 crying_obsidian 6
replaceitem block ~0 ~-3 ~5 slot.container 11 golden_apple 5
replaceitem block ~0 ~-3 ~5 slot.container 12 golden_carrot 12
replaceitem block ~0 ~-3 ~5 slot.container 13 netherite_scrap 6
replaceitem block ~0 ~-3 ~5 slot.container 14 fire_charge 12
loot insert ~0 ~-3 ~5 loot "rsf/nether_wastes"
loot insert ~0 ~-3 ~5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 quartz_block []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 air []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 air []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 air []
fill ~6 ~1 ~7 ~6 ~7 ~7 air []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 quartz_pillar []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 quartz_pillar []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 quartz_pillar []
fill ~5 ~1 ~6 ~5 ~6 ~6 quartz_pillar []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 quartz_pillar []
setblock ~-6 ~9 ~-7 soul_lantern []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 quartz_pillar []
setblock ~-6 ~9 ~7 soul_lantern []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 quartz_pillar []
setblock ~6 ~9 ~-7 soul_lantern []
fill ~6 ~6 ~7 ~6 ~8 ~7 quartz_pillar []
setblock ~6 ~9 ~7 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~10 ~-2 chiseled_nether_bricks []
fill ~-4 ~0 ~2 ~-4 ~10 ~2 chiseled_nether_bricks []
fill ~4 ~0 ~-2 ~4 ~10 ~-2 chiseled_nether_bricks []
fill ~4 ~0 ~2 ~4 ~10 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~-8 ~-8 ~9 ~-8 nether_brick []
setblock ~-8 ~10 ~-8 magma []
setblock ~-8 ~11 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 magma_cream 9
replaceitem block ~5 ~1 ~6 slot.container 1 ghast_tear 6
replaceitem block ~5 ~1 ~6 slot.container 2 gold_nugget 19
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 4 bone 15
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 9 quartz 20
replaceitem block ~5 ~1 ~6 slot.container 10 nether_wart 17
replaceitem block ~5 ~1 ~6 slot.container 11 obsidian 14
replaceitem block ~5 ~1 ~6 slot.container 12 crying_obsidian 4
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 14 golden_carrot 10
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~-3 ~0
