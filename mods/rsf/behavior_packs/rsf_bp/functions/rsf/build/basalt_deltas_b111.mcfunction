# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4079/4224 | 主题内编号: b111/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·地下禁忌书库与炼药室 (basalt_deltas_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 magma []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 blackstone []
fill ~-4 ~-6 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-6 ~0 lantern []
setblock ~3 ~-6 ~0 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 bone 12
replaceitem block ~0 ~-4 ~4 slot.container 1 coal 15
replaceitem block ~0 ~-4 ~4 slot.container 2 gunpowder 14
replaceitem block ~0 ~-4 ~4 slot.container 3 magma_cream 19
replaceitem block ~0 ~-4 ~4 slot.container 4 blaze_rod 14
replaceitem block ~0 ~-4 ~4 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-4 ~4 slot.container 9 lantern 10
replaceitem block ~0 ~-4 ~4 slot.container 10 gold_ingot 17
replaceitem block ~0 ~-4 ~4 slot.container 11 netherite_scrap 8
replaceitem block ~0 ~-4 ~4 slot.container 12 ancient_debris 1
replaceitem block ~0 ~-4 ~4 slot.container 13 obsidian 11
replaceitem block ~0 ~-4 ~4 slot.container 14 crying_obsidian 8
loot insert ~0 ~-4 ~4 loot "rsf/basalt_deltas"
loot insert ~0 ~-4 ~4 loot "chests/bastion_treasure"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 bone 10
replaceitem block ~0 ~-4 ~-4 slot.container 1 coal 13
replaceitem block ~0 ~-4 ~-4 slot.container 2 gunpowder 12
replaceitem block ~0 ~-4 ~-4 slot.container 3 magma_cream 17
replaceitem block ~0 ~-4 ~-4 slot.container 4 blaze_rod 12
replaceitem block ~0 ~-4 ~-4 slot.container 5 ghast_tear 9
replaceitem block ~0 ~-4 ~-4 slot.container 9 lantern 9
replaceitem block ~0 ~-4 ~-4 slot.container 10 gold_ingot 16
replaceitem block ~0 ~-4 ~-4 slot.container 11 netherite_scrap 7
replaceitem block ~0 ~-4 ~-4 slot.container 12 ancient_debris 7
replaceitem block ~0 ~-4 ~-4 slot.container 13 obsidian 10
replaceitem block ~0 ~-4 ~-4 slot.container 14 crying_obsidian 7
loot insert ~0 ~-4 ~-4 loot "rsf/basalt_deltas"
loot insert ~0 ~-4 ~-4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 blackstone []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 polished_blackstone_bricks []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 polished_basalt []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 polished_blackstone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~8 ~0 ~9 ~8 ~9 ~9 polished_basalt []
fill ~7 ~0 ~9 ~7 ~7 ~9 basalt []
setblock ~8 ~10 ~9 magma []
setblock ~8 ~11 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 1 magma_cream 14
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 4 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~5 slot.container 9 blackstone 29
replaceitem block ~4 ~1 ~5 slot.container 10 diamond 8
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 13 netherite_scrap 4
replaceitem block ~4 ~1 ~5 slot.container 14 ancient_debris 4
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~-4 ~0
