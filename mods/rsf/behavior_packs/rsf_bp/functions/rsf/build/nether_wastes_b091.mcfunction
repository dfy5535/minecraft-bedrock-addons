# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3547/4224 | 主题内编号: b091/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·跨水拱桥水神小祠 (nether_wastes_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 nether_brick []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 bone 12
replaceitem block ~-3 ~-3 ~2 slot.container 1 ender_pearl 7
replaceitem block ~-3 ~-3 ~2 slot.container 2 coal 16
replaceitem block ~-3 ~-3 ~2 slot.container 3 blaze_rod 11
replaceitem block ~-3 ~-3 ~2 slot.container 4 magma_cream 14
replaceitem block ~-3 ~-3 ~2 slot.container 5 ghast_tear 11
replaceitem block ~-3 ~-3 ~2 slot.container 9 netherite_scrap 7
replaceitem block ~-3 ~-3 ~2 slot.container 10 fire_charge 6
replaceitem block ~-3 ~-3 ~2 slot.container 11 soul_lantern 5
replaceitem block ~-3 ~-3 ~2 slot.container 12 gold_ingot 12
replaceitem block ~-3 ~-3 ~2 slot.container 13 quartz 19
replaceitem block ~-3 ~-3 ~2 slot.container 14 nether_wart 16
loot insert ~-3 ~-3 ~2 loot "rsf/nether_wastes"
loot insert ~-3 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 polished_blackstone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 polished_blackstone_brick_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 red_nether_brick []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 red_nether_brick_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 chiseled_nether_bricks []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 chiseled_nether_bricks []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 chiseled_nether_bricks []
fill ~7 ~0 ~2 ~7 ~5 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~-7 ~-7 ~9 ~-7 nether_brick []
setblock ~-7 ~10 ~-7 magma []
setblock ~-7 ~11 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gold_nugget 19
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~3 slot.container 2 bone 15
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 10
replaceitem block ~4 ~1 ~3 slot.container 4 coal 19
replaceitem block ~4 ~1 ~3 slot.container 5 blaze_rod 6
replaceitem block ~4 ~1 ~3 slot.container 9 quartz 21
replaceitem block ~4 ~1 ~3 slot.container 10 nether_wart 18
replaceitem block ~4 ~1 ~3 slot.container 11 obsidian 8
replaceitem block ~4 ~1 ~3 slot.container 12 crying_obsidian 5
replaceitem block ~4 ~1 ~3 slot.container 13 golden_apple 4
replaceitem block ~4 ~1 ~3 slot.container 14 golden_carrot 11
loot insert ~4 ~1 ~3 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
