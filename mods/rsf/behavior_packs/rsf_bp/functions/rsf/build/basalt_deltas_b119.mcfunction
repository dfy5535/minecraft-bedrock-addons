# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4087/4224 | 主题内编号: b119/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·半地下恒温洞穴苗圃 (basalt_deltas_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-8 ~6 ~9 ~8 air [] replace lava
fill ~-6 ~0 ~-8 ~6 ~9 ~8 air [] replace fire
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 blackstone [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 blackstone [] replace lava
fill ~-5 ~0 ~-7 ~5 ~0 ~7 blackstone_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 magma []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 polished_blackstone_bricks []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 lava []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 blaze_rod 14
replaceitem block ~-2 ~-4 ~4 slot.container 1 ghast_tear 11
replaceitem block ~-2 ~-4 ~4 slot.container 2 gold_nugget 16
replaceitem block ~-2 ~-4 ~4 slot.container 3 ender_pearl 5
replaceitem block ~-2 ~-4 ~4 slot.container 4 bone 12
replaceitem block ~-2 ~-4 ~4 slot.container 5 coal 15
replaceitem block ~-2 ~-4 ~4 slot.container 9 blackstone 24
replaceitem block ~-2 ~-4 ~4 slot.container 10 diamond 3
replaceitem block ~-2 ~-4 ~4 slot.container 11 lantern 8
replaceitem block ~-2 ~-4 ~4 slot.container 12 gold_ingot 15
replaceitem block ~-2 ~-4 ~4 slot.container 13 netherite_scrap 6
replaceitem block ~-2 ~-4 ~4 slot.container 14 ancient_debris 6
loot insert ~-2 ~-4 ~4 loot "rsf/basalt_deltas"
loot insert ~-2 ~-4 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 blackstone []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-6 ~4 ~6 ~6 polished_blackstone_bricks []
fill ~-3 ~7 ~-5 ~3 ~8 ~5 glass []
fill ~-2 ~7 ~-4 ~2 ~7 ~4 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-8 ~6 ~2 ~8 polished_blackstone_wall []
fill ~-5 ~1 ~-7 ~5 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~7 ~0 ~8 ~7 ~7 ~8 polished_basalt []
fill ~6 ~0 ~8 ~6 ~5 ~8 basalt []
setblock ~7 ~8 ~8 magma []
setblock ~7 ~9 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 gunpowder 17
replaceitem block ~3 ~1 ~5 slot.container 1 magma_cream 14
replaceitem block ~3 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~3 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~3 ~1 ~5 slot.container 4 gold_nugget 19
replaceitem block ~3 ~1 ~5 slot.container 5 ender_pearl 8
replaceitem block ~3 ~1 ~5 slot.container 9 netherite_scrap 8
replaceitem block ~3 ~1 ~5 slot.container 10 ancient_debris 1
replaceitem block ~3 ~1 ~5 slot.container 11 obsidian 11
replaceitem block ~3 ~1 ~5 slot.container 12 crying_obsidian 8
replaceitem block ~3 ~1 ~5 slot.container 13 golden_apple 5
replaceitem block ~3 ~1 ~5 slot.container 14 fire_charge 12
loot insert ~3 ~1 ~5 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
