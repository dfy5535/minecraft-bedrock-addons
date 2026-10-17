# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3531/4224 | 主题内编号: b075/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·远古巨石环廊法阵 (nether_wastes_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 nether_brick []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gilded_blackstone []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 bone 12
replaceitem block ~3 ~-3 ~0 slot.container 1 ender_pearl 7
replaceitem block ~3 ~-3 ~0 slot.container 2 coal 16
replaceitem block ~3 ~-3 ~0 slot.container 3 blaze_rod 11
replaceitem block ~3 ~-3 ~0 slot.container 4 magma_cream 14
replaceitem block ~3 ~-3 ~0 slot.container 5 ghast_tear 11
replaceitem block ~3 ~-3 ~0 slot.container 9 golden_apple 7
replaceitem block ~3 ~-3 ~0 slot.container 10 golden_carrot 14
replaceitem block ~3 ~-3 ~0 slot.container 11 netherite_scrap 1
replaceitem block ~3 ~-3 ~0 slot.container 12 fire_charge 7
replaceitem block ~3 ~-3 ~0 slot.container 13 soul_lantern 6
replaceitem block ~3 ~-3 ~0 slot.container 14 gold_ingot 13
loot insert ~3 ~-3 ~0 loot "rsf/nether_wastes"
loot insert ~3 ~-3 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 nether_brick []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 gilded_blackstone []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 gilded_blackstone []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 gilded_blackstone []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 gilded_blackstone []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 gilded_blackstone []
fill ~-2 ~1 ~7 ~-2 ~6 ~7 gilded_blackstone []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 gilded_blackstone []
fill ~0 ~1 ~7 ~0 ~6 ~7 gilded_blackstone []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 gilded_blackstone []
fill ~2 ~1 ~7 ~2 ~6 ~7 gilded_blackstone []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 gilded_blackstone []
fill ~4 ~1 ~7 ~4 ~6 ~7 gilded_blackstone []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 gilded_blackstone []
fill ~6 ~1 ~7 ~6 ~6 ~7 gilded_blackstone []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 gilded_blackstone []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 gilded_blackstone []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 gilded_blackstone []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 gilded_blackstone []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 gilded_blackstone []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 gilded_blackstone []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 gilded_blackstone []
fill ~6 ~1 ~1 ~6 ~6 ~1 gilded_blackstone []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 gilded_blackstone []
fill ~6 ~1 ~3 ~6 ~6 ~3 gilded_blackstone []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 gilded_blackstone []
fill ~6 ~1 ~5 ~6 ~6 ~5 gilded_blackstone []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 gilded_blackstone []
setblock ~-6 ~10 ~-7 lantern []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 gilded_blackstone []
setblock ~-6 ~10 ~7 lantern []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 gilded_blackstone []
setblock ~6 ~10 ~-7 lantern []
fill ~6 ~7 ~7 ~6 ~9 ~7 gilded_blackstone []
setblock ~6 ~10 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 gilded_blackstone []
setblock ~0 ~4 ~-9 magma []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 gilded_blackstone []
setblock ~0 ~4 ~9 magma []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 gilded_blackstone []
setblock ~-8 ~4 ~0 magma []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 gilded_blackstone []
setblock ~8 ~4 ~0 magma []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-8 ~0 ~-9 ~-8 ~8 ~-9 nether_brick []
setblock ~-8 ~9 ~-9 magma []
setblock ~-8 ~10 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gold_nugget 19
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 2 bone 15
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 4 coal 19
replaceitem block ~5 ~1 ~6 slot.container 5 blaze_rod 6
replaceitem block ~5 ~1 ~6 slot.container 9 obsidian 11
replaceitem block ~5 ~1 ~6 slot.container 10 crying_obsidian 8
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 7
replaceitem block ~5 ~1 ~6 slot.container 12 golden_carrot 14
replaceitem block ~5 ~1 ~6 slot.container 13 netherite_scrap 1
replaceitem block ~5 ~1 ~6 slot.container 14 fire_charge 7
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
summon wither_skeleton ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
