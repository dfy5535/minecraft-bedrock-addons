# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4006/4224 | 主题内编号: b038/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·四方凯旋衣冠冢 (basalt_deltas_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 blackstone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 polished_basalt []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 magma_cream 19
replaceitem block ~0 ~-2 ~-3 slot.container 1 blaze_rod 14
replaceitem block ~0 ~-2 ~-3 slot.container 2 ghast_tear 11
replaceitem block ~0 ~-2 ~-3 slot.container 3 gold_nugget 16
replaceitem block ~0 ~-2 ~-3 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-2 ~-3 slot.container 5 bone 12
replaceitem block ~0 ~-2 ~-3 slot.container 9 crying_obsidian 11
replaceitem block ~0 ~-2 ~-3 slot.container 10 golden_apple 8
replaceitem block ~0 ~-2 ~-3 slot.container 11 fire_charge 8
replaceitem block ~0 ~-2 ~-3 slot.container 12 blackstone 25
replaceitem block ~0 ~-2 ~-3 slot.container 13 diamond 4
replaceitem block ~0 ~-2 ~-3 slot.container 14 lantern 9
loot insert ~0 ~-2 ~-3 loot "rsf/basalt_deltas"
loot insert ~0 ~-2 ~-3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~9 ~5 polished_blackstone_bricks []
fill ~-4 ~1 ~-2 ~4 ~9 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-4 ~1 ~8 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~8 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 polished_blackstone_wall []
setblock ~4 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 polished_basalt []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 blackstone []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 gilded_blackstone []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 polished_basalt []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 basalt []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 basalt []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 polished_blackstone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~7 ~7 ~6 ~7 polished_basalt []
fill ~6 ~0 ~7 ~6 ~4 ~7 basalt []
setblock ~7 ~7 ~7 magma []
setblock ~7 ~8 ~7 lantern []

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
replaceitem block ~-3 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 12 netherite_scrap 7
replaceitem block ~-3 ~1 ~4 slot.container 13 ancient_debris 7
replaceitem block ~-3 ~1 ~4 slot.container 14 obsidian 10
loot insert ~-3 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 magma_cream 17
replaceitem block ~3 ~1 ~4 slot.container 1 blaze_rod 12
replaceitem block ~3 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 11
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 diamond 2
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 12 netherite_scrap 5
replaceitem block ~3 ~1 ~4 slot.container 13 ancient_debris 5
replaceitem block ~3 ~1 ~4 slot.container 14 obsidian 15
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~1 ~4 loot "chests/bastion_treasure"
summon wither_skeleton ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
