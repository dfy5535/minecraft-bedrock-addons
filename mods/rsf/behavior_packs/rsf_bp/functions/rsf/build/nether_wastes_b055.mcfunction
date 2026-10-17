# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3511/4224 | 主题内编号: b055/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·木栅栏防御拓荒哨所 (nether_wastes_outpost_palisade_fort)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 red_nether_brick []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 gold_nugget 16
replaceitem block ~3 ~-3 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~3 ~-3 ~4 slot.container 2 bone 12
replaceitem block ~3 ~-3 ~4 slot.container 3 ender_pearl 7
replaceitem block ~3 ~-3 ~4 slot.container 4 coal 16
replaceitem block ~3 ~-3 ~4 slot.container 5 blaze_rod 11
replaceitem block ~3 ~-3 ~4 slot.container 9 netherite_scrap 1
replaceitem block ~3 ~-3 ~4 slot.container 10 fire_charge 7
replaceitem block ~3 ~-3 ~4 slot.container 11 soul_lantern 6
replaceitem block ~3 ~-3 ~4 slot.container 12 gold_ingot 13
replaceitem block ~3 ~-3 ~4 slot.container 13 quartz 20
replaceitem block ~3 ~-3 ~4 slot.container 14 nether_wart 17
loot insert ~3 ~-3 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~8 ~-5 nether_brick []
setblock ~-5 ~9 ~-6 lantern []
fill ~-5 ~1 ~5 ~-4 ~8 ~6 nether_brick []
setblock ~-5 ~9 ~5 lantern []
fill ~4 ~1 ~-6 ~5 ~8 ~-5 nether_brick []
setblock ~4 ~9 ~-6 lantern []
fill ~4 ~1 ~5 ~5 ~8 ~6 nether_brick []
setblock ~4 ~9 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 nether_brick []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 polished_blackstone_wall []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 gilded_blackstone []
setblock ~-5 ~8 ~-6 lantern []
setblock ~-5 ~7 ~6 gilded_blackstone []
setblock ~-5 ~8 ~6 lantern []
setblock ~5 ~7 ~-6 gilded_blackstone []
setblock ~5 ~8 ~-6 lantern []
setblock ~5 ~7 ~6 gilded_blackstone []
setblock ~5 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 blackstone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-7 ~0 ~-9 ~-7 ~8 ~-9 nether_brick []
setblock ~-7 ~9 ~-9 magma []
setblock ~-7 ~10 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 coal 19
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 6
replaceitem block ~4 ~1 ~5 slot.container 2 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 4 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 9 obsidian 12
replaceitem block ~4 ~1 ~5 slot.container 10 crying_obsidian 9
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 8
replaceitem block ~4 ~1 ~5 slot.container 12 golden_carrot 8
replaceitem block ~4 ~1 ~5 slot.container 13 netherite_scrap 2
replaceitem block ~4 ~1 ~5 slot.container 14 fire_charge 8
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
