# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3997/4224 | 主题内编号: b029/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·奥术星象琉璃塔 (basalt_deltas_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 11格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~14 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~14 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 nether_brick [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 nether_brick [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 polished_blackstone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 shroomlight []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 bone 12
replaceitem block ~2 ~-3 ~0 slot.container 1 coal 15
replaceitem block ~2 ~-3 ~0 slot.container 2 gunpowder 14
replaceitem block ~2 ~-3 ~0 slot.container 3 magma_cream 19
replaceitem block ~2 ~-3 ~0 slot.container 4 blaze_rod 14
replaceitem block ~2 ~-3 ~0 slot.container 5 ghast_tear 11
replaceitem block ~2 ~-3 ~0 slot.container 9 blackstone 29
replaceitem block ~2 ~-3 ~0 slot.container 10 diamond 8
replaceitem block ~2 ~-3 ~0 slot.container 11 lantern 6
replaceitem block ~2 ~-3 ~0 slot.container 12 gold_ingot 13
replaceitem block ~2 ~-3 ~0 slot.container 13 netherite_scrap 4
replaceitem block ~2 ~-3 ~0 slot.container 14 ancient_debris 4
loot insert ~2 ~-3 ~0 loot "rsf/basalt_deltas"
loot insert ~2 ~-3 ~0 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~11 ~5 nether_brick []
fill ~-3 ~1 ~-4 ~3 ~10 ~4 air []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 polished_blackstone_brick_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~11 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~11 ~-5 ~4 ~11 ~5 blackstone []
fill ~-3 ~12 ~-4 ~3 ~13 ~4 glass []
fill ~-2 ~12 ~-3 ~2 ~12 ~3 air []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 basalt []
setblock ~0 ~4 ~-7 gilded_blackstone []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 basalt []
setblock ~0 ~4 ~7 gilded_blackstone []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 basalt []
setblock ~-6 ~4 ~0 gilded_blackstone []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 basalt []
setblock ~6 ~4 ~0 gilded_blackstone []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~0 ~7 ~7 ~7 ~7 polished_basalt []
fill ~6 ~0 ~7 ~6 ~5 ~7 basalt []
setblock ~7 ~8 ~7 magma []
setblock ~7 ~9 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 15
replaceitem block ~3 ~1 ~4 slot.container 1 coal 18
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 17
replaceitem block ~3 ~1 ~4 slot.container 3 magma_cream 14
replaceitem block ~3 ~1 ~4 slot.container 4 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 5 ghast_tear 6
replaceitem block ~3 ~1 ~4 slot.container 9 netherite_scrap 2
replaceitem block ~3 ~1 ~4 slot.container 10 ancient_debris 2
replaceitem block ~3 ~1 ~4 slot.container 11 obsidian 12
replaceitem block ~3 ~1 ~4 slot.container 12 crying_obsidian 9
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 14 fire_charge 13
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
