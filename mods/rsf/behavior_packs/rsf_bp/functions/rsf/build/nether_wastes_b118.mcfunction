# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3574/4224 | 主题内编号: b118/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·L型蜂农与林果采集屋 (nether_wastes_conservatory_l_apiary)
# 建筑构造: 主体[l_compound] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 2格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 nether_brick [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 red_nether_brick []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 nether_brick []
fill ~-5 ~1 ~0 ~5 ~5 ~6 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 red_nether_brick []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 polished_blackstone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 glowstone []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 blackstone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-7 ~0 ~-9 ~-7 ~6 ~-9 nether_brick []
setblock ~-7 ~7 ~-9 magma []
setblock ~-7 ~8 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smoker []
setblock ~-3 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 1 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 2 blaze_rod 6
replaceitem block ~-4 ~1 ~5 slot.container 3 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 9 nether_wart 16
replaceitem block ~-4 ~1 ~5 slot.container 10 obsidian 13
replaceitem block ~-4 ~1 ~5 slot.container 11 crying_obsidian 10
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~-4 ~1 ~5 slot.container 13 golden_carrot 9
replaceitem block ~-4 ~1 ~5 slot.container 14 netherite_scrap 3
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 1 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 19
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 nether_wart 14
replaceitem block ~4 ~1 ~5 slot.container 10 obsidian 11
replaceitem block ~4 ~1 ~5 slot.container 11 crying_obsidian 8
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 13 golden_carrot 14
replaceitem block ~4 ~1 ~5 slot.container 14 netherite_scrap 1
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
