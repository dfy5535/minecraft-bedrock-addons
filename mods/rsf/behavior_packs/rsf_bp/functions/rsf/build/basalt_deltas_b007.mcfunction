# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3975/4224 | 主题内编号: b007/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·八角星芒图腾祭坛 (basalt_deltas_altar_octagonal_star)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~12 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~12 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 magma []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_basalt []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 gunpowder 14
replaceitem block ~3 ~-3 ~0 slot.container 1 magma_cream 19
replaceitem block ~3 ~-3 ~0 slot.container 2 blaze_rod 14
replaceitem block ~3 ~-3 ~0 slot.container 3 ghast_tear 11
replaceitem block ~3 ~-3 ~0 slot.container 4 gold_nugget 16
replaceitem block ~3 ~-3 ~0 slot.container 5 ender_pearl 5
replaceitem block ~3 ~-3 ~0 slot.container 9 netherite_scrap 6
replaceitem block ~3 ~-3 ~0 slot.container 10 ancient_debris 6
replaceitem block ~3 ~-3 ~0 slot.container 11 obsidian 16
replaceitem block ~3 ~-3 ~0 slot.container 12 crying_obsidian 6
replaceitem block ~3 ~-3 ~0 slot.container 13 golden_apple 3
replaceitem block ~3 ~-3 ~0 slot.container 14 fire_charge 10
loot insert ~3 ~-3 ~0 loot "rsf/basalt_deltas"
loot insert ~3 ~-3 ~0 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~9 ~6 blackstone []
fill ~-4 ~1 ~-5 ~4 ~8 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~10 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~10 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~10 ~6 air []
fill ~5 ~1 ~6 ~5 ~10 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 polished_basalt []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 polished_basalt []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 polished_basalt []
fill ~4 ~1 ~5 ~4 ~9 ~5 polished_basalt []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 polished_blackstone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 blackstone []
fill ~0 ~15 ~0 ~0 ~15 ~0 gold_block []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 polished_basalt []
setblock ~0 ~4 ~-8 ancient_debris []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 polished_basalt []
setblock ~0 ~4 ~8 ancient_debris []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 polished_basalt []
setblock ~-7 ~4 ~0 ancient_debris []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 polished_basalt []
setblock ~7 ~4 ~0 ancient_debris []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~7 ~8 ~10 ~7 polished_basalt []
fill ~7 ~0 ~7 ~7 ~8 ~7 basalt []
setblock ~8 ~11 ~7 magma []
setblock ~8 ~12 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 1 magma_cream 14
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 4 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 8
replaceitem block ~4 ~1 ~5 slot.container 10 fire_charge 8
replaceitem block ~4 ~1 ~5 slot.container 11 blackstone 25
replaceitem block ~4 ~1 ~5 slot.container 12 diamond 4
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 16
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
summon zombie_pigman ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
