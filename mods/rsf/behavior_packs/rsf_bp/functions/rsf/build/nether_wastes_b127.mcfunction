# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3583/4224 | 主题内编号: b127/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·万神殿巨型穹顶与试炼宫 (nether_wastes_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-4 ~-6 ~-5 lantern []
setblock ~4 ~-6 ~5 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 coal 16
replaceitem block ~0 ~-4 ~5 slot.container 1 blaze_rod 11
replaceitem block ~0 ~-4 ~5 slot.container 2 magma_cream 14
replaceitem block ~0 ~-4 ~5 slot.container 3 ghast_tear 11
replaceitem block ~0 ~-4 ~5 slot.container 4 gold_nugget 16
replaceitem block ~0 ~-4 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~0 ~-4 ~5 slot.container 9 quartz 19
replaceitem block ~0 ~-4 ~5 slot.container 10 nether_wart 16
replaceitem block ~0 ~-4 ~5 slot.container 11 obsidian 13
replaceitem block ~0 ~-4 ~5 slot.container 12 crying_obsidian 10
replaceitem block ~0 ~-4 ~5 slot.container 13 golden_apple 2
replaceitem block ~0 ~-4 ~5 slot.container 14 golden_carrot 9
loot insert ~0 ~-4 ~5 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 nether_brick []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 gilded_blackstone []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 gilded_blackstone []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 gilded_blackstone []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 gilded_blackstone []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 gilded_blackstone []
fill ~-2 ~1 ~7 ~-2 ~7 ~7 gilded_blackstone []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 gilded_blackstone []
fill ~0 ~1 ~7 ~0 ~7 ~7 gilded_blackstone []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 gilded_blackstone []
fill ~2 ~1 ~7 ~2 ~7 ~7 gilded_blackstone []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 gilded_blackstone []
fill ~4 ~1 ~7 ~4 ~7 ~7 gilded_blackstone []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 gilded_blackstone []
fill ~6 ~1 ~7 ~6 ~7 ~7 gilded_blackstone []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 gilded_blackstone []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 gilded_blackstone []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 gilded_blackstone []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 gilded_blackstone []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 gilded_blackstone []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 gilded_blackstone []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 gilded_blackstone []
fill ~6 ~1 ~1 ~6 ~7 ~1 gilded_blackstone []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 gilded_blackstone []
fill ~6 ~1 ~3 ~6 ~7 ~3 gilded_blackstone []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 gilded_blackstone []
fill ~6 ~1 ~5 ~6 ~7 ~5 gilded_blackstone []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 nether_brick []
fill ~-5 ~9 ~-6 ~5 ~10 ~6 glass []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x10x2) ---
fill ~-8 ~0 ~-10 ~-8 ~5 ~-10 nether_brick []
setblock ~-8 ~6 ~-10 magma []
setblock ~-8 ~7 ~-10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-1 ~1 ~6 brewing_stand []
setblock ~1 ~1 ~6 cauldron []
setblock ~0 ~1 ~6 gold_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 coal 19
replaceitem block ~5 ~1 ~6 slot.container 1 blaze_rod 6
replaceitem block ~5 ~1 ~6 slot.container 2 magma_cream 9
replaceitem block ~5 ~1 ~6 slot.container 3 ghast_tear 6
replaceitem block ~5 ~1 ~6 slot.container 4 gold_nugget 19
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 9 soul_lantern 10
replaceitem block ~5 ~1 ~6 slot.container 10 gold_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 11 quartz 17
replaceitem block ~5 ~1 ~6 slot.container 12 nether_wart 14
replaceitem block ~5 ~1 ~6 slot.container 13 obsidian 11
replaceitem block ~5 ~1 ~6 slot.container 14 crying_obsidian 8
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
