# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3562/4224 | 主题内编号: b106/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·琉璃穹顶魔药炼金室 (nether_wastes_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 nether_brick [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 nether_brick [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 red_nether_brick []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 lava []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~-2 ~-2 ~3 slot.container 1 bone 12
replaceitem block ~-2 ~-2 ~3 slot.container 2 ender_pearl 7
replaceitem block ~-2 ~-2 ~3 slot.container 3 coal 16
replaceitem block ~-2 ~-2 ~3 slot.container 4 blaze_rod 11
replaceitem block ~-2 ~-2 ~3 slot.container 5 magma_cream 14
replaceitem block ~-2 ~-2 ~3 slot.container 9 nether_wart 12
replaceitem block ~-2 ~-2 ~3 slot.container 10 obsidian 9
replaceitem block ~-2 ~-2 ~3 slot.container 11 crying_obsidian 6
replaceitem block ~-2 ~-2 ~3 slot.container 12 golden_apple 5
replaceitem block ~-2 ~-2 ~3 slot.container 13 golden_carrot 12
replaceitem block ~-2 ~-2 ~3 slot.container 14 netherite_scrap 6
loot insert ~-2 ~-2 ~3 loot "rsf/nether_wastes"
loot insert ~-2 ~-2 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 nether_brick []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 chiseled_nether_bricks []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 chiseled_nether_bricks []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 chiseled_nether_bricks []
fill ~3 ~1 ~4 ~3 ~7 ~4 chiseled_nether_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 red_nether_brick []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 blackstone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~-6 ~0 ~-8 ~-6 ~9 ~-8 nether_brick []
setblock ~-6 ~10 ~-8 magma []
setblock ~-6 ~11 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 glowstone []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 1 gold_nugget 19
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 16
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 4 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 5 coal 19
replaceitem block ~-3 ~1 ~4 slot.container 9 golden_carrot 14
replaceitem block ~-3 ~1 ~4 slot.container 10 netherite_scrap 1
replaceitem block ~-3 ~1 ~4 slot.container 11 fire_charge 7
replaceitem block ~-3 ~1 ~4 slot.container 12 soul_lantern 6
replaceitem block ~-3 ~1 ~4 slot.container 13 gold_ingot 13
replaceitem block ~-3 ~1 ~4 slot.container 14 quartz 20
loot insert ~-3 ~1 ~4 loot "rsf/nether_wastes"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 19
replaceitem block ~3 ~1 ~4 slot.container 1 bone 10
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 5
replaceitem block ~3 ~1 ~4 slot.container 3 coal 14
replaceitem block ~3 ~1 ~4 slot.container 4 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 5 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 9 golden_carrot 12
replaceitem block ~3 ~1 ~4 slot.container 10 netherite_scrap 6
replaceitem block ~3 ~1 ~4 slot.container 11 fire_charge 12
replaceitem block ~3 ~1 ~4 slot.container 12 soul_lantern 4
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 14 quartz 18
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~1 ~4 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
