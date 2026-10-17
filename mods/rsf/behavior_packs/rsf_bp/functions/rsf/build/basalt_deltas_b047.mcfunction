# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4015/4224 | 主题内编号: b047/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·深渊跨桥决斗长台 (basalt_deltas_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 magma []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 lava []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 blaze_rod 14
replaceitem block ~-4 ~-4 ~3 slot.container 1 ghast_tear 11
replaceitem block ~-4 ~-4 ~3 slot.container 2 gold_nugget 16
replaceitem block ~-4 ~-4 ~3 slot.container 3 ender_pearl 5
replaceitem block ~-4 ~-4 ~3 slot.container 4 bone 12
replaceitem block ~-4 ~-4 ~3 slot.container 5 coal 15
replaceitem block ~-4 ~-4 ~3 slot.container 9 netherite_scrap 7
replaceitem block ~-4 ~-4 ~3 slot.container 10 ancient_debris 7
replaceitem block ~-4 ~-4 ~3 slot.container 11 obsidian 10
replaceitem block ~-4 ~-4 ~3 slot.container 12 crying_obsidian 7
replaceitem block ~-4 ~-4 ~3 slot.container 13 golden_apple 4
replaceitem block ~-4 ~-4 ~3 slot.container 14 fire_charge 11
loot insert ~-4 ~-4 ~3 loot "rsf/basalt_deltas"
loot insert ~-4 ~-4 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 blackstone []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 polished_basalt []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 polished_basalt []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 polished_basalt []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 polished_basalt []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 polished_basalt []
setblock ~-8 ~6 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 polished_basalt []
setblock ~-8 ~6 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 polished_basalt []
setblock ~8 ~6 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 polished_basalt []
setblock ~8 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~9 ~0 ~7 ~9 ~10 ~7 polished_basalt []
fill ~8 ~0 ~7 ~8 ~8 ~7 basalt []
setblock ~9 ~11 ~7 magma []
setblock ~9 ~12 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gunpowder 17
replaceitem block ~5 ~1 ~4 slot.container 1 magma_cream 14
replaceitem block ~5 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~5 ~1 ~4 slot.container 3 ghast_tear 6
replaceitem block ~5 ~1 ~4 slot.container 4 gold_nugget 19
replaceitem block ~5 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~5 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~5 ~1 ~4 slot.container 10 fire_charge 13
replaceitem block ~5 ~1 ~4 slot.container 11 blackstone 30
replaceitem block ~5 ~1 ~4 slot.container 12 diamond 2
replaceitem block ~5 ~1 ~4 slot.container 13 lantern 7
replaceitem block ~5 ~1 ~4 slot.container 14 gold_ingot 14
loot insert ~5 ~1 ~4 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
