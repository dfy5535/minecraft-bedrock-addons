# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3513/4224 | 主题内编号: b057/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·中央石棺帝王地下陵寝 (nether_wastes_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 5格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-9 ~7 ~8 ~9 air [] replace lava
fill ~-7 ~0 ~-9 ~7 ~8 ~9 air [] replace fire
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 quartz_block [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 quartz_block [] replace lava
fill ~-6 ~0 ~-8 ~6 ~0 ~8 quartz_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 polished_blackstone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 gold_nugget 16
replaceitem block ~0 ~-4 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-4 ~4 slot.container 2 bone 12
replaceitem block ~0 ~-4 ~4 slot.container 3 ender_pearl 7
replaceitem block ~0 ~-4 ~4 slot.container 4 coal 16
replaceitem block ~0 ~-4 ~4 slot.container 5 blaze_rod 11
replaceitem block ~0 ~-4 ~4 slot.container 9 obsidian 14
replaceitem block ~0 ~-4 ~4 slot.container 10 crying_obsidian 4
replaceitem block ~0 ~-4 ~4 slot.container 11 golden_apple 3
replaceitem block ~0 ~-4 ~4 slot.container 12 golden_carrot 10
replaceitem block ~0 ~-4 ~4 slot.container 13 netherite_scrap 4
replaceitem block ~0 ~-4 ~4 slot.container 14 fire_charge 10
loot insert ~0 ~-4 ~4 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 quartz_block []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 nether_brick []
fill ~0 ~1 ~-7 ~0 ~2 ~7 nether_brick []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 nether_brick []
fill ~-4 ~7 ~-6 ~4 ~7 ~6 nether_brick []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 gilded_blackstone []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 nether_brick []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 quartz_pillar []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 quartz_pillar []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 quartz_slab []
setblock ~0 ~3 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~-7 ~0 ~-9 ~-7 ~5 ~-9 nether_brick []
setblock ~-7 ~6 ~-9 magma []
setblock ~-7 ~7 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 gilded_blackstone []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 magma_cream 9
replaceitem block ~4 ~1 ~6 slot.container 1 ghast_tear 6
replaceitem block ~4 ~1 ~6 slot.container 2 gold_nugget 19
replaceitem block ~4 ~1 ~6 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~6 slot.container 4 bone 15
replaceitem block ~4 ~1 ~6 slot.container 5 ender_pearl 10
replaceitem block ~4 ~1 ~6 slot.container 9 soul_lantern 10
replaceitem block ~4 ~1 ~6 slot.container 10 gold_ingot 10
replaceitem block ~4 ~1 ~6 slot.container 11 quartz 17
replaceitem block ~4 ~1 ~6 slot.container 12 nether_wart 14
replaceitem block ~4 ~1 ~6 slot.container 13 obsidian 11
replaceitem block ~4 ~1 ~6 slot.container 14 crying_obsidian 8
loot insert ~4 ~1 ~6 loot "rsf/nether_wastes"
summon wither_skeleton ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
