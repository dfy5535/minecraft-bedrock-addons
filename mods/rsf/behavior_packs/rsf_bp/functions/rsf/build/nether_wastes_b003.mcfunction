# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3459/4224 | 主题内编号: b003/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·环柱巨石方尖祭坛 (nether_wastes_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~12 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~12 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_nether_brick []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 nether_brick []
setblock ~0 ~-6 ~0 magma []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 bone 12
replaceitem block ~0 ~-3 ~-4 slot.container 1 ender_pearl 7
replaceitem block ~0 ~-3 ~-4 slot.container 2 coal 16
replaceitem block ~0 ~-3 ~-4 slot.container 3 blaze_rod 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 magma_cream 14
replaceitem block ~0 ~-3 ~-4 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-3 ~-4 slot.container 9 obsidian 12
replaceitem block ~0 ~-3 ~-4 slot.container 10 crying_obsidian 9
replaceitem block ~0 ~-3 ~-4 slot.container 11 golden_apple 8
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_carrot 8
replaceitem block ~0 ~-3 ~-4 slot.container 13 netherite_scrap 2
replaceitem block ~0 ~-3 ~-4 slot.container 14 fire_charge 8
loot insert ~0 ~-3 ~-4 loot "rsf/nether_wastes"
loot insert ~0 ~-3 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 nether_brick []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 gilded_blackstone []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 gilded_blackstone []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 gilded_blackstone []
fill ~-3 ~1 ~6 ~-3 ~8 ~6 gilded_blackstone []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 gilded_blackstone []
fill ~-1 ~1 ~6 ~-1 ~8 ~6 gilded_blackstone []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 gilded_blackstone []
fill ~1 ~1 ~6 ~1 ~8 ~6 gilded_blackstone []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 gilded_blackstone []
fill ~3 ~1 ~6 ~3 ~8 ~6 gilded_blackstone []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 gilded_blackstone []
fill ~5 ~1 ~6 ~5 ~8 ~6 gilded_blackstone []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 gilded_blackstone []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 gilded_blackstone []
fill ~-5 ~1 ~-2 ~-5 ~8 ~-2 gilded_blackstone []
fill ~5 ~1 ~-2 ~5 ~8 ~-2 gilded_blackstone []
fill ~-5 ~1 ~0 ~-5 ~8 ~0 gilded_blackstone []
fill ~5 ~1 ~0 ~5 ~8 ~0 gilded_blackstone []
fill ~-5 ~1 ~2 ~-5 ~8 ~2 gilded_blackstone []
fill ~5 ~1 ~2 ~5 ~8 ~2 gilded_blackstone []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 gilded_blackstone []
fill ~5 ~1 ~4 ~5 ~8 ~4 gilded_blackstone []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 nether_brick []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 polished_blackstone_bricks []
fill ~0 ~15 ~0 ~0 ~15 ~0 gold_block []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-7 ~0 ~-8 ~-7 ~6 ~-8 nether_brick []
setblock ~-7 ~7 ~-8 magma []
setblock ~-7 ~8 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 4 coal 19
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 6
replaceitem block ~4 ~1 ~5 slot.container 9 netherite_scrap 2
replaceitem block ~4 ~1 ~5 slot.container 10 fire_charge 8
replaceitem block ~4 ~1 ~5 slot.container 11 soul_lantern 7
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 13 quartz 21
replaceitem block ~4 ~1 ~5 slot.container 14 nether_wart 18
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon wither_skeleton ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
