# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4055/4224 | 主题内编号: b087/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·十字矿道枢纽补给室 (basalt_deltas_mine_cross_tunnel_hub)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 magma []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 blackstone []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~4 slot.container 0 gold_nugget 16
replaceitem block ~3 ~-4 ~4 slot.container 1 ender_pearl 5
replaceitem block ~3 ~-4 ~4 slot.container 2 bone 12
replaceitem block ~3 ~-4 ~4 slot.container 3 coal 15
replaceitem block ~3 ~-4 ~4 slot.container 4 gunpowder 14
replaceitem block ~3 ~-4 ~4 slot.container 5 magma_cream 19
replaceitem block ~3 ~-4 ~4 slot.container 9 netherite_scrap 3
replaceitem block ~3 ~-4 ~4 slot.container 10 ancient_debris 3
replaceitem block ~3 ~-4 ~4 slot.container 11 obsidian 13
replaceitem block ~3 ~-4 ~4 slot.container 12 crying_obsidian 10
replaceitem block ~3 ~-4 ~4 slot.container 13 golden_apple 7
replaceitem block ~3 ~-4 ~4 slot.container 14 fire_charge 14
loot insert ~3 ~-4 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~-4 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 blackstone []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 blackstone []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 polished_blackstone_bricks []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 polished_blackstone_wall []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 polished_basalt []
setblock ~-5 ~8 ~-6 lantern []
setblock ~-5 ~7 ~6 polished_basalt []
setblock ~-5 ~8 ~6 lantern []
setblock ~5 ~7 ~-6 polished_basalt []
setblock ~5 ~8 ~-6 lantern []
setblock ~5 ~7 ~6 polished_basalt []
setblock ~5 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 polished_blackstone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~8 ~0 ~9 ~8 ~10 ~9 polished_basalt []
fill ~7 ~0 ~9 ~7 ~8 ~9 basalt []
setblock ~8 ~11 ~9 magma []
setblock ~8 ~12 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 1 magma_cream 14
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 4 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 10 fire_charge 11
replaceitem block ~4 ~1 ~5 slot.container 11 blackstone 28
replaceitem block ~4 ~1 ~5 slot.container 12 diamond 7
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 12
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 12
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~-4 ~0
