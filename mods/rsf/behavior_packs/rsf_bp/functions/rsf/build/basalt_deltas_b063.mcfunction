# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4031/4224 | 主题内编号: b063/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·方尖碑镇压古墓穴 (basalt_deltas_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~13 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~13 ~7 air [] replace fire
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 blackstone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 blackstone [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 magma []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 blackstone []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 bone 12
replaceitem block ~0 ~-4 ~3 slot.container 1 coal 15
replaceitem block ~0 ~-4 ~3 slot.container 2 gunpowder 14
replaceitem block ~0 ~-4 ~3 slot.container 3 magma_cream 19
replaceitem block ~0 ~-4 ~3 slot.container 4 blaze_rod 14
replaceitem block ~0 ~-4 ~3 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-4 ~3 slot.container 9 golden_apple 7
replaceitem block ~0 ~-4 ~3 slot.container 10 fire_charge 14
replaceitem block ~0 ~-4 ~3 slot.container 11 blackstone 24
replaceitem block ~0 ~-4 ~3 slot.container 12 diamond 3
replaceitem block ~0 ~-4 ~3 slot.container 13 lantern 8
replaceitem block ~0 ~-4 ~3 slot.container 14 gold_ingot 15
loot insert ~0 ~-4 ~3 loot "rsf/basalt_deltas"
loot insert ~0 ~-4 ~3 loot "chests/bastion_treasure"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 bone 10
replaceitem block ~0 ~-4 ~-3 slot.container 1 coal 13
replaceitem block ~0 ~-4 ~-3 slot.container 2 gunpowder 12
replaceitem block ~0 ~-4 ~-3 slot.container 3 magma_cream 17
replaceitem block ~0 ~-4 ~-3 slot.container 4 blaze_rod 12
replaceitem block ~0 ~-4 ~-3 slot.container 5 ghast_tear 9
replaceitem block ~0 ~-4 ~-3 slot.container 9 golden_apple 6
replaceitem block ~0 ~-4 ~-3 slot.container 10 fire_charge 13
replaceitem block ~0 ~-4 ~-3 slot.container 11 blackstone 30
replaceitem block ~0 ~-4 ~-3 slot.container 12 diamond 2
replaceitem block ~0 ~-4 ~-3 slot.container 13 lantern 7
replaceitem block ~0 ~-4 ~-3 slot.container 14 gold_ingot 14
loot insert ~0 ~-4 ~-3 loot "rsf/basalt_deltas"
loot insert ~0 ~-4 ~-3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 blackstone []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~11 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~11 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~11 ~5 air []
fill ~4 ~1 ~5 ~4 ~11 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 polished_basalt []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 polished_basalt []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 polished_basalt []
fill ~3 ~1 ~4 ~3 ~10 ~4 polished_basalt []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 polished_blackstone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 blackstone []
fill ~0 ~16 ~0 ~0 ~16 ~0 gold_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 polished_basalt []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 polished_basalt []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 polished_basalt []
fill ~5 ~0 ~2 ~5 ~9 ~2 polished_basalt []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~0 ~8 ~7 ~6 ~8 polished_basalt []
fill ~6 ~0 ~8 ~6 ~4 ~8 basalt []
setblock ~7 ~7 ~8 magma []
setblock ~7 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 17
replaceitem block ~3 ~1 ~4 slot.container 1 magma_cream 14
replaceitem block ~3 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 3 ghast_tear 6
replaceitem block ~3 ~1 ~4 slot.container 4 gold_nugget 19
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~3 ~1 ~4 slot.container 9 obsidian 16
replaceitem block ~3 ~1 ~4 slot.container 10 crying_obsidian 6
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 12 fire_charge 10
replaceitem block ~3 ~1 ~4 slot.container 13 blackstone 27
replaceitem block ~3 ~1 ~4 slot.container 14 diamond 6
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~-4 ~0
