# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3978/4224 | 主题内编号: b010/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·十字交叉深层地牢 (basalt_deltas_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_lantern []
setblock ~4 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 magma_cream 19
replaceitem block ~0 ~-4 ~5 slot.container 1 blaze_rod 14
replaceitem block ~0 ~-4 ~5 slot.container 2 ghast_tear 11
replaceitem block ~0 ~-4 ~5 slot.container 3 gold_nugget 16
replaceitem block ~0 ~-4 ~5 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-4 ~5 slot.container 5 bone 12
replaceitem block ~0 ~-4 ~5 slot.container 9 fire_charge 9
replaceitem block ~0 ~-4 ~5 slot.container 10 blackstone 26
replaceitem block ~0 ~-4 ~5 slot.container 11 diamond 5
replaceitem block ~0 ~-4 ~5 slot.container 12 lantern 10
replaceitem block ~0 ~-4 ~5 slot.container 13 gold_ingot 17
replaceitem block ~0 ~-4 ~5 slot.container 14 netherite_scrap 8
loot insert ~0 ~-4 ~5 loot "rsf/basalt_deltas"
loot insert ~0 ~-4 ~5 loot "chests/bastion_treasure"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 magma_cream 17
replaceitem block ~0 ~-4 ~-5 slot.container 1 blaze_rod 12
replaceitem block ~0 ~-4 ~-5 slot.container 2 ghast_tear 9
replaceitem block ~0 ~-4 ~-5 slot.container 3 gold_nugget 22
replaceitem block ~0 ~-4 ~-5 slot.container 4 ender_pearl 11
replaceitem block ~0 ~-4 ~-5 slot.container 5 bone 10
replaceitem block ~0 ~-4 ~-5 slot.container 9 fire_charge 8
replaceitem block ~0 ~-4 ~-5 slot.container 10 blackstone 25
replaceitem block ~0 ~-4 ~-5 slot.container 11 diamond 4
replaceitem block ~0 ~-4 ~-5 slot.container 12 lantern 9
replaceitem block ~0 ~-4 ~-5 slot.container 13 gold_ingot 16
replaceitem block ~0 ~-4 ~-5 slot.container 14 netherite_scrap 7
loot insert ~0 ~-4 ~-5 loot "rsf/basalt_deltas"
loot insert ~0 ~-4 ~-5 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~6 ~7 polished_blackstone_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-6 ~1 ~5 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 polished_blackstone_wall []
setblock ~6 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 polished_blackstone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 basalt []
setblock ~-8 ~6 ~-9 soul_lantern []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 basalt []
setblock ~-8 ~6 ~9 soul_lantern []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 basalt []
setblock ~8 ~6 ~-9 soul_lantern []
fill ~8 ~0 ~9 ~8 ~5 ~9 basalt []
setblock ~8 ~6 ~9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~9 ~0 ~8 ~9 ~8 ~8 polished_basalt []
fill ~8 ~0 ~8 ~8 ~6 ~8 basalt []
setblock ~9 ~9 ~8 magma []
setblock ~9 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 1 gold_nugget 19
replaceitem block ~-5 ~1 ~6 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 4 coal 18
replaceitem block ~-5 ~1 ~6 slot.container 5 gunpowder 17
replaceitem block ~-5 ~1 ~6 slot.container 9 crying_obsidian 8
replaceitem block ~-5 ~1 ~6 slot.container 10 golden_apple 5
replaceitem block ~-5 ~1 ~6 slot.container 11 fire_charge 12
replaceitem block ~-5 ~1 ~6 slot.container 12 blackstone 29
replaceitem block ~-5 ~1 ~6 slot.container 13 diamond 8
replaceitem block ~-5 ~1 ~6 slot.container 14 lantern 6
loot insert ~-5 ~1 ~6 loot "rsf/basalt_deltas"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ender_pearl 11
replaceitem block ~5 ~1 ~6 slot.container 1 bone 10
replaceitem block ~5 ~1 ~6 slot.container 2 coal 13
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 4 magma_cream 17
replaceitem block ~5 ~1 ~6 slot.container 5 blaze_rod 12
replaceitem block ~5 ~1 ~6 slot.container 9 crying_obsidian 6
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 11 fire_charge 10
replaceitem block ~5 ~1 ~6 slot.container 12 blackstone 27
replaceitem block ~5 ~1 ~6 slot.container 13 diamond 6
replaceitem block ~5 ~1 ~6 slot.container 14 lantern 11
loot insert ~5 ~1 ~6 loot "rsf/basalt_deltas"
loot insert ~5 ~1 ~6 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
