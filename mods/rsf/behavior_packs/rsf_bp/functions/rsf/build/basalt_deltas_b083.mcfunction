# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4051/4224 | 主题内编号: b083/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·铁砧锻造与模具工坊 (basalt_deltas_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 magma []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 blackstone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 gunpowder 14
replaceitem block ~3 ~-3 ~4 slot.container 1 magma_cream 19
replaceitem block ~3 ~-3 ~4 slot.container 2 blaze_rod 14
replaceitem block ~3 ~-3 ~4 slot.container 3 ghast_tear 11
replaceitem block ~3 ~-3 ~4 slot.container 4 gold_nugget 16
replaceitem block ~3 ~-3 ~4 slot.container 5 ender_pearl 5
replaceitem block ~3 ~-3 ~4 slot.container 9 lantern 10
replaceitem block ~3 ~-3 ~4 slot.container 10 gold_ingot 17
replaceitem block ~3 ~-3 ~4 slot.container 11 netherite_scrap 8
replaceitem block ~3 ~-3 ~4 slot.container 12 ancient_debris 1
replaceitem block ~3 ~-3 ~4 slot.container 13 obsidian 11
replaceitem block ~3 ~-3 ~4 slot.container 14 crying_obsidian 8
loot insert ~3 ~-3 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~-3 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~7 ~6 blackstone []
fill ~-5 ~1 ~0 ~5 ~6 ~6 polished_basalt []
fill ~-4 ~1 ~-5 ~-1 ~6 ~5 air []
fill ~-1 ~1 ~1 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 blackstone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 blackstone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 blackstone_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 blackstone_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 blackstone_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 polished_basalt []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 polished_basalt []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 polished_basalt []
fill ~6 ~0 ~2 ~6 ~6 ~2 polished_basalt []

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
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 8
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 coal 18
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 5 magma_cream 14
replaceitem block ~4 ~1 ~5 slot.container 9 obsidian 15
replaceitem block ~4 ~1 ~5 slot.container 10 crying_obsidian 12
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 12 fire_charge 9
replaceitem block ~4 ~1 ~5 slot.container 13 blackstone 26
replaceitem block ~4 ~1 ~5 slot.container 14 diamond 5
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
