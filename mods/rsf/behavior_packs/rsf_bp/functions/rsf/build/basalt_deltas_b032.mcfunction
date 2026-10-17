# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4000/4224 | 主题内编号: b032/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·断顶残垣古哨塔 (basalt_deltas_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 9x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-7 ~5 ~13 ~7 air [] replace lava
fill ~-5 ~0 ~-7 ~5 ~13 ~7 air [] replace fire
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 polished_basalt [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 polished_basalt [] replace lava
fill ~-4 ~0 ~-6 ~4 ~0 ~6 polished_blackstone_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 nether_brick []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 nether_brick []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 polished_blackstone_bricks []
setblock ~0 ~-5 ~0 shroomlight []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_campfire []
setblock ~2 ~-4 ~0 soul_campfire []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ghast_tear 11
replaceitem block ~0 ~-2 ~-3 slot.container 1 gold_nugget 16
replaceitem block ~0 ~-2 ~-3 slot.container 2 ender_pearl 5
replaceitem block ~0 ~-2 ~-3 slot.container 3 bone 12
replaceitem block ~0 ~-2 ~-3 slot.container 4 coal 15
replaceitem block ~0 ~-2 ~-3 slot.container 5 gunpowder 14
replaceitem block ~0 ~-2 ~-3 slot.container 9 fire_charge 14
replaceitem block ~0 ~-2 ~-3 slot.container 10 blackstone 24
replaceitem block ~0 ~-2 ~-3 slot.container 11 diamond 3
replaceitem block ~0 ~-2 ~-3 slot.container 12 lantern 8
replaceitem block ~0 ~-2 ~-3 slot.container 13 gold_ingot 15
replaceitem block ~0 ~-2 ~-3 slot.container 14 netherite_scrap 6
loot insert ~0 ~-2 ~-3 loot "rsf/basalt_deltas"
loot insert ~0 ~-2 ~-3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~10 ~5 polished_basalt []
fill ~-2 ~1 ~-4 ~2 ~9 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~10 ~-5 chiseled_polished_blackstone []
fill ~-3 ~1 ~5 ~-3 ~10 ~5 chiseled_polished_blackstone []
fill ~3 ~1 ~-5 ~3 ~10 ~-5 chiseled_polished_blackstone []
fill ~3 ~1 ~5 ~3 ~10 ~5 chiseled_polished_blackstone []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 nether_brick_fence []
setblock ~3 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~10 ~-5 ~3 ~10 ~5 polished_blackstone_slab []
fill ~-1 ~9 ~-1 ~2 ~10 ~2 air []
fill ~-3 ~9 ~-1 ~-3 ~10 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~9 ~-2 chiseled_polished_blackstone []
fill ~-4 ~0 ~2 ~-4 ~9 ~2 chiseled_polished_blackstone []
fill ~4 ~0 ~-2 ~4 ~9 ~-2 chiseled_polished_blackstone []
fill ~4 ~0 ~2 ~4 ~9 ~2 chiseled_polished_blackstone []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~6 ~0 ~7 ~6 ~10 ~7 polished_basalt []
fill ~5 ~0 ~7 ~5 ~8 ~7 basalt []
setblock ~6 ~11 ~7 magma []
setblock ~6 ~12 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 magma_cream 14
replaceitem block ~-2 ~1 ~4 slot.container 1 blaze_rod 9
replaceitem block ~-2 ~1 ~4 slot.container 2 ghast_tear 6
replaceitem block ~-2 ~1 ~4 slot.container 3 gold_nugget 19
replaceitem block ~-2 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~-2 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-2 ~1 ~4 slot.container 9 gold_ingot 15
replaceitem block ~-2 ~1 ~4 slot.container 10 netherite_scrap 6
replaceitem block ~-2 ~1 ~4 slot.container 11 ancient_debris 6
replaceitem block ~-2 ~1 ~4 slot.container 12 obsidian 16
replaceitem block ~-2 ~1 ~4 slot.container 13 crying_obsidian 6
replaceitem block ~-2 ~1 ~4 slot.container 14 golden_apple 3
loot insert ~-2 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 ghast_tear 9
replaceitem block ~2 ~1 ~4 slot.container 1 gold_nugget 22
replaceitem block ~2 ~1 ~4 slot.container 2 ender_pearl 11
replaceitem block ~2 ~1 ~4 slot.container 3 bone 10
replaceitem block ~2 ~1 ~4 slot.container 4 coal 13
replaceitem block ~2 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~2 ~1 ~4 slot.container 9 gold_ingot 13
replaceitem block ~2 ~1 ~4 slot.container 10 netherite_scrap 4
replaceitem block ~2 ~1 ~4 slot.container 11 ancient_debris 4
replaceitem block ~2 ~1 ~4 slot.container 12 obsidian 14
replaceitem block ~2 ~1 ~4 slot.container 13 crying_obsidian 11
replaceitem block ~2 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~2 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~2 ~1 ~4 loot "chests/bastion_treasure"
summon wither_skeleton ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
