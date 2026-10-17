# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3507/4224 | 主题内编号: b051/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·带哨塔围栏探险营地 (nether_wastes_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 nether_brick []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 quartz_block []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 nether_brick []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 polished_blackstone_wall []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 gilded_blackstone []
setblock ~-5 ~9 ~-6 lantern []
setblock ~-5 ~8 ~6 gilded_blackstone []
setblock ~-5 ~9 ~6 lantern []
setblock ~5 ~8 ~-6 gilded_blackstone []
setblock ~5 ~9 ~-6 lantern []
setblock ~5 ~8 ~6 gilded_blackstone []
setblock ~5 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 blackstone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-7 ~0 ~-8 ~-7 ~9 ~-8 nether_brick []
setblock ~-7 ~10 ~-8 magma []
setblock ~-7 ~11 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~5 smoker []
setblock ~4 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 4 coal 19
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 6
replaceitem block ~4 ~1 ~5 slot.container 9 quartz 16
replaceitem block ~4 ~1 ~5 slot.container 10 nether_wart 13
replaceitem block ~4 ~1 ~5 slot.container 11 obsidian 10
replaceitem block ~4 ~1 ~5 slot.container 12 crying_obsidian 7
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 14 golden_carrot 13
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon wither_skeleton ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
