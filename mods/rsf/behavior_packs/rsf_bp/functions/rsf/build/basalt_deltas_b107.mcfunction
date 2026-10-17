# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4075/4224 | 主题内编号: b107/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·观星高塔与秘术地宫 (basalt_deltas_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~13 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~13 ~7 air [] replace fire
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 blackstone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 blackstone [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 magma []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 polished_basalt []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 gold_block []
setblock ~0 ~-7 ~0 lantern []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-4 ~0 slot.container 0 gold_nugget 16
replaceitem block ~2 ~-4 ~0 slot.container 1 ender_pearl 5
replaceitem block ~2 ~-4 ~0 slot.container 2 bone 12
replaceitem block ~2 ~-4 ~0 slot.container 3 coal 15
replaceitem block ~2 ~-4 ~0 slot.container 4 gunpowder 14
replaceitem block ~2 ~-4 ~0 slot.container 5 magma_cream 19
replaceitem block ~2 ~-4 ~0 slot.container 9 netherite_scrap 8
replaceitem block ~2 ~-4 ~0 slot.container 10 ancient_debris 1
replaceitem block ~2 ~-4 ~0 slot.container 11 obsidian 11
replaceitem block ~2 ~-4 ~0 slot.container 12 crying_obsidian 8
replaceitem block ~2 ~-4 ~0 slot.container 13 golden_apple 5
replaceitem block ~2 ~-4 ~0 slot.container 14 fire_charge 12
loot insert ~2 ~-4 ~0 loot "rsf/basalt_deltas"
loot insert ~2 ~-4 ~0 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 blackstone []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 polished_blackstone_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~10 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 polished_blackstone_bricks []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 glass []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 polished_basalt []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 polished_basalt []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 polished_basalt []
fill ~5 ~0 ~2 ~5 ~9 ~2 polished_basalt []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~7 ~0 ~7 ~7 ~10 ~7 polished_basalt []
fill ~6 ~0 ~7 ~6 ~8 ~7 basalt []
setblock ~7 ~11 ~7 magma []
setblock ~7 ~12 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gold_nugget 19
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 8
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 coal 18
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 17
replaceitem block ~3 ~1 ~4 slot.container 5 magma_cream 14
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 10 fire_charge 10
replaceitem block ~3 ~1 ~4 slot.container 11 blackstone 27
replaceitem block ~3 ~1 ~4 slot.container 12 diamond 6
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 11
replaceitem block ~3 ~1 ~4 slot.container 14 gold_ingot 18
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
