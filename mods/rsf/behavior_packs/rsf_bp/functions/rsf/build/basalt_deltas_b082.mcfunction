# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4050/4224 | 主题内编号: b082/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·竖井井架矿工物资站 (basalt_deltas_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace fire
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-6 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-6 ~3 soul_lantern []
setblock ~2 ~-6 ~-3 soul_lantern []
setblock ~2 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-4 ~3 slot.container 0 ender_pearl 5
replaceitem block ~2 ~-4 ~3 slot.container 1 bone 12
replaceitem block ~2 ~-4 ~3 slot.container 2 coal 15
replaceitem block ~2 ~-4 ~3 slot.container 3 gunpowder 14
replaceitem block ~2 ~-4 ~3 slot.container 4 magma_cream 19
replaceitem block ~2 ~-4 ~3 slot.container 5 blaze_rod 14
replaceitem block ~2 ~-4 ~3 slot.container 9 ancient_debris 7
replaceitem block ~2 ~-4 ~3 slot.container 10 obsidian 10
replaceitem block ~2 ~-4 ~3 slot.container 11 crying_obsidian 7
replaceitem block ~2 ~-4 ~3 slot.container 12 golden_apple 4
replaceitem block ~2 ~-4 ~3 slot.container 13 fire_charge 11
replaceitem block ~2 ~-4 ~3 slot.container 14 blackstone 28
loot insert ~2 ~-4 ~3 loot "rsf/basalt_deltas"
loot insert ~2 ~-4 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 polished_blackstone_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 polished_blackstone_brick_slab []
fill ~-3 ~5 ~-4 ~3 ~9 ~4 blackstone []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 polished_basalt []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 blackstone []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 gilded_blackstone []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 magma []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~0 ~6 ~7 ~10 ~6 polished_basalt []
fill ~6 ~0 ~6 ~6 ~8 ~6 basalt []
setblock ~7 ~11 ~6 magma []
setblock ~7 ~12 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 1 gold_nugget 19
replaceitem block ~-3 ~1 ~4 slot.container 2 ender_pearl 8
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 4 coal 18
replaceitem block ~-3 ~1 ~4 slot.container 5 gunpowder 17
replaceitem block ~-3 ~1 ~4 slot.container 9 gold_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 10 netherite_scrap 7
replaceitem block ~-3 ~1 ~4 slot.container 11 ancient_debris 7
replaceitem block ~-3 ~1 ~4 slot.container 12 obsidian 10
replaceitem block ~-3 ~1 ~4 slot.container 13 crying_obsidian 7
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-3 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 11
replaceitem block ~3 ~1 ~4 slot.container 1 bone 10
replaceitem block ~3 ~1 ~4 slot.container 2 coal 13
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 4 magma_cream 17
replaceitem block ~3 ~1 ~4 slot.container 5 blaze_rod 12
replaceitem block ~3 ~1 ~4 slot.container 9 gold_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 10 netherite_scrap 5
replaceitem block ~3 ~1 ~4 slot.container 11 ancient_debris 5
replaceitem block ~3 ~1 ~4 slot.container 12 obsidian 15
replaceitem block ~3 ~1 ~4 slot.container 13 crying_obsidian 12
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
