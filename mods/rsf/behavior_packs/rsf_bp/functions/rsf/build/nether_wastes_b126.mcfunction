# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3582/4224 | 主题内编号: b126/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双子主塔天桥宫殿与暗牢 (nether_wastes_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~12 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~12 ~8 air [] replace fire
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 nether_brick [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 nether_brick [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 nether_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_blackstone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 nether_brick []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 soul_lantern []
setblock ~4 ~-5 ~-4 soul_lantern []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 blaze_rod 11
replaceitem block ~4 ~-3 ~4 slot.container 1 magma_cream 14
replaceitem block ~4 ~-3 ~4 slot.container 2 ghast_tear 11
replaceitem block ~4 ~-3 ~4 slot.container 3 gold_nugget 16
replaceitem block ~4 ~-3 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~-3 ~4 slot.container 5 bone 12
replaceitem block ~4 ~-3 ~4 slot.container 9 fire_charge 6
replaceitem block ~4 ~-3 ~4 slot.container 10 soul_lantern 5
replaceitem block ~4 ~-3 ~4 slot.container 11 gold_ingot 12
replaceitem block ~4 ~-3 ~4 slot.container 12 quartz 19
replaceitem block ~4 ~-3 ~4 slot.container 13 nether_wart 16
replaceitem block ~4 ~-3 ~4 slot.container 14 obsidian 13
loot insert ~4 ~-3 ~4 loot "rsf/nether_wastes"
loot insert ~4 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~10 ~6 nether_brick []
fill ~2 ~1 ~-6 ~6 ~10 ~6 nether_brick []
fill ~-5 ~1 ~-5 ~-3 ~9 ~5 air []
fill ~3 ~1 ~-5 ~5 ~9 ~5 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 red_nether_brick []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 red_nether_brick []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 nether_brick []
fill ~0 ~15 ~0 ~0 ~15 ~0 glowstone []
setblock ~0 ~16 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 chiseled_nether_bricks []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 chiseled_nether_bricks []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 chiseled_nether_bricks []
fill ~7 ~0 ~2 ~7 ~5 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~-8 ~-8 ~9 ~-8 nether_brick []
setblock ~-8 ~10 ~-8 magma []
setblock ~-8 ~11 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 ender_pearl 10
replaceitem block ~-5 ~1 ~5 slot.container 1 coal 19
replaceitem block ~-5 ~1 ~5 slot.container 2 blaze_rod 6
replaceitem block ~-5 ~1 ~5 slot.container 3 magma_cream 9
replaceitem block ~-5 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-5 ~1 ~5 slot.container 5 gold_nugget 19
replaceitem block ~-5 ~1 ~5 slot.container 9 golden_carrot 13
replaceitem block ~-5 ~1 ~5 slot.container 10 netherite_scrap 7
replaceitem block ~-5 ~1 ~5 slot.container 11 fire_charge 6
replaceitem block ~-5 ~1 ~5 slot.container 12 soul_lantern 5
replaceitem block ~-5 ~1 ~5 slot.container 13 gold_ingot 12
replaceitem block ~-5 ~1 ~5 slot.container 14 quartz 19
loot insert ~-5 ~1 ~5 loot "rsf/nether_wastes"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 blaze_rod 9
replaceitem block ~5 ~1 ~5 slot.container 1 magma_cream 12
replaceitem block ~5 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~5 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~5 ~1 ~5 slot.container 4 rotten_flesh 19
replaceitem block ~5 ~1 ~5 slot.container 5 bone 10
replaceitem block ~5 ~1 ~5 slot.container 9 golden_carrot 11
replaceitem block ~5 ~1 ~5 slot.container 10 netherite_scrap 5
replaceitem block ~5 ~1 ~5 slot.container 11 fire_charge 11
replaceitem block ~5 ~1 ~5 slot.container 12 soul_lantern 10
replaceitem block ~5 ~1 ~5 slot.container 13 gold_ingot 10
replaceitem block ~5 ~1 ~5 slot.container 14 quartz 17
loot insert ~5 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~5 ~1 ~5 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
