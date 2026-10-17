# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3509/4224 | 主题内编号: b053/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·测绘师观景制图站 (nether_wastes_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 quartz_block [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 quartz_block [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 soul_lantern []
setblock ~3 ~-6 ~-4 soul_lantern []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 gold_nugget 16
replaceitem block ~3 ~-4 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~3 ~-4 ~4 slot.container 2 bone 12
replaceitem block ~3 ~-4 ~4 slot.container 3 ender_pearl 7
replaceitem block ~3 ~-4 ~4 slot.container 4 coal 16
replaceitem block ~3 ~-4 ~4 slot.container 5 blaze_rod 11
replaceitem block ~3 ~-4 ~4 slot.container 9 netherite_scrap 3
replaceitem block ~3 ~-4 ~4 slot.container 10 fire_charge 9
replaceitem block ~3 ~-4 ~4 slot.container 11 soul_lantern 8
replaceitem block ~3 ~-4 ~4 slot.container 12 gold_ingot 15
replaceitem block ~3 ~-4 ~4 slot.container 13 quartz 22
replaceitem block ~3 ~-4 ~4 slot.container 14 nether_wart 12
loot insert ~3 ~-4 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~-4 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 quartz_block []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 quartz_pillar []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 quartz_pillar []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 quartz_pillar []
fill ~3 ~1 ~4 ~3 ~7 ~4 quartz_pillar []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 nether_brick []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 nether_brick []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gilded_blackstone []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 nether_brick []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 quartz_pillar []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 quartz_pillar []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 quartz_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~-6 ~0 ~-6 ~-6 ~6 ~-6 nether_brick []
setblock ~-6 ~7 ~-6 magma []
setblock ~-6 ~8 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-3 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~3 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 15
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 10
replaceitem block ~3 ~1 ~4 slot.container 2 coal 19
replaceitem block ~3 ~1 ~4 slot.container 3 blaze_rod 6
replaceitem block ~3 ~1 ~4 slot.container 4 magma_cream 9
replaceitem block ~3 ~1 ~4 slot.container 5 ghast_tear 6
replaceitem block ~3 ~1 ~4 slot.container 9 netherite_scrap 3
replaceitem block ~3 ~1 ~4 slot.container 10 fire_charge 9
replaceitem block ~3 ~1 ~4 slot.container 11 soul_lantern 8
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 15
replaceitem block ~3 ~1 ~4 slot.container 13 quartz 22
replaceitem block ~3 ~1 ~4 slot.container 14 nether_wart 12
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~2 ~0
