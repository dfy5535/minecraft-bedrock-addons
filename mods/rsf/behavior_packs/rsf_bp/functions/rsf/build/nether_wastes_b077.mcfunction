# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3533/4224 | 主题内编号: b077/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双子鸟居图腾神道 (nether_wastes_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~10 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~10 ~7 air [] replace fire
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 quartz_block [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 quartz_block [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 quartz_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 nether_brick []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 quartz_block []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 quartz_slab []
fill ~-4 ~8 ~-4 ~4 ~9 ~4 nether_brick []
fill ~-5 ~10 ~-5 ~5 ~10 ~5 nether_brick_slab []
setblock ~0 ~11 ~0 gilded_blackstone []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 chiseled_nether_bricks []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 chiseled_nether_bricks []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 chiseled_nether_bricks []
fill ~7 ~0 ~2 ~7 ~5 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 nether_brick []
setblock ~-7 ~6 ~-6 magma []
setblock ~-7 ~7 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 crafting_table []
setblock ~-3 ~1 ~4 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 bone 15
replaceitem block ~4 ~1 ~4 slot.container 1 ender_pearl 10
replaceitem block ~4 ~1 ~4 slot.container 2 coal 19
replaceitem block ~4 ~1 ~4 slot.container 3 blaze_rod 6
replaceitem block ~4 ~1 ~4 slot.container 4 magma_cream 9
replaceitem block ~4 ~1 ~4 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~4 slot.container 9 soul_lantern 9
replaceitem block ~4 ~1 ~4 slot.container 10 gold_ingot 16
replaceitem block ~4 ~1 ~4 slot.container 11 quartz 16
replaceitem block ~4 ~1 ~4 slot.container 12 nether_wart 13
replaceitem block ~4 ~1 ~4 slot.container 13 obsidian 10
replaceitem block ~4 ~1 ~4 slot.container 14 crying_obsidian 7
loot insert ~4 ~1 ~4 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~2 ~0
