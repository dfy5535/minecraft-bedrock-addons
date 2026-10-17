# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4014/4224 | 主题内编号: b046/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·要塞校场比武演武台 (basalt_deltas_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace fire
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 blackstone []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~5 slot.container 0 ghast_tear 11
replaceitem block ~4 ~-2 ~5 slot.container 1 gold_nugget 16
replaceitem block ~4 ~-2 ~5 slot.container 2 ender_pearl 5
replaceitem block ~4 ~-2 ~5 slot.container 3 bone 12
replaceitem block ~4 ~-2 ~5 slot.container 4 coal 15
replaceitem block ~4 ~-2 ~5 slot.container 5 gunpowder 14
replaceitem block ~4 ~-2 ~5 slot.container 9 fire_charge 14
replaceitem block ~4 ~-2 ~5 slot.container 10 blackstone 24
replaceitem block ~4 ~-2 ~5 slot.container 11 diamond 3
replaceitem block ~4 ~-2 ~5 slot.container 12 lantern 8
replaceitem block ~4 ~-2 ~5 slot.container 13 gold_ingot 15
replaceitem block ~4 ~-2 ~5 slot.container 14 netherite_scrap 6
loot insert ~4 ~-2 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~-2 ~5 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 polished_blackstone_bricks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 polished_basalt []
setblock ~-6 ~10 ~-7 soul_lantern []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 polished_basalt []
setblock ~-6 ~10 ~6 soul_lantern []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 polished_basalt []
setblock ~5 ~10 ~-7 soul_lantern []
fill ~5 ~1 ~6 ~6 ~9 ~7 polished_basalt []
setblock ~5 ~10 ~6 soul_lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 polished_basalt []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 polished_blackstone_wall []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 basalt []
setblock ~-6 ~9 ~-7 soul_lantern []
setblock ~-6 ~8 ~7 basalt []
setblock ~-6 ~9 ~7 soul_lantern []
setblock ~6 ~8 ~-7 basalt []
setblock ~6 ~9 ~-7 soul_lantern []
setblock ~6 ~8 ~7 basalt []
setblock ~6 ~9 ~7 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 blackstone []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~9 ~0 ~8 ~9 ~9 ~8 polished_basalt []
fill ~8 ~0 ~8 ~8 ~7 ~8 basalt []
setblock ~9 ~10 ~8 magma []
setblock ~9 ~11 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 coal 18
replaceitem block ~-5 ~1 ~6 slot.container 1 gunpowder 17
replaceitem block ~-5 ~1 ~6 slot.container 2 magma_cream 14
replaceitem block ~-5 ~1 ~6 slot.container 3 blaze_rod 9
replaceitem block ~-5 ~1 ~6 slot.container 4 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 5 gold_nugget 19
replaceitem block ~-5 ~1 ~6 slot.container 9 ancient_debris 4
replaceitem block ~-5 ~1 ~6 slot.container 10 obsidian 14
replaceitem block ~-5 ~1 ~6 slot.container 11 crying_obsidian 11
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 8
replaceitem block ~-5 ~1 ~6 slot.container 13 fire_charge 8
replaceitem block ~-5 ~1 ~6 slot.container 14 blackstone 25
loot insert ~-5 ~1 ~6 loot "rsf/basalt_deltas"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 magma_cream 17
replaceitem block ~5 ~1 ~6 slot.container 1 blaze_rod 12
replaceitem block ~5 ~1 ~6 slot.container 2 ghast_tear 9
replaceitem block ~5 ~1 ~6 slot.container 3 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 11
replaceitem block ~5 ~1 ~6 slot.container 5 bone 10
replaceitem block ~5 ~1 ~6 slot.container 9 ancient_debris 2
replaceitem block ~5 ~1 ~6 slot.container 10 obsidian 12
replaceitem block ~5 ~1 ~6 slot.container 11 crying_obsidian 9
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 6
replaceitem block ~5 ~1 ~6 slot.container 13 fire_charge 13
replaceitem block ~5 ~1 ~6 slot.container 14 blackstone 30
loot insert ~5 ~1 ~6 loot "rsf/basalt_deltas"
loot insert ~5 ~1 ~6 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
