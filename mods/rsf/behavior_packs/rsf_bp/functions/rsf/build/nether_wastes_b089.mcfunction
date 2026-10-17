# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3545/4224 | 主题内编号: b089/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·四柱挑檐祈愿凉亭 (nether_wastes_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 9x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~10 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~10 ~6 air [] replace fire
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 quartz_block [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 quartz_block [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 nether_brick []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~7 ~4 quartz_block []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 quartz_pillar []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 quartz_pillar []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 quartz_pillar []
fill ~3 ~1 ~4 ~3 ~7 ~4 quartz_pillar []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 nether_brick_fence []
setblock ~3 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 quartz_slab []
fill ~-2 ~8 ~-3 ~2 ~9 ~3 nether_brick []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 nether_brick_slab []
setblock ~0 ~11 ~0 gilded_blackstone []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~8 ~-2 chiseled_nether_bricks []
fill ~-4 ~0 ~2 ~-4 ~8 ~2 chiseled_nether_bricks []
fill ~4 ~0 ~-2 ~4 ~8 ~-2 chiseled_nether_bricks []
fill ~4 ~0 ~2 ~4 ~8 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 5x5x4) ---
fill ~-5 ~0 ~-5 ~-5 ~7 ~-5 nether_brick []
setblock ~-5 ~8 ~-5 magma []
setblock ~-5 ~9 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 soul_lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 gilded_blackstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 magma_cream 9
replaceitem block ~2 ~1 ~3 slot.container 1 ghast_tear 6
replaceitem block ~2 ~1 ~3 slot.container 2 gold_nugget 19
replaceitem block ~2 ~1 ~3 slot.container 3 rotten_flesh 16
replaceitem block ~2 ~1 ~3 slot.container 4 bone 15
replaceitem block ~2 ~1 ~3 slot.container 5 ender_pearl 10
replaceitem block ~2 ~1 ~3 slot.container 9 golden_apple 5
replaceitem block ~2 ~1 ~3 slot.container 10 golden_carrot 12
replaceitem block ~2 ~1 ~3 slot.container 11 netherite_scrap 6
replaceitem block ~2 ~1 ~3 slot.container 12 fire_charge 12
replaceitem block ~2 ~1 ~3 slot.container 13 soul_lantern 4
replaceitem block ~2 ~1 ~3 slot.container 14 gold_ingot 11
loot insert ~2 ~1 ~3 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~2 ~0
