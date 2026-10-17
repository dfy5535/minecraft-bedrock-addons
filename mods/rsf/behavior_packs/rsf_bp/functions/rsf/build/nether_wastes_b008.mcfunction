# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3464/4224 | 主题内编号: b008/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·凯旋双拱圣物祭坛 (nether_wastes_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~10 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~10 ~7 air [] replace fire
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 red_nether_brick [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 red_nether_brick [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 red_nether_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 quartz_block []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 nether_brick []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 red_nether_brick []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 nether_brick []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 nether_brick_fence []
fill ~-4 ~8 ~-4 ~4 ~8 ~4 air []
setblock ~-5 ~8 ~-5 chiseled_nether_bricks []
setblock ~-5 ~9 ~-5 soul_lantern []
setblock ~-5 ~8 ~5 chiseled_nether_bricks []
setblock ~-5 ~9 ~5 soul_lantern []
setblock ~5 ~8 ~-5 chiseled_nether_bricks []
setblock ~5 ~9 ~-5 soul_lantern []
setblock ~5 ~8 ~5 chiseled_nether_bricks []
setblock ~5 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 chiseled_nether_bricks []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 chiseled_nether_bricks []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 chiseled_nether_bricks []
fill ~7 ~0 ~2 ~7 ~5 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~0 ~-6 ~-7 ~6 ~-6 nether_brick []
setblock ~-7 ~7 ~-6 magma []
setblock ~-7 ~8 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 blaze_rod 6
replaceitem block ~-4 ~1 ~4 slot.container 1 magma_cream 9
replaceitem block ~-4 ~1 ~4 slot.container 2 ghast_tear 6
replaceitem block ~-4 ~1 ~4 slot.container 3 gold_nugget 19
replaceitem block ~-4 ~1 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~4 slot.container 9 nether_wart 18
replaceitem block ~-4 ~1 ~4 slot.container 10 obsidian 8
replaceitem block ~-4 ~1 ~4 slot.container 11 crying_obsidian 5
replaceitem block ~-4 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_carrot 11
replaceitem block ~-4 ~1 ~4 slot.container 14 netherite_scrap 5
loot insert ~-4 ~1 ~4 loot "rsf/nether_wastes"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 ghast_tear 9
replaceitem block ~4 ~1 ~4 slot.container 1 gold_nugget 22
replaceitem block ~4 ~1 ~4 slot.container 2 rotten_flesh 19
replaceitem block ~4 ~1 ~4 slot.container 3 bone 10
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 5
replaceitem block ~4 ~1 ~4 slot.container 5 coal 14
replaceitem block ~4 ~1 ~4 slot.container 9 nether_wart 16
replaceitem block ~4 ~1 ~4 slot.container 10 obsidian 13
replaceitem block ~4 ~1 ~4 slot.container 11 crying_obsidian 10
replaceitem block ~4 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~4 ~1 ~4 slot.container 13 golden_carrot 9
replaceitem block ~4 ~1 ~4 slot.container 14 netherite_scrap 3
loot insert ~4 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~4 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~2 ~0
