# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4090/4224 | 主题内编号: b122/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·十字穹顶宏伟圣堂与墓窟 (basalt_deltas_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 10格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~13 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~13 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 blackstone []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 polished_basalt []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 ender_pearl 5
replaceitem block ~0 ~-3 ~-5 slot.container 1 bone 12
replaceitem block ~0 ~-3 ~-5 slot.container 2 coal 15
replaceitem block ~0 ~-3 ~-5 slot.container 3 gunpowder 14
replaceitem block ~0 ~-3 ~-5 slot.container 4 magma_cream 19
replaceitem block ~0 ~-3 ~-5 slot.container 5 blaze_rod 14
replaceitem block ~0 ~-3 ~-5 slot.container 9 fire_charge 13
replaceitem block ~0 ~-3 ~-5 slot.container 10 blackstone 30
replaceitem block ~0 ~-3 ~-5 slot.container 11 diamond 2
replaceitem block ~0 ~-3 ~-5 slot.container 12 lantern 7
replaceitem block ~0 ~-3 ~-5 slot.container 13 gold_ingot 14
replaceitem block ~0 ~-3 ~-5 slot.container 14 netherite_scrap 5
loot insert ~0 ~-3 ~-5 loot "rsf/basalt_deltas"
loot insert ~0 ~-3 ~-5 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~10 ~7 polished_blackstone_bricks []
fill ~-6 ~1 ~-2 ~6 ~10 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-6 ~1 ~9 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~9 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 polished_blackstone_wall []
setblock ~6 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 polished_basalt []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 polished_blackstone_bricks []
fill ~0 ~16 ~0 ~0 ~16 ~0 gilded_blackstone []
setblock ~0 ~17 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~9 ~-2 basalt []
fill ~-7 ~0 ~2 ~-7 ~9 ~2 basalt []
fill ~7 ~0 ~-2 ~7 ~9 ~-2 basalt []
fill ~7 ~0 ~2 ~7 ~9 ~2 basalt []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x9x6) ---
fill ~9 ~0 ~9 ~9 ~10 ~9 polished_basalt []
fill ~8 ~0 ~9 ~8 ~8 ~9 basalt []
setblock ~9 ~11 ~9 magma []
setblock ~9 ~12 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 1 gold_nugget 19
replaceitem block ~-5 ~1 ~6 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 4 coal 18
replaceitem block ~-5 ~1 ~6 slot.container 5 gunpowder 17
replaceitem block ~-5 ~1 ~6 slot.container 9 gold_ingot 14
replaceitem block ~-5 ~1 ~6 slot.container 10 netherite_scrap 5
replaceitem block ~-5 ~1 ~6 slot.container 11 ancient_debris 5
replaceitem block ~-5 ~1 ~6 slot.container 12 obsidian 15
replaceitem block ~-5 ~1 ~6 slot.container 13 crying_obsidian 12
replaceitem block ~-5 ~1 ~6 slot.container 14 golden_apple 2
loot insert ~-5 ~1 ~6 loot "rsf/basalt_deltas"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ender_pearl 11
replaceitem block ~5 ~1 ~6 slot.container 1 bone 10
replaceitem block ~5 ~1 ~6 slot.container 2 coal 13
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 4 magma_cream 17
replaceitem block ~5 ~1 ~6 slot.container 5 blaze_rod 12
replaceitem block ~5 ~1 ~6 slot.container 9 gold_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 10 netherite_scrap 3
replaceitem block ~5 ~1 ~6 slot.container 11 ancient_debris 3
replaceitem block ~5 ~1 ~6 slot.container 12 obsidian 13
replaceitem block ~5 ~1 ~6 slot.container 13 crying_obsidian 10
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 7
loot insert ~5 ~1 ~6 loot "rsf/basalt_deltas"
loot insert ~5 ~1 ~6 loot "chests/bastion_treasure"
summon wither_skeleton ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
