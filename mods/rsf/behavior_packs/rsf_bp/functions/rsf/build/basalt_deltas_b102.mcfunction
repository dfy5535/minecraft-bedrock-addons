# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4070/4224 | 主题内编号: b102/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双子箭塔联防碉楼 (basalt_deltas_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 soul_lantern []
setblock ~4 ~-4 ~-3 soul_lantern []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 magma_cream 19
replaceitem block ~4 ~-2 ~3 slot.container 1 blaze_rod 14
replaceitem block ~4 ~-2 ~3 slot.container 2 ghast_tear 11
replaceitem block ~4 ~-2 ~3 slot.container 3 gold_nugget 16
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 5
replaceitem block ~4 ~-2 ~3 slot.container 5 bone 12
replaceitem block ~4 ~-2 ~3 slot.container 9 ancient_debris 6
replaceitem block ~4 ~-2 ~3 slot.container 10 obsidian 16
replaceitem block ~4 ~-2 ~3 slot.container 11 crying_obsidian 6
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 3
replaceitem block ~4 ~-2 ~3 slot.container 13 fire_charge 10
replaceitem block ~4 ~-2 ~3 slot.container 14 blackstone 27
loot insert ~4 ~-2 ~3 loot "rsf/basalt_deltas"
loot insert ~4 ~-2 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~10 ~5 polished_blackstone_bricks []
fill ~2 ~1 ~-5 ~6 ~10 ~5 polished_blackstone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~5 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 polished_basalt []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 polished_basalt []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 polished_blackstone_wall []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 air []
setblock ~-6 ~10 ~-5 basalt []
setblock ~-6 ~11 ~-5 soul_lantern []
setblock ~-6 ~10 ~5 basalt []
setblock ~-6 ~11 ~5 soul_lantern []
setblock ~6 ~10 ~-5 basalt []
setblock ~6 ~11 ~-5 soul_lantern []
setblock ~6 ~10 ~5 basalt []
setblock ~6 ~11 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~8 ~-2 basalt []
fill ~-7 ~0 ~2 ~-7 ~8 ~2 basalt []
fill ~7 ~0 ~-2 ~7 ~8 ~-2 basalt []
fill ~7 ~0 ~2 ~7 ~8 ~2 basalt []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~9 ~0 ~8 ~9 ~10 ~8 polished_basalt []
fill ~8 ~0 ~8 ~8 ~8 ~8 basalt []
setblock ~9 ~11 ~8 magma []
setblock ~9 ~12 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 coal 18
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 17
replaceitem block ~-5 ~1 ~4 slot.container 2 magma_cream 14
replaceitem block ~-5 ~1 ~4 slot.container 3 blaze_rod 9
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-5 ~1 ~4 slot.container 5 gold_nugget 19
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 10 netherite_scrap 6
replaceitem block ~-5 ~1 ~4 slot.container 11 ancient_debris 6
replaceitem block ~-5 ~1 ~4 slot.container 12 obsidian 16
replaceitem block ~-5 ~1 ~4 slot.container 13 crying_obsidian 6
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 3
loot insert ~-5 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 magma_cream 17
replaceitem block ~5 ~1 ~4 slot.container 1 blaze_rod 12
replaceitem block ~5 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~5 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~5 ~1 ~4 slot.container 4 ender_pearl 11
replaceitem block ~5 ~1 ~4 slot.container 5 bone 10
replaceitem block ~5 ~1 ~4 slot.container 9 gold_ingot 13
replaceitem block ~5 ~1 ~4 slot.container 10 netherite_scrap 4
replaceitem block ~5 ~1 ~4 slot.container 11 ancient_debris 4
replaceitem block ~5 ~1 ~4 slot.container 12 obsidian 14
replaceitem block ~5 ~1 ~4 slot.container 13 crying_obsidian 11
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~5 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~5 ~1 ~4 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
summon strider ~0 ~-2 ~0
