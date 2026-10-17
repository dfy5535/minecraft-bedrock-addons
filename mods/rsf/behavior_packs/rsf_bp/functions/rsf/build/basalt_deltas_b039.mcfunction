# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4007/4224 | 主题内编号: b039/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·永恒圣火图腾方尖塔 (basalt_deltas_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~14 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~14 ~6 air [] replace fire
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 blackstone [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 blackstone [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 magma []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 blackstone []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 gold_nugget 16
replaceitem block ~1 ~-3 ~2 slot.container 1 ender_pearl 5
replaceitem block ~1 ~-3 ~2 slot.container 2 bone 12
replaceitem block ~1 ~-3 ~2 slot.container 3 coal 15
replaceitem block ~1 ~-3 ~2 slot.container 4 gunpowder 14
replaceitem block ~1 ~-3 ~2 slot.container 5 magma_cream 19
replaceitem block ~1 ~-3 ~2 slot.container 9 blackstone 26
replaceitem block ~1 ~-3 ~2 slot.container 10 diamond 5
replaceitem block ~1 ~-3 ~2 slot.container 11 lantern 10
replaceitem block ~1 ~-3 ~2 slot.container 12 gold_ingot 17
replaceitem block ~1 ~-3 ~2 slot.container 13 netherite_scrap 8
replaceitem block ~1 ~-3 ~2 slot.container 14 ancient_debris 1
loot insert ~1 ~-3 ~2 loot "rsf/basalt_deltas"
loot insert ~1 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 blackstone []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 polished_basalt []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 polished_basalt []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 polished_basalt []
fill ~3 ~1 ~4 ~3 ~11 ~4 polished_basalt []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 polished_blackstone_wall []
setblock ~3 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 polished_blackstone_bricks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 blackstone []
fill ~0 ~17 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 polished_basalt []
setblock ~0 ~4 ~-6 ancient_debris []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 polished_basalt []
setblock ~0 ~4 ~6 ancient_debris []
setblock ~0 ~5 ~6 lantern []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 polished_basalt []
setblock ~-5 ~4 ~0 ancient_debris []
setblock ~-5 ~5 ~0 lantern []
fill ~5 ~0 ~0 ~5 ~3 ~0 polished_basalt []
setblock ~5 ~4 ~0 ancient_debris []
setblock ~5 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~6 ~0 ~7 ~6 ~7 ~7 polished_basalt []
fill ~5 ~0 ~7 ~5 ~5 ~7 basalt []
setblock ~6 ~8 ~7 magma []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 gunpowder 17
replaceitem block ~2 ~1 ~3 slot.container 1 magma_cream 14
replaceitem block ~2 ~1 ~3 slot.container 2 blaze_rod 9
replaceitem block ~2 ~1 ~3 slot.container 3 ghast_tear 6
replaceitem block ~2 ~1 ~3 slot.container 4 gold_nugget 19
replaceitem block ~2 ~1 ~3 slot.container 5 ender_pearl 8
replaceitem block ~2 ~1 ~3 slot.container 9 netherite_scrap 5
replaceitem block ~2 ~1 ~3 slot.container 10 ancient_debris 5
replaceitem block ~2 ~1 ~3 slot.container 11 obsidian 15
replaceitem block ~2 ~1 ~3 slot.container 12 crying_obsidian 12
replaceitem block ~2 ~1 ~3 slot.container 13 golden_apple 2
replaceitem block ~2 ~1 ~3 slot.container 14 fire_charge 9
loot insert ~2 ~1 ~3 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~-3 ~0
