# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4053/4224 | 主题内编号: b085/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双子烟囱砖石窑厂 (basalt_deltas_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~12 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~12 ~7 air [] replace fire
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 nether_brick [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 nether_brick [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 nether_brick []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 blaze_rod 14
replaceitem block ~3 ~-3 ~3 slot.container 1 ghast_tear 11
replaceitem block ~3 ~-3 ~3 slot.container 2 gold_nugget 16
replaceitem block ~3 ~-3 ~3 slot.container 3 ender_pearl 5
replaceitem block ~3 ~-3 ~3 slot.container 4 bone 12
replaceitem block ~3 ~-3 ~3 slot.container 5 coal 15
replaceitem block ~3 ~-3 ~3 slot.container 9 golden_apple 8
replaceitem block ~3 ~-3 ~3 slot.container 10 fire_charge 8
replaceitem block ~3 ~-3 ~3 slot.container 11 blackstone 25
replaceitem block ~3 ~-3 ~3 slot.container 12 diamond 4
replaceitem block ~3 ~-3 ~3 slot.container 13 lantern 9
replaceitem block ~3 ~-3 ~3 slot.container 14 gold_ingot 16
loot insert ~3 ~-3 ~3 loot "rsf/basalt_deltas"
loot insert ~3 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~10 ~5 nether_brick []
fill ~2 ~1 ~-5 ~5 ~10 ~5 nether_brick []
fill ~-4 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~4 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 blackstone []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 blackstone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 nether_brick []
fill ~0 ~15 ~0 ~0 ~15 ~0 shroomlight []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 blackstone []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 basalt []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 basalt []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 polished_blackstone_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~8 ~0 ~6 ~8 ~8 ~6 polished_basalt []
fill ~7 ~0 ~6 ~7 ~6 ~6 basalt []
setblock ~8 ~9 ~6 magma []
setblock ~8 ~10 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 bone 15
replaceitem block ~4 ~1 ~4 slot.container 1 coal 18
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 17
replaceitem block ~4 ~1 ~4 slot.container 3 magma_cream 14
replaceitem block ~4 ~1 ~4 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~4 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~4 slot.container 9 lantern 6
replaceitem block ~4 ~1 ~4 slot.container 10 gold_ingot 13
replaceitem block ~4 ~1 ~4 slot.container 11 netherite_scrap 4
replaceitem block ~4 ~1 ~4 slot.container 12 ancient_debris 4
replaceitem block ~4 ~1 ~4 slot.container 13 obsidian 14
replaceitem block ~4 ~1 ~4 slot.container 14 crying_obsidian 11
loot insert ~4 ~1 ~4 loot "rsf/basalt_deltas"
summon zombie_pigman ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
