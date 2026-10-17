# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4094/4224 | 主题内编号: b126/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双子主塔天桥宫殿与暗牢 (basalt_deltas_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~13 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~13 ~8 air [] replace fire
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 blackstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 polished_blackstone_bricks []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 soul_lantern []
setblock ~4 ~-5 ~-4 soul_lantern []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 magma_cream 19
replaceitem block ~4 ~-3 ~4 slot.container 1 blaze_rod 14
replaceitem block ~4 ~-3 ~4 slot.container 2 ghast_tear 11
replaceitem block ~4 ~-3 ~4 slot.container 3 gold_nugget 16
replaceitem block ~4 ~-3 ~4 slot.container 4 ender_pearl 5
replaceitem block ~4 ~-3 ~4 slot.container 5 bone 12
replaceitem block ~4 ~-3 ~4 slot.container 9 crying_obsidian 7
replaceitem block ~4 ~-3 ~4 slot.container 10 golden_apple 4
replaceitem block ~4 ~-3 ~4 slot.container 11 fire_charge 11
replaceitem block ~4 ~-3 ~4 slot.container 12 blackstone 28
replaceitem block ~4 ~-3 ~4 slot.container 13 diamond 7
replaceitem block ~4 ~-3 ~4 slot.container 14 lantern 12
loot insert ~4 ~-3 ~4 loot "rsf/basalt_deltas"
loot insert ~4 ~-3 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~11 ~6 polished_blackstone_bricks []
fill ~2 ~1 ~-6 ~6 ~11 ~6 polished_blackstone_bricks []
fill ~-5 ~1 ~-5 ~-3 ~10 ~5 air []
fill ~3 ~1 ~-5 ~5 ~10 ~5 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 polished_basalt []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 polished_basalt []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 polished_blackstone_bricks []
fill ~0 ~16 ~0 ~0 ~16 ~0 gilded_blackstone []
setblock ~0 ~17 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 polished_basalt []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~9 ~0 ~9 ~9 ~9 ~9 polished_basalt []
fill ~8 ~0 ~9 ~8 ~7 ~9 basalt []
setblock ~9 ~10 ~9 magma []
setblock ~9 ~11 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 coal 18
replaceitem block ~-5 ~1 ~5 slot.container 1 gunpowder 17
replaceitem block ~-5 ~1 ~5 slot.container 2 magma_cream 14
replaceitem block ~-5 ~1 ~5 slot.container 3 blaze_rod 9
replaceitem block ~-5 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-5 ~1 ~5 slot.container 5 gold_nugget 19
replaceitem block ~-5 ~1 ~5 slot.container 9 ancient_debris 7
replaceitem block ~-5 ~1 ~5 slot.container 10 obsidian 10
replaceitem block ~-5 ~1 ~5 slot.container 11 crying_obsidian 7
replaceitem block ~-5 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~-5 ~1 ~5 slot.container 13 fire_charge 11
replaceitem block ~-5 ~1 ~5 slot.container 14 blackstone 28
loot insert ~-5 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 magma_cream 17
replaceitem block ~5 ~1 ~5 slot.container 1 blaze_rod 12
replaceitem block ~5 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~5 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~5 ~1 ~5 slot.container 4 ender_pearl 11
replaceitem block ~5 ~1 ~5 slot.container 5 bone 10
replaceitem block ~5 ~1 ~5 slot.container 9 ancient_debris 5
replaceitem block ~5 ~1 ~5 slot.container 10 obsidian 15
replaceitem block ~5 ~1 ~5 slot.container 11 crying_obsidian 12
replaceitem block ~5 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~5 ~1 ~5 slot.container 13 fire_charge 9
replaceitem block ~5 ~1 ~5 slot.container 14 blackstone 26
loot insert ~5 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~5 ~1 ~5 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
summon strider ~0 ~-3 ~0
