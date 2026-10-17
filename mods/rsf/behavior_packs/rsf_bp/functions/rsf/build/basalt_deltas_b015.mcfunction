# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3983/4224 | 主题内编号: b015/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·竖井阶梯深渊地牢 (basalt_deltas_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 6格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace fire
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 blackstone [] replace air
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 blackstone [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 magma []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 blackstone []
fill ~-3 ~-7 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-7 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-7 ~3 lantern []
setblock ~2 ~-7 ~-3 lantern []
setblock ~2 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-5 ~3 slot.container 0 blaze_rod 14
replaceitem block ~2 ~-5 ~3 slot.container 1 ghast_tear 11
replaceitem block ~2 ~-5 ~3 slot.container 2 gold_nugget 16
replaceitem block ~2 ~-5 ~3 slot.container 3 ender_pearl 5
replaceitem block ~2 ~-5 ~3 slot.container 4 bone 12
replaceitem block ~2 ~-5 ~3 slot.container 5 coal 15
replaceitem block ~2 ~-5 ~3 slot.container 9 netherite_scrap 4
replaceitem block ~2 ~-5 ~3 slot.container 10 ancient_debris 4
replaceitem block ~2 ~-5 ~3 slot.container 11 obsidian 14
replaceitem block ~2 ~-5 ~3 slot.container 12 crying_obsidian 11
replaceitem block ~2 ~-5 ~3 slot.container 13 golden_apple 8
replaceitem block ~2 ~-5 ~3 slot.container 14 fire_charge 8
loot insert ~2 ~-5 ~3 loot "rsf/basalt_deltas"
loot insert ~2 ~-5 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 blackstone []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 polished_blackstone_bricks []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 polished_basalt []
fill ~-2 ~1 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 blackstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 polished_blackstone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 blackstone []
fill ~0 ~14 ~0 ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 polished_basalt []
setblock ~-6 ~6 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 polished_basalt []
setblock ~-6 ~6 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 polished_basalt []
setblock ~6 ~6 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 polished_basalt []
setblock ~6 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~8 ~7 ~8 ~8 polished_basalt []
fill ~6 ~0 ~8 ~6 ~6 ~8 basalt []
setblock ~7 ~9 ~8 magma []
setblock ~7 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 ancient_debris []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 17
replaceitem block ~3 ~1 ~4 slot.container 1 magma_cream 14
replaceitem block ~3 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 3 ghast_tear 6
replaceitem block ~3 ~1 ~4 slot.container 4 gold_nugget 19
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 6
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 13
replaceitem block ~3 ~1 ~4 slot.container 11 netherite_scrap 4
replaceitem block ~3 ~1 ~4 slot.container 12 ancient_debris 4
replaceitem block ~3 ~1 ~4 slot.container 13 obsidian 14
replaceitem block ~3 ~1 ~4 slot.container 14 crying_obsidian 11
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~-5 ~0
