# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3575/4224 | 主题内编号: b119/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·半地下恒温洞穴苗圃 (nether_wastes_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-8 ~6 ~8 ~8 air [] replace lava
fill ~-6 ~0 ~-8 ~6 ~8 ~8 air [] replace fire
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-7 ~5 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 blackstone []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 nether_brick []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 lava []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 magma_cream 14
replaceitem block ~-2 ~-4 ~4 slot.container 1 ghast_tear 11
replaceitem block ~-2 ~-4 ~4 slot.container 2 gold_nugget 16
replaceitem block ~-2 ~-4 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-2 ~-4 ~4 slot.container 4 bone 12
replaceitem block ~-2 ~-4 ~4 slot.container 5 ender_pearl 7
replaceitem block ~-2 ~-4 ~4 slot.container 9 quartz 22
replaceitem block ~-2 ~-4 ~4 slot.container 10 nether_wart 12
replaceitem block ~-2 ~-4 ~4 slot.container 11 obsidian 9
replaceitem block ~-2 ~-4 ~4 slot.container 12 crying_obsidian 6
replaceitem block ~-2 ~-4 ~4 slot.container 13 golden_apple 5
replaceitem block ~-2 ~-4 ~4 slot.container 14 golden_carrot 12
loot insert ~-2 ~-4 ~4 loot "rsf/nether_wastes"
loot insert ~-2 ~-4 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 polished_blackstone_bricks []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 nether_brick []
fill ~0 ~1 ~-6 ~0 ~2 ~6 nether_brick []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~5 ~-6 ~4 ~5 ~6 nether_brick []
fill ~-3 ~6 ~-5 ~3 ~7 ~5 glass []
fill ~-2 ~6 ~-4 ~2 ~6 ~4 air []
setblock ~0 ~7 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 polished_blackstone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-6 ~0 ~-7 ~-6 ~7 ~-7 nether_brick []
setblock ~-6 ~8 ~-7 magma []
setblock ~-6 ~9 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 coal 19
replaceitem block ~3 ~1 ~5 slot.container 1 blaze_rod 6
replaceitem block ~3 ~1 ~5 slot.container 2 magma_cream 9
replaceitem block ~3 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~3 ~1 ~5 slot.container 4 gold_nugget 19
replaceitem block ~3 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~5 slot.container 9 golden_apple 7
replaceitem block ~3 ~1 ~5 slot.container 10 golden_carrot 14
replaceitem block ~3 ~1 ~5 slot.container 11 netherite_scrap 1
replaceitem block ~3 ~1 ~5 slot.container 12 fire_charge 7
replaceitem block ~3 ~1 ~5 slot.container 13 soul_lantern 6
replaceitem block ~3 ~1 ~5 slot.container 14 gold_ingot 13
loot insert ~3 ~1 ~5 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~-4 ~0
