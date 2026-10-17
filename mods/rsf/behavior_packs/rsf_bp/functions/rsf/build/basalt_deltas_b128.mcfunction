# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4096/4224 | 主题内编号: b128/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·U型紫禁朝堂大殿与地底金库 (basalt_deltas_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~12 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~12 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 polished_basalt [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 polished_basalt [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 polished_basalt []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 ender_pearl 5
replaceitem block ~4 ~-3 ~5 slot.container 1 bone 12
replaceitem block ~4 ~-3 ~5 slot.container 2 coal 15
replaceitem block ~4 ~-3 ~5 slot.container 3 gunpowder 14
replaceitem block ~4 ~-3 ~5 slot.container 4 magma_cream 19
replaceitem block ~4 ~-3 ~5 slot.container 5 blaze_rod 14
replaceitem block ~4 ~-3 ~5 slot.container 9 crying_obsidian 6
replaceitem block ~4 ~-3 ~5 slot.container 10 golden_apple 3
replaceitem block ~4 ~-3 ~5 slot.container 11 fire_charge 10
replaceitem block ~4 ~-3 ~5 slot.container 12 blackstone 27
replaceitem block ~4 ~-3 ~5 slot.container 13 diamond 6
replaceitem block ~4 ~-3 ~5 slot.container 14 lantern 11
loot insert ~4 ~-3 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~-3 ~5 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 polished_basalt []
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~9 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~9 ~-8 ~7 ~9 ~8 polished_blackstone_slab []
fill ~-5 ~10 ~-6 ~5 ~11 ~6 nether_brick []
fill ~-6 ~12 ~-7 ~6 ~12 ~7 polished_blackstone_brick_slab []
setblock ~0 ~13 ~0 ancient_debris []
setblock ~0 ~14 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 nether_brick_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~9 ~0 ~9 ~9 ~6 ~9 polished_basalt []
fill ~8 ~0 ~9 ~8 ~4 ~9 basalt []
setblock ~9 ~7 ~9 magma []
setblock ~9 ~8 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 magma_cream 14
replaceitem block ~-5 ~1 ~6 slot.container 1 blaze_rod 9
replaceitem block ~-5 ~1 ~6 slot.container 2 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 3 gold_nugget 19
replaceitem block ~-5 ~1 ~6 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~6 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 9 diamond 3
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 8
replaceitem block ~-5 ~1 ~6 slot.container 11 gold_ingot 15
replaceitem block ~-5 ~1 ~6 slot.container 12 netherite_scrap 6
replaceitem block ~-5 ~1 ~6 slot.container 13 ancient_debris 6
replaceitem block ~-5 ~1 ~6 slot.container 14 obsidian 16
loot insert ~-5 ~1 ~6 loot "rsf/basalt_deltas"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ghast_tear 9
replaceitem block ~5 ~1 ~6 slot.container 1 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 11
replaceitem block ~5 ~1 ~6 slot.container 3 bone 10
replaceitem block ~5 ~1 ~6 slot.container 4 coal 13
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 9 diamond 8
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 6
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 12 netherite_scrap 4
replaceitem block ~5 ~1 ~6 slot.container 13 ancient_debris 4
replaceitem block ~5 ~1 ~6 slot.container 14 obsidian 14
loot insert ~5 ~1 ~6 loot "rsf/basalt_deltas"
loot insert ~5 ~1 ~6 loot "chests/bastion_treasure"
summon wither_skeleton ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
