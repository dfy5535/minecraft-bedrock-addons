# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3971/4224 | 主题内编号: b003/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·环柱巨石方尖祭坛 (basalt_deltas_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~13 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~13 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 magma []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 polished_basalt []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 polished_blackstone_bricks []
setblock ~0 ~-6 ~0 ancient_debris []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 bone 12
replaceitem block ~0 ~-3 ~-4 slot.container 1 coal 15
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 14
replaceitem block ~0 ~-3 ~-4 slot.container 3 magma_cream 19
replaceitem block ~0 ~-3 ~-4 slot.container 4 blaze_rod 14
replaceitem block ~0 ~-3 ~-4 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-3 ~-4 slot.container 9 lantern 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 18
replaceitem block ~0 ~-3 ~-4 slot.container 11 netherite_scrap 2
replaceitem block ~0 ~-3 ~-4 slot.container 12 ancient_debris 2
replaceitem block ~0 ~-3 ~-4 slot.container 13 obsidian 12
replaceitem block ~0 ~-3 ~-4 slot.container 14 crying_obsidian 9
loot insert ~0 ~-3 ~-4 loot "rsf/basalt_deltas"
loot insert ~0 ~-3 ~-4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 polished_blackstone_bricks []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 polished_basalt []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 polished_basalt []
fill ~-3 ~1 ~-6 ~-3 ~9 ~-6 polished_basalt []
fill ~-3 ~1 ~6 ~-3 ~9 ~6 polished_basalt []
fill ~-1 ~1 ~-6 ~-1 ~9 ~-6 polished_basalt []
fill ~-1 ~1 ~6 ~-1 ~9 ~6 polished_basalt []
fill ~1 ~1 ~-6 ~1 ~9 ~-6 polished_basalt []
fill ~1 ~1 ~6 ~1 ~9 ~6 polished_basalt []
fill ~3 ~1 ~-6 ~3 ~9 ~-6 polished_basalt []
fill ~3 ~1 ~6 ~3 ~9 ~6 polished_basalt []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 polished_basalt []
fill ~5 ~1 ~6 ~5 ~9 ~6 polished_basalt []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 polished_basalt []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 polished_basalt []
fill ~-5 ~1 ~-2 ~-5 ~9 ~-2 polished_basalt []
fill ~5 ~1 ~-2 ~5 ~9 ~-2 polished_basalt []
fill ~-5 ~1 ~0 ~-5 ~9 ~0 polished_basalt []
fill ~5 ~1 ~0 ~5 ~9 ~0 polished_basalt []
fill ~-5 ~1 ~2 ~-5 ~9 ~2 polished_basalt []
fill ~5 ~1 ~2 ~5 ~9 ~2 polished_basalt []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 polished_basalt []
fill ~5 ~1 ~4 ~5 ~9 ~4 polished_basalt []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 polished_blackstone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 blackstone []
fill ~0 ~16 ~0 ~0 ~16 ~0 gold_block []
setblock ~0 ~17 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~8 ~0 ~9 ~8 ~6 ~9 polished_basalt []
fill ~7 ~0 ~9 ~7 ~4 ~9 basalt []
setblock ~8 ~7 ~9 magma []
setblock ~8 ~8 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 8
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 coal 18
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 5 magma_cream 14
replaceitem block ~4 ~1 ~5 slot.container 9 obsidian 12
replaceitem block ~4 ~1 ~5 slot.container 10 crying_obsidian 9
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 12 fire_charge 13
replaceitem block ~4 ~1 ~5 slot.container 13 blackstone 30
replaceitem block ~4 ~1 ~5 slot.container 14 diamond 2
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~-3 ~0
