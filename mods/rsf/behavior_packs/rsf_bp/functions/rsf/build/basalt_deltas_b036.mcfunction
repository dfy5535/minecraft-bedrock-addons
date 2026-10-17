# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4004/4224 | 主题内编号: b036/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·下沉碑林地宫方尖碑 (basalt_deltas_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~13 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~13 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_basalt [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_basalt [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_basalt []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-5 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-5 ~3 soul_campfire []
setblock ~2 ~-5 ~-3 soul_campfire []
setblock ~2 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-3 ~3 slot.container 0 coal 15
replaceitem block ~2 ~-3 ~3 slot.container 1 gunpowder 14
replaceitem block ~2 ~-3 ~3 slot.container 2 magma_cream 19
replaceitem block ~2 ~-3 ~3 slot.container 3 blaze_rod 14
replaceitem block ~2 ~-3 ~3 slot.container 4 ghast_tear 11
replaceitem block ~2 ~-3 ~3 slot.container 5 gold_nugget 16
replaceitem block ~2 ~-3 ~3 slot.container 9 crying_obsidian 8
replaceitem block ~2 ~-3 ~3 slot.container 10 golden_apple 5
replaceitem block ~2 ~-3 ~3 slot.container 11 fire_charge 12
replaceitem block ~2 ~-3 ~3 slot.container 12 blackstone 29
replaceitem block ~2 ~-3 ~3 slot.container 13 diamond 8
replaceitem block ~2 ~-3 ~3 slot.container 14 lantern 6
loot insert ~2 ~-3 ~3 loot "rsf/basalt_deltas"
loot insert ~2 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 polished_basalt []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 polished_blackstone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 polished_basalt []
fill ~0 ~16 ~0 ~0 ~16 ~0 ancient_debris []
setblock ~0 ~17 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 nether_brick_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~0 ~8 ~7 ~9 ~8 polished_basalt []
fill ~6 ~0 ~8 ~6 ~7 ~8 basalt []
setblock ~7 ~10 ~8 magma []
setblock ~7 ~11 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ender_pearl 8
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 2 coal 18
replaceitem block ~-3 ~1 ~4 slot.container 3 gunpowder 17
replaceitem block ~-3 ~1 ~4 slot.container 4 magma_cream 14
replaceitem block ~-3 ~1 ~4 slot.container 5 blaze_rod 9
replaceitem block ~-3 ~1 ~4 slot.container 9 ancient_debris 1
replaceitem block ~-3 ~1 ~4 slot.container 10 obsidian 11
replaceitem block ~-3 ~1 ~4 slot.container 11 crying_obsidian 8
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~-3 ~1 ~4 slot.container 13 fire_charge 12
replaceitem block ~-3 ~1 ~4 slot.container 14 blackstone 29
loot insert ~-3 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 coal 13
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 2 magma_cream 17
replaceitem block ~3 ~1 ~4 slot.container 3 blaze_rod 12
replaceitem block ~3 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 5 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 9 ancient_debris 6
replaceitem block ~3 ~1 ~4 slot.container 10 obsidian 16
replaceitem block ~3 ~1 ~4 slot.container 11 crying_obsidian 6
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 13 fire_charge 10
replaceitem block ~3 ~1 ~4 slot.container 14 blackstone 27
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~1 ~4 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
summon strider ~0 ~-3 ~0
