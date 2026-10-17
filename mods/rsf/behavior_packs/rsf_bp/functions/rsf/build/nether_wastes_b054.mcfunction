# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3510/4224 | 主题内编号: b054/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·切石与伐木工匠棚屋 (nether_wastes_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace fire
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 nether_brick [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 nether_brick [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 nether_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 red_nether_brick []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~7 ~5 nether_brick []
fill ~2 ~1 ~-5 ~5 ~7 ~5 nether_brick []
fill ~-4 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 red_nether_brick []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 chiseled_nether_bricks []
setblock ~-6 ~10 ~-5 soul_lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 chiseled_nether_bricks []
setblock ~-6 ~10 ~5 soul_lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 chiseled_nether_bricks []
setblock ~6 ~10 ~-5 soul_lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 chiseled_nether_bricks []
setblock ~6 ~10 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 blackstone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~0 ~-7 ~-7 ~7 ~-7 nether_brick []
setblock ~-7 ~8 ~-7 magma []
setblock ~-7 ~9 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 ender_pearl 10
replaceitem block ~-4 ~1 ~4 slot.container 1 coal 19
replaceitem block ~-4 ~1 ~4 slot.container 2 blaze_rod 6
replaceitem block ~-4 ~1 ~4 slot.container 3 magma_cream 9
replaceitem block ~-4 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~4 slot.container 5 gold_nugget 19
replaceitem block ~-4 ~1 ~4 slot.container 9 gold_ingot 13
replaceitem block ~-4 ~1 ~4 slot.container 10 quartz 20
replaceitem block ~-4 ~1 ~4 slot.container 11 nether_wart 17
replaceitem block ~-4 ~1 ~4 slot.container 12 obsidian 14
replaceitem block ~-4 ~1 ~4 slot.container 13 crying_obsidian 4
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_apple 3
loot insert ~-4 ~1 ~4 loot "rsf/nether_wastes"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 blaze_rod 9
replaceitem block ~4 ~1 ~4 slot.container 1 magma_cream 12
replaceitem block ~4 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~4 slot.container 4 rotten_flesh 19
replaceitem block ~4 ~1 ~4 slot.container 5 bone 10
replaceitem block ~4 ~1 ~4 slot.container 9 gold_ingot 11
replaceitem block ~4 ~1 ~4 slot.container 10 quartz 18
replaceitem block ~4 ~1 ~4 slot.container 11 nether_wart 15
replaceitem block ~4 ~1 ~4 slot.container 12 obsidian 12
replaceitem block ~4 ~1 ~4 slot.container 13 crying_obsidian 9
replaceitem block ~4 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~4 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~4 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
