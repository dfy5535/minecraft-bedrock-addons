# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4025/4224 | 主题内编号: b057/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·中央石棺帝王地下陵寝 (basalt_deltas_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-9 ~7 ~9 ~9 air [] replace lava
fill ~-7 ~0 ~-9 ~7 ~9 ~9 air [] replace fire
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 nether_brick [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 nether_brick [] replace lava
fill ~-6 ~0 ~-8 ~6 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 polished_blackstone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 polished_blackstone_bricks []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 blackstone []
setblock ~0 ~-7 ~0 gilded_blackstone []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 gold_nugget 16
replaceitem block ~0 ~-4 ~-5 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-4 ~-5 slot.container 2 bone 12
replaceitem block ~0 ~-4 ~-5 slot.container 3 coal 15
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 14
replaceitem block ~0 ~-4 ~-5 slot.container 5 magma_cream 19
replaceitem block ~0 ~-4 ~-5 slot.container 9 netherite_scrap 5
replaceitem block ~0 ~-4 ~-5 slot.container 10 ancient_debris 5
replaceitem block ~0 ~-4 ~-5 slot.container 11 obsidian 15
replaceitem block ~0 ~-4 ~-5 slot.container 12 crying_obsidian 12
replaceitem block ~0 ~-4 ~-5 slot.container 13 golden_apple 2
replaceitem block ~0 ~-4 ~-5 slot.container 14 fire_charge 9
loot insert ~0 ~-4 ~-5 loot "rsf/basalt_deltas"
loot insert ~0 ~-4 ~-5 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 nether_brick []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 blackstone []
fill ~0 ~1 ~-7 ~0 ~2 ~7 blackstone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 blackstone []
fill ~-4 ~8 ~-6 ~4 ~8 ~6 polished_blackstone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 shroomlight []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 blackstone []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 basalt []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 basalt []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 polished_blackstone_brick_slab []
setblock ~0 ~3 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x10x6) ---
fill ~8 ~0 ~10 ~8 ~10 ~10 polished_basalt []
fill ~7 ~0 ~10 ~7 ~8 ~10 basalt []
setblock ~8 ~11 ~10 magma []
setblock ~8 ~12 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 blaze_rod 9
replaceitem block ~4 ~1 ~6 slot.container 1 ghast_tear 6
replaceitem block ~4 ~1 ~6 slot.container 2 gold_nugget 19
replaceitem block ~4 ~1 ~6 slot.container 3 ender_pearl 8
replaceitem block ~4 ~1 ~6 slot.container 4 bone 15
replaceitem block ~4 ~1 ~6 slot.container 5 coal 18
replaceitem block ~4 ~1 ~6 slot.container 9 golden_apple 2
replaceitem block ~4 ~1 ~6 slot.container 10 fire_charge 9
replaceitem block ~4 ~1 ~6 slot.container 11 blackstone 26
replaceitem block ~4 ~1 ~6 slot.container 12 diamond 5
replaceitem block ~4 ~1 ~6 slot.container 13 lantern 10
replaceitem block ~4 ~1 ~6 slot.container 14 gold_ingot 17
loot insert ~4 ~1 ~6 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~-4 ~0
