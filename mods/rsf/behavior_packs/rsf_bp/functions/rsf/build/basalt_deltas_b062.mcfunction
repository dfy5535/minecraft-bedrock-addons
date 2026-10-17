# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4030/4224 | 主题内编号: b062/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·下沉阶梯深渊藏骨堂 (basalt_deltas_crypt_sunken_ossuary)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 soul_lantern []
setblock ~3 ~-6 ~-4 soul_lantern []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 magma_cream 19
replaceitem block ~3 ~-4 ~4 slot.container 1 blaze_rod 14
replaceitem block ~3 ~-4 ~4 slot.container 2 ghast_tear 11
replaceitem block ~3 ~-4 ~4 slot.container 3 gold_nugget 16
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 5
replaceitem block ~3 ~-4 ~4 slot.container 5 bone 12
replaceitem block ~3 ~-4 ~4 slot.container 9 ancient_debris 1
replaceitem block ~3 ~-4 ~4 slot.container 10 obsidian 11
replaceitem block ~3 ~-4 ~4 slot.container 11 crying_obsidian 8
replaceitem block ~3 ~-4 ~4 slot.container 12 golden_apple 5
replaceitem block ~3 ~-4 ~4 slot.container 13 fire_charge 12
replaceitem block ~3 ~-4 ~4 slot.container 14 blackstone 29
loot insert ~3 ~-4 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~-4 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 polished_basalt []
fill ~0 ~1 ~-6 ~0 ~2 ~6 polished_basalt []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 polished_blackstone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 polished_blackstone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~8 ~8 ~10 ~8 polished_basalt []
fill ~7 ~0 ~8 ~7 ~8 ~8 basalt []
setblock ~8 ~11 ~8 magma []
setblock ~8 ~12 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 1 gunpowder 17
replaceitem block ~-4 ~1 ~5 slot.container 2 magma_cream 14
replaceitem block ~-4 ~1 ~5 slot.container 3 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 17
replaceitem block ~-4 ~1 ~5 slot.container 10 netherite_scrap 8
replaceitem block ~-4 ~1 ~5 slot.container 11 ancient_debris 1
replaceitem block ~-4 ~1 ~5 slot.container 12 obsidian 11
replaceitem block ~-4 ~1 ~5 slot.container 13 crying_obsidian 8
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~-4 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 magma_cream 17
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 12
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 11
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 15
replaceitem block ~4 ~1 ~5 slot.container 10 netherite_scrap 6
replaceitem block ~4 ~1 ~5 slot.container 11 ancient_debris 6
replaceitem block ~4 ~1 ~5 slot.container 12 obsidian 16
replaceitem block ~4 ~1 ~5 slot.container 13 crying_obsidian 6
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~5 loot "chests/bastion_treasure"
summon wither_skeleton ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
