# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4081/4224 | 主题内编号: b113/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·八角全采光生态温室 (basalt_deltas_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 nether_brick [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 nether_brick [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 blackstone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-3 ~3 slot.container 0 gold_nugget 16
replaceitem block ~-2 ~-3 ~3 slot.container 1 ender_pearl 5
replaceitem block ~-2 ~-3 ~3 slot.container 2 bone 12
replaceitem block ~-2 ~-3 ~3 slot.container 3 coal 15
replaceitem block ~-2 ~-3 ~3 slot.container 4 gunpowder 14
replaceitem block ~-2 ~-3 ~3 slot.container 5 magma_cream 19
replaceitem block ~-2 ~-3 ~3 slot.container 9 lantern 7
replaceitem block ~-2 ~-3 ~3 slot.container 10 gold_ingot 14
replaceitem block ~-2 ~-3 ~3 slot.container 11 netherite_scrap 5
replaceitem block ~-2 ~-3 ~3 slot.container 12 ancient_debris 5
replaceitem block ~-2 ~-3 ~3 slot.container 13 obsidian 15
replaceitem block ~-2 ~-3 ~3 slot.container 14 crying_obsidian 12
loot insert ~-2 ~-3 ~3 loot "rsf/basalt_deltas"
loot insert ~-2 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 nether_brick []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 basalt []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 basalt []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 basalt []
fill ~3 ~1 ~4 ~3 ~8 ~4 basalt []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 blackstone []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 blackstone []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 basalt []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 basalt []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 polished_blackstone_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~7 ~7 ~6 ~7 polished_basalt []
fill ~6 ~0 ~7 ~6 ~4 ~7 basalt []
setblock ~7 ~7 ~7 magma []
setblock ~7 ~8 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 1 ghast_tear 6
replaceitem block ~3 ~1 ~4 slot.container 2 gold_nugget 19
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 8
replaceitem block ~3 ~1 ~4 slot.container 4 bone 15
replaceitem block ~3 ~1 ~4 slot.container 5 coal 18
replaceitem block ~3 ~1 ~4 slot.container 9 obsidian 10
replaceitem block ~3 ~1 ~4 slot.container 10 crying_obsidian 7
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 12 fire_charge 11
replaceitem block ~3 ~1 ~4 slot.container 13 blackstone 28
replaceitem block ~3 ~1 ~4 slot.container 14 diamond 7
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
