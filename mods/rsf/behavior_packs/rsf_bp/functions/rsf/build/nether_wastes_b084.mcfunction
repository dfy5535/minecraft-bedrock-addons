# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3540/4224 | 主题内编号: b084/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·露天采石场与矿道库 (nether_wastes_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_nether_brick [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 quartz_block []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 blaze_rod 11
replaceitem block ~3 ~-3 ~4 slot.container 1 magma_cream 14
replaceitem block ~3 ~-3 ~4 slot.container 2 ghast_tear 11
replaceitem block ~3 ~-3 ~4 slot.container 3 gold_nugget 16
replaceitem block ~3 ~-3 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~-3 ~4 slot.container 5 bone 12
replaceitem block ~3 ~-3 ~4 slot.container 9 crying_obsidian 5
replaceitem block ~3 ~-3 ~4 slot.container 10 golden_apple 4
replaceitem block ~3 ~-3 ~4 slot.container 11 golden_carrot 11
replaceitem block ~3 ~-3 ~4 slot.container 12 netherite_scrap 5
replaceitem block ~3 ~-3 ~4 slot.container 13 fire_charge 11
replaceitem block ~3 ~-3 ~4 slot.container 14 soul_lantern 10
loot insert ~3 ~-3 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 red_nether_brick []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 nether_brick []
fill ~0 ~1 ~-6 ~0 ~2 ~6 nether_brick []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-6 ~-5 ~7 ~-6 chiseled_nether_bricks []
setblock ~-5 ~8 ~-6 soul_lantern []
fill ~-5 ~5 ~6 ~-5 ~7 ~6 chiseled_nether_bricks []
setblock ~-5 ~8 ~6 soul_lantern []
fill ~5 ~5 ~-6 ~5 ~7 ~-6 chiseled_nether_bricks []
setblock ~5 ~8 ~-6 soul_lantern []
fill ~5 ~5 ~6 ~5 ~7 ~6 chiseled_nether_bricks []
setblock ~5 ~8 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 polished_blackstone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-7 ~0 ~-8 ~-7 ~7 ~-8 nether_brick []
setblock ~-7 ~8 ~-8 magma []
setblock ~-7 ~9 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 16
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 3 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 4 blaze_rod 6
replaceitem block ~-4 ~1 ~5 slot.container 5 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 15
replaceitem block ~-4 ~1 ~5 slot.container 10 quartz 22
replaceitem block ~-4 ~1 ~5 slot.container 11 nether_wart 12
replaceitem block ~-4 ~1 ~5 slot.container 12 obsidian 9
replaceitem block ~-4 ~1 ~5 slot.container 13 crying_obsidian 6
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 1 coal 14
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 3 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 5 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 10 quartz 20
replaceitem block ~4 ~1 ~5 slot.container 11 nether_wart 17
replaceitem block ~4 ~1 ~5 slot.container 12 obsidian 14
replaceitem block ~4 ~1 ~5 slot.container 13 crying_obsidian 4
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
