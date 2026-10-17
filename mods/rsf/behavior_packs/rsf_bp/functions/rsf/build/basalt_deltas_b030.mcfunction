# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3998/4224 | 主题内编号: b030/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双坡顶驻军卫戍塔 (basalt_deltas_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~13 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~13 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-4 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-4 ~3 soul_lantern []
setblock ~2 ~-4 ~-3 soul_lantern []
setblock ~2 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-2 ~3 slot.container 0 magma_cream 19
replaceitem block ~2 ~-2 ~3 slot.container 1 blaze_rod 14
replaceitem block ~2 ~-2 ~3 slot.container 2 ghast_tear 11
replaceitem block ~2 ~-2 ~3 slot.container 3 gold_nugget 16
replaceitem block ~2 ~-2 ~3 slot.container 4 ender_pearl 5
replaceitem block ~2 ~-2 ~3 slot.container 5 bone 12
replaceitem block ~2 ~-2 ~3 slot.container 9 fire_charge 11
replaceitem block ~2 ~-2 ~3 slot.container 10 blackstone 28
replaceitem block ~2 ~-2 ~3 slot.container 11 diamond 7
replaceitem block ~2 ~-2 ~3 slot.container 12 lantern 12
replaceitem block ~2 ~-2 ~3 slot.container 13 gold_ingot 12
replaceitem block ~2 ~-2 ~3 slot.container 14 netherite_scrap 3
loot insert ~2 ~-2 ~3 loot "rsf/basalt_deltas"
loot insert ~2 ~-2 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~10 ~5 polished_blackstone_bricks []
fill ~-4 ~1 ~0 ~4 ~9 ~5 blackstone []
fill ~-3 ~1 ~-4 ~-1 ~9 ~4 air []
fill ~-1 ~1 ~1 ~3 ~8 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~11 ~-6 ~-5 ~11 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~11 ~-6 ~5 ~11 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~12 ~-5 ~-4 ~12 ~5 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~12 ~-5 ~4 ~12 ~5 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~12 ~-5 ~3 ~12 ~5 polished_blackstone_brick_slab []
fill ~0 ~13 ~-6 ~0 ~13 ~6 polished_basalt []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~12 ~2 blackstone []
fill ~5 ~1 ~-1 ~6 ~11 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~13 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~8 ~7 ~8 ~8 polished_basalt []
fill ~6 ~0 ~8 ~6 ~6 ~8 basalt []
setblock ~7 ~9 ~8 magma []
setblock ~7 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 coal 18
replaceitem block ~-3 ~1 ~4 slot.container 1 gunpowder 17
replaceitem block ~-3 ~1 ~4 slot.container 2 magma_cream 14
replaceitem block ~-3 ~1 ~4 slot.container 3 blaze_rod 9
replaceitem block ~-3 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 5 gold_nugget 19
replaceitem block ~-3 ~1 ~4 slot.container 9 crying_obsidian 7
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~-3 ~1 ~4 slot.container 11 fire_charge 11
replaceitem block ~-3 ~1 ~4 slot.container 12 blackstone 28
replaceitem block ~-3 ~1 ~4 slot.container 13 diamond 7
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 12
loot insert ~-3 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 magma_cream 17
replaceitem block ~3 ~1 ~4 slot.container 1 blaze_rod 12
replaceitem block ~3 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 11
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 crying_obsidian 12
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 2
replaceitem block ~3 ~1 ~4 slot.container 11 fire_charge 9
replaceitem block ~3 ~1 ~4 slot.container 12 blackstone 26
replaceitem block ~3 ~1 ~4 slot.container 13 diamond 5
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 10
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~1 ~4 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
summon strider ~0 ~-2 ~0
