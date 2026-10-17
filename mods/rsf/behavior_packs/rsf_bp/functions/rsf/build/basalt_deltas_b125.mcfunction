# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4093/4224 | 主题内编号: b125/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·巨型阶梯金字塔神王殿 (basalt_deltas_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 10格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~13 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~13 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 nether_brick [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 nether_brick [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 shroomlight []
setblock ~0 ~-7 ~0 lantern []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~4 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-4 ~0 slot.container 0 bone 12
replaceitem block ~4 ~-4 ~0 slot.container 1 coal 15
replaceitem block ~4 ~-4 ~0 slot.container 2 gunpowder 14
replaceitem block ~4 ~-4 ~0 slot.container 3 magma_cream 19
replaceitem block ~4 ~-4 ~0 slot.container 4 blaze_rod 14
replaceitem block ~4 ~-4 ~0 slot.container 5 ghast_tear 11
replaceitem block ~4 ~-4 ~0 slot.container 9 golden_apple 5
replaceitem block ~4 ~-4 ~0 slot.container 10 fire_charge 12
replaceitem block ~4 ~-4 ~0 slot.container 11 blackstone 29
replaceitem block ~4 ~-4 ~0 slot.container 12 diamond 8
replaceitem block ~4 ~-4 ~0 slot.container 13 lantern 6
replaceitem block ~4 ~-4 ~0 slot.container 14 gold_ingot 13
loot insert ~4 ~-4 ~0 loot "rsf/basalt_deltas"
loot insert ~4 ~-4 ~0 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 nether_brick []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 blackstone []
fill ~-4 ~5 ~-5 ~4 ~10 ~5 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~4 ~9 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 nether_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~11 ~-7 ~6 ~11 ~7 blackstone []
fill ~-5 ~12 ~-6 ~5 ~12 ~6 polished_blackstone_bricks []
fill ~-1 ~13 ~-1 ~1 ~13 ~1 shroomlight []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 basalt []
setblock ~0 ~4 ~-9 gilded_blackstone []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 basalt []
setblock ~0 ~4 ~9 gilded_blackstone []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 basalt []
setblock ~-8 ~4 ~0 gilded_blackstone []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 basalt []
setblock ~8 ~4 ~0 gilded_blackstone []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~9 ~0 ~9 ~9 ~8 ~9 polished_basalt []
fill ~8 ~0 ~9 ~8 ~6 ~9 basalt []
setblock ~9 ~9 ~9 magma []
setblock ~9 ~10 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 15
replaceitem block ~5 ~1 ~6 slot.container 1 coal 18
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 17
replaceitem block ~5 ~1 ~6 slot.container 3 magma_cream 14
replaceitem block ~5 ~1 ~6 slot.container 4 blaze_rod 9
replaceitem block ~5 ~1 ~6 slot.container 5 ghast_tear 6
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 11
replaceitem block ~5 ~1 ~6 slot.container 10 gold_ingot 18
replaceitem block ~5 ~1 ~6 slot.container 11 netherite_scrap 2
replaceitem block ~5 ~1 ~6 slot.container 12 ancient_debris 2
replaceitem block ~5 ~1 ~6 slot.container 13 obsidian 12
replaceitem block ~5 ~1 ~6 slot.container 14 crying_obsidian 9
loot insert ~5 ~1 ~6 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
