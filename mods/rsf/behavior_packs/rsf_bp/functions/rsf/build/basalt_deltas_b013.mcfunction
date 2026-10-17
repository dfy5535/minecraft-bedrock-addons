# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3981/4224 | 主题内编号: b013/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·地底熔炉苦工地牢 (basalt_deltas_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-9 ~7 ~10 ~9 air [] replace lava
fill ~-7 ~0 ~-9 ~7 ~10 ~9 air [] replace fire
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 nether_brick [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 nether_brick [] replace lava
fill ~-6 ~0 ~-8 ~6 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 polished_blackstone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 nether_brick []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 blaze_rod 14
replaceitem block ~3 ~-4 ~5 slot.container 1 ghast_tear 11
replaceitem block ~3 ~-4 ~5 slot.container 2 gold_nugget 16
replaceitem block ~3 ~-4 ~5 slot.container 3 ender_pearl 5
replaceitem block ~3 ~-4 ~5 slot.container 4 bone 12
replaceitem block ~3 ~-4 ~5 slot.container 5 coal 15
replaceitem block ~3 ~-4 ~5 slot.container 9 lantern 10
replaceitem block ~3 ~-4 ~5 slot.container 10 gold_ingot 17
replaceitem block ~3 ~-4 ~5 slot.container 11 netherite_scrap 8
replaceitem block ~3 ~-4 ~5 slot.container 12 ancient_debris 1
replaceitem block ~3 ~-4 ~5 slot.container 13 obsidian 11
replaceitem block ~3 ~-4 ~5 slot.container 14 crying_obsidian 8
loot insert ~3 ~-4 ~5 loot "rsf/basalt_deltas"
loot insert ~3 ~-4 ~5 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~7 ~7 nether_brick []
fill ~-4 ~1 ~-6 ~4 ~6 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~7 ~-7 basalt []
fill ~-5 ~1 ~7 ~-5 ~7 ~7 basalt []
fill ~5 ~1 ~-7 ~5 ~7 ~-7 basalt []
fill ~5 ~1 ~7 ~5 ~7 ~7 basalt []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 blackstone []
fill ~-5 ~8 ~-7 ~5 ~8 ~7 polished_blackstone_wall []
fill ~-4 ~8 ~-6 ~4 ~8 ~6 air []
setblock ~-5 ~8 ~-7 basalt []
setblock ~-5 ~9 ~-7 lantern []
setblock ~-5 ~8 ~7 basalt []
setblock ~-5 ~9 ~7 lantern []
setblock ~5 ~8 ~-7 basalt []
setblock ~5 ~9 ~-7 lantern []
setblock ~5 ~8 ~7 basalt []
setblock ~5 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 polished_blackstone_bricks []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~0 ~8 ~8 ~6 ~8 polished_basalt []
fill ~7 ~0 ~8 ~7 ~4 ~8 basalt []
setblock ~8 ~7 ~8 magma []
setblock ~8 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 bone 15
replaceitem block ~4 ~1 ~6 slot.container 1 coal 18
replaceitem block ~4 ~1 ~6 slot.container 2 gunpowder 17
replaceitem block ~4 ~1 ~6 slot.container 3 magma_cream 14
replaceitem block ~4 ~1 ~6 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~6 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~6 slot.container 9 obsidian 15
replaceitem block ~4 ~1 ~6 slot.container 10 crying_obsidian 12
replaceitem block ~4 ~1 ~6 slot.container 11 golden_apple 2
replaceitem block ~4 ~1 ~6 slot.container 12 fire_charge 9
replaceitem block ~4 ~1 ~6 slot.container 13 blackstone 26
replaceitem block ~4 ~1 ~6 slot.container 14 diamond 5
loot insert ~4 ~1 ~6 loot "rsf/basalt_deltas"
summon zombie_pigman ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
