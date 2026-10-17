# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4067/4224 | 主题内编号: b099/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·铁闸门瓮城防御堡 (basalt_deltas_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~11 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~11 ~7 air [] replace fire
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 blackstone [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 blackstone [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 blackstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 magma []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 polished_basalt []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 gunpowder 14
replaceitem block ~3 ~-3 ~3 slot.container 1 magma_cream 19
replaceitem block ~3 ~-3 ~3 slot.container 2 blaze_rod 14
replaceitem block ~3 ~-3 ~3 slot.container 3 ghast_tear 11
replaceitem block ~3 ~-3 ~3 slot.container 4 gold_nugget 16
replaceitem block ~3 ~-3 ~3 slot.container 5 ender_pearl 5
replaceitem block ~3 ~-3 ~3 slot.container 9 golden_apple 5
replaceitem block ~3 ~-3 ~3 slot.container 10 fire_charge 12
replaceitem block ~3 ~-3 ~3 slot.container 11 blackstone 29
replaceitem block ~3 ~-3 ~3 slot.container 12 diamond 8
replaceitem block ~3 ~-3 ~3 slot.container 13 lantern 6
replaceitem block ~3 ~-3 ~3 slot.container 14 gold_ingot 13
loot insert ~3 ~-3 ~3 loot "rsf/basalt_deltas"
loot insert ~3 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 blackstone []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 polished_blackstone_bricks []
fill ~-5 ~9 ~-5 ~5 ~9 ~5 polished_blackstone_wall []
fill ~-4 ~9 ~-4 ~4 ~9 ~4 air []
setblock ~-5 ~9 ~-5 polished_basalt []
setblock ~-5 ~10 ~-5 lantern []
setblock ~-5 ~9 ~5 polished_basalt []
setblock ~-5 ~10 ~5 lantern []
setblock ~5 ~9 ~-5 polished_basalt []
setblock ~5 ~10 ~-5 lantern []
setblock ~5 ~9 ~5 polished_basalt []
setblock ~5 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~8 ~8 ~7 ~8 polished_basalt []
fill ~7 ~0 ~8 ~7 ~5 ~8 basalt []
setblock ~8 ~8 ~8 magma []
setblock ~8 ~9 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 gold_nugget 19
replaceitem block ~4 ~1 ~4 slot.container 1 ender_pearl 8
replaceitem block ~4 ~1 ~4 slot.container 2 bone 15
replaceitem block ~4 ~1 ~4 slot.container 3 coal 18
replaceitem block ~4 ~1 ~4 slot.container 4 gunpowder 17
replaceitem block ~4 ~1 ~4 slot.container 5 magma_cream 14
replaceitem block ~4 ~1 ~4 slot.container 9 netherite_scrap 2
replaceitem block ~4 ~1 ~4 slot.container 10 ancient_debris 2
replaceitem block ~4 ~1 ~4 slot.container 11 obsidian 12
replaceitem block ~4 ~1 ~4 slot.container 12 crying_obsidian 9
replaceitem block ~4 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~4 ~1 ~4 slot.container 14 fire_charge 13
loot insert ~4 ~1 ~4 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~-3 ~0
