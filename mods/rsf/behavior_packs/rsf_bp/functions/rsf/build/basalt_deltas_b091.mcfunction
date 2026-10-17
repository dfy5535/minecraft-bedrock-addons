# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4059/4224 | 主题内编号: b091/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·跨水拱桥水神小祠 (basalt_deltas_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 magma []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 polished_blackstone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 bone 12
replaceitem block ~-3 ~-3 ~2 slot.container 1 coal 15
replaceitem block ~-3 ~-3 ~2 slot.container 2 gunpowder 14
replaceitem block ~-3 ~-3 ~2 slot.container 3 magma_cream 19
replaceitem block ~-3 ~-3 ~2 slot.container 4 blaze_rod 14
replaceitem block ~-3 ~-3 ~2 slot.container 5 ghast_tear 11
replaceitem block ~-3 ~-3 ~2 slot.container 9 obsidian 10
replaceitem block ~-3 ~-3 ~2 slot.container 10 crying_obsidian 7
replaceitem block ~-3 ~-3 ~2 slot.container 11 golden_apple 4
replaceitem block ~-3 ~-3 ~2 slot.container 12 fire_charge 11
replaceitem block ~-3 ~-3 ~2 slot.container 13 blackstone 28
replaceitem block ~-3 ~-3 ~2 slot.container 14 diamond 7
loot insert ~-3 ~-3 ~2 loot "rsf/basalt_deltas"
loot insert ~-3 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 blackstone []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 blackstone_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 polished_basalt []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 polished_blackstone_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~8 ~0 ~5 ~8 ~9 ~5 polished_basalt []
fill ~7 ~0 ~5 ~7 ~7 ~5 basalt []
setblock ~8 ~10 ~5 magma []
setblock ~8 ~11 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gold_nugget 19
replaceitem block ~4 ~1 ~3 slot.container 1 ender_pearl 8
replaceitem block ~4 ~1 ~3 slot.container 2 bone 15
replaceitem block ~4 ~1 ~3 slot.container 3 coal 18
replaceitem block ~4 ~1 ~3 slot.container 4 gunpowder 17
replaceitem block ~4 ~1 ~3 slot.container 5 magma_cream 14
replaceitem block ~4 ~1 ~3 slot.container 9 blackstone 30
replaceitem block ~4 ~1 ~3 slot.container 10 diamond 2
replaceitem block ~4 ~1 ~3 slot.container 11 lantern 7
replaceitem block ~4 ~1 ~3 slot.container 12 gold_ingot 14
replaceitem block ~4 ~1 ~3 slot.container 13 netherite_scrap 5
replaceitem block ~4 ~1 ~3 slot.container 14 ancient_debris 5
loot insert ~4 ~1 ~3 loot "rsf/basalt_deltas"
summon zombie_pigman ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
