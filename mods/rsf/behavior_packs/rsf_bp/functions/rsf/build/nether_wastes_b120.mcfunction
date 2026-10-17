# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3576/4224 | 主题内编号: b120/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·引水渠跨桥水培温室 (nether_wastes_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace fire
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 red_nether_brick [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 red_nether_brick [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 red_nether_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 quartz_block []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 nether_brick []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 lava []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~3 slot.container 0 ghast_tear 11
replaceitem block ~-3 ~-2 ~3 slot.container 1 gold_nugget 16
replaceitem block ~-3 ~-2 ~3 slot.container 2 rotten_flesh 13
replaceitem block ~-3 ~-2 ~3 slot.container 3 bone 12
replaceitem block ~-3 ~-2 ~3 slot.container 4 ender_pearl 7
replaceitem block ~-3 ~-2 ~3 slot.container 5 coal 16
replaceitem block ~-3 ~-2 ~3 slot.container 9 crying_obsidian 4
replaceitem block ~-3 ~-2 ~3 slot.container 10 golden_apple 3
replaceitem block ~-3 ~-2 ~3 slot.container 11 golden_carrot 10
replaceitem block ~-3 ~-2 ~3 slot.container 12 netherite_scrap 4
replaceitem block ~-3 ~-2 ~3 slot.container 13 fire_charge 10
replaceitem block ~-3 ~-2 ~3 slot.container 14 soul_lantern 9
loot insert ~-3 ~-2 ~3 loot "rsf/nether_wastes"
loot insert ~-3 ~-2 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 red_nether_brick []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 nether_brick []
fill ~-4 ~7 ~-4 ~4 ~8 ~4 glass []
fill ~-3 ~7 ~-3 ~3 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 chiseled_nether_bricks []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 chiseled_nether_bricks []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 chiseled_nether_bricks []
fill ~7 ~0 ~2 ~7 ~5 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-7 ~0 ~-7 ~-7 ~8 ~-7 nether_brick []
setblock ~-7 ~9 ~-7 magma []
setblock ~-7 ~10 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 crafting_table []
setblock ~-3 ~1 ~4 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 blaze_rod 6
replaceitem block ~-4 ~1 ~4 slot.container 1 magma_cream 9
replaceitem block ~-4 ~1 ~4 slot.container 2 ghast_tear 6
replaceitem block ~-4 ~1 ~4 slot.container 3 gold_nugget 19
replaceitem block ~-4 ~1 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~4 slot.container 9 fire_charge 12
replaceitem block ~-4 ~1 ~4 slot.container 10 soul_lantern 4
replaceitem block ~-4 ~1 ~4 slot.container 11 gold_ingot 11
replaceitem block ~-4 ~1 ~4 slot.container 12 quartz 18
replaceitem block ~-4 ~1 ~4 slot.container 13 nether_wart 15
replaceitem block ~-4 ~1 ~4 slot.container 14 obsidian 12
loot insert ~-4 ~1 ~4 loot "rsf/nether_wastes"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 ghast_tear 9
replaceitem block ~4 ~1 ~4 slot.container 1 gold_nugget 22
replaceitem block ~4 ~1 ~4 slot.container 2 rotten_flesh 19
replaceitem block ~4 ~1 ~4 slot.container 3 bone 10
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 5
replaceitem block ~4 ~1 ~4 slot.container 5 coal 14
replaceitem block ~4 ~1 ~4 slot.container 9 fire_charge 10
replaceitem block ~4 ~1 ~4 slot.container 10 soul_lantern 9
replaceitem block ~4 ~1 ~4 slot.container 11 gold_ingot 16
replaceitem block ~4 ~1 ~4 slot.container 12 quartz 16
replaceitem block ~4 ~1 ~4 slot.container 13 nether_wart 13
replaceitem block ~4 ~1 ~4 slot.container 14 obsidian 10
loot insert ~4 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~4 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
