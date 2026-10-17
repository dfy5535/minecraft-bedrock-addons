# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4034/4224 | 主题内编号: b066/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·崩塌角楼古堡残垣 (basalt_deltas_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-4 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-4 ~4 soul_lantern []
setblock ~3 ~-4 ~-4 soul_lantern []
setblock ~3 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-2 ~4 slot.container 0 ender_pearl 5
replaceitem block ~3 ~-2 ~4 slot.container 1 bone 12
replaceitem block ~3 ~-2 ~4 slot.container 2 coal 15
replaceitem block ~3 ~-2 ~4 slot.container 3 gunpowder 14
replaceitem block ~3 ~-2 ~4 slot.container 4 magma_cream 19
replaceitem block ~3 ~-2 ~4 slot.container 5 blaze_rod 14
replaceitem block ~3 ~-2 ~4 slot.container 9 crying_obsidian 10
replaceitem block ~3 ~-2 ~4 slot.container 10 golden_apple 7
replaceitem block ~3 ~-2 ~4 slot.container 11 fire_charge 14
replaceitem block ~3 ~-2 ~4 slot.container 12 blackstone 24
replaceitem block ~3 ~-2 ~4 slot.container 13 diamond 3
replaceitem block ~3 ~-2 ~4 slot.container 14 lantern 8
loot insert ~3 ~-2 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~-2 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~10 ~-5 polished_basalt []
setblock ~-5 ~11 ~-6 soul_lantern []
fill ~-5 ~1 ~5 ~-4 ~10 ~6 polished_basalt []
setblock ~-5 ~11 ~5 soul_lantern []
fill ~4 ~1 ~-6 ~5 ~10 ~-5 polished_basalt []
setblock ~4 ~11 ~-6 soul_lantern []
fill ~4 ~1 ~5 ~5 ~10 ~6 polished_basalt []
setblock ~4 ~11 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 polished_blackstone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 basalt []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 basalt []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 basalt []
fill ~6 ~0 ~2 ~6 ~7 ~2 basalt []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~8 ~0 ~9 ~8 ~9 ~9 polished_basalt []
fill ~7 ~0 ~9 ~7 ~7 ~9 basalt []
setblock ~8 ~10 ~9 magma []
setblock ~8 ~11 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 1 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 4 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 5 gunpowder 17
replaceitem block ~-4 ~1 ~5 slot.container 9 ancient_debris 3
replaceitem block ~-4 ~1 ~5 slot.container 10 obsidian 13
replaceitem block ~-4 ~1 ~5 slot.container 11 crying_obsidian 10
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 7
replaceitem block ~-4 ~1 ~5 slot.container 13 fire_charge 14
replaceitem block ~-4 ~1 ~5 slot.container 14 blackstone 24
loot insert ~-4 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 11
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 coal 13
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 4 magma_cream 17
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 12
replaceitem block ~4 ~1 ~5 slot.container 9 ancient_debris 1
replaceitem block ~4 ~1 ~5 slot.container 10 obsidian 11
replaceitem block ~4 ~1 ~5 slot.container 11 crying_obsidian 8
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 13 fire_charge 12
replaceitem block ~4 ~1 ~5 slot.container 14 blackstone 29
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~5 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
summon strider ~0 ~-2 ~0
