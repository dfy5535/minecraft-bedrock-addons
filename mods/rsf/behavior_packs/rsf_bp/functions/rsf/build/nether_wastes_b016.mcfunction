# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3472/4224 | 主题内编号: b016/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·要塞地底重装暗牢 (nether_wastes_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_nether_brick [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_nether_brick [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_nether_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 quartz_block []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_nether_brick []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 soul_lantern []
setblock ~4 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 ender_pearl 7
replaceitem block ~0 ~-3 ~5 slot.container 1 coal 16
replaceitem block ~0 ~-3 ~5 slot.container 2 blaze_rod 11
replaceitem block ~0 ~-3 ~5 slot.container 3 magma_cream 14
replaceitem block ~0 ~-3 ~5 slot.container 4 ghast_tear 11
replaceitem block ~0 ~-3 ~5 slot.container 5 gold_nugget 16
replaceitem block ~0 ~-3 ~5 slot.container 9 fire_charge 12
replaceitem block ~0 ~-3 ~5 slot.container 10 soul_lantern 4
replaceitem block ~0 ~-3 ~5 slot.container 11 gold_ingot 11
replaceitem block ~0 ~-3 ~5 slot.container 12 quartz 18
replaceitem block ~0 ~-3 ~5 slot.container 13 nether_wart 15
replaceitem block ~0 ~-3 ~5 slot.container 14 obsidian 12
loot insert ~0 ~-3 ~5 loot "rsf/nether_wastes"
loot insert ~0 ~-3 ~5 loot "chests/nether_bridge"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 ender_pearl 5
replaceitem block ~0 ~-3 ~-5 slot.container 1 coal 14
replaceitem block ~0 ~-3 ~-5 slot.container 2 blaze_rod 9
replaceitem block ~0 ~-3 ~-5 slot.container 3 magma_cream 12
replaceitem block ~0 ~-3 ~-5 slot.container 4 ghast_tear 9
replaceitem block ~0 ~-3 ~-5 slot.container 5 gold_nugget 22
replaceitem block ~0 ~-3 ~-5 slot.container 9 fire_charge 11
replaceitem block ~0 ~-3 ~-5 slot.container 10 soul_lantern 10
replaceitem block ~0 ~-3 ~-5 slot.container 11 gold_ingot 10
replaceitem block ~0 ~-3 ~-5 slot.container 12 quartz 17
replaceitem block ~0 ~-3 ~-5 slot.container 13 nether_wart 14
replaceitem block ~0 ~-3 ~-5 slot.container 14 obsidian 11
loot insert ~0 ~-3 ~-5 loot "rsf/nether_wastes"
loot insert ~0 ~-3 ~-5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 red_nether_brick []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 nether_brick []
setblock ~-6 ~9 ~-7 soul_lantern []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 nether_brick []
setblock ~-6 ~9 ~6 soul_lantern []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 nether_brick []
setblock ~5 ~9 ~-7 soul_lantern []
fill ~5 ~1 ~6 ~6 ~8 ~7 nether_brick []
setblock ~5 ~9 ~6 soul_lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 nether_brick []
fill ~-6 ~7 ~-7 ~6 ~7 ~7 nether_brick_fence []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 air []
setblock ~-6 ~7 ~-7 chiseled_nether_bricks []
setblock ~-6 ~8 ~-7 soul_lantern []
setblock ~-6 ~7 ~7 chiseled_nether_bricks []
setblock ~-6 ~8 ~7 soul_lantern []
setblock ~6 ~7 ~-7 chiseled_nether_bricks []
setblock ~6 ~8 ~-7 soul_lantern []
setblock ~6 ~7 ~7 chiseled_nether_bricks []
setblock ~6 ~8 ~7 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 blackstone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x10x6) ---
fill ~-8 ~0 ~-10 ~-8 ~9 ~-10 nether_brick []
setblock ~-8 ~10 ~-10 magma []
setblock ~-8 ~11 ~-10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 blaze_rod 6
replaceitem block ~-5 ~1 ~6 slot.container 1 magma_cream 9
replaceitem block ~-5 ~1 ~6 slot.container 2 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 3 gold_nugget 19
replaceitem block ~-5 ~1 ~6 slot.container 4 rotten_flesh 16
replaceitem block ~-5 ~1 ~6 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 9 golden_carrot 8
replaceitem block ~-5 ~1 ~6 slot.container 10 netherite_scrap 2
replaceitem block ~-5 ~1 ~6 slot.container 11 fire_charge 8
replaceitem block ~-5 ~1 ~6 slot.container 12 soul_lantern 7
replaceitem block ~-5 ~1 ~6 slot.container 13 gold_ingot 14
replaceitem block ~-5 ~1 ~6 slot.container 14 quartz 21
loot insert ~-5 ~1 ~6 loot "rsf/nether_wastes"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ghast_tear 9
replaceitem block ~5 ~1 ~6 slot.container 1 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 19
replaceitem block ~5 ~1 ~6 slot.container 3 bone 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 5
replaceitem block ~5 ~1 ~6 slot.container 5 coal 14
replaceitem block ~5 ~1 ~6 slot.container 9 golden_carrot 13
replaceitem block ~5 ~1 ~6 slot.container 10 netherite_scrap 7
replaceitem block ~5 ~1 ~6 slot.container 11 fire_charge 6
replaceitem block ~5 ~1 ~6 slot.container 12 soul_lantern 5
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 14 quartz 19
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
loot insert ~5 ~1 ~6 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
