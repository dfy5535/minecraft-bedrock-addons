# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3577/4224 | 主题内编号: b121/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·卫城廊柱王座大殿与地宫 (nether_wastes_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 quartz_block [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 quartz_block [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 quartz_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
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

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~8 ~7 quartz_block []
fill ~-5 ~1 ~0 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 quartz_pillar []
fill ~-4 ~1 ~-7 ~-4 ~8 ~-7 quartz_pillar []
fill ~-2 ~1 ~-7 ~-2 ~8 ~-7 quartz_pillar []
fill ~0 ~1 ~-7 ~0 ~8 ~-7 quartz_pillar []
fill ~2 ~1 ~-7 ~2 ~8 ~-7 quartz_pillar []
fill ~4 ~1 ~-7 ~4 ~8 ~-7 quartz_pillar []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 quartz_pillar []
fill ~-6 ~8 ~-7 ~6 ~8 ~-1 nether_brick []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~9 ~-8 ~-7 ~9 ~8 quartz_stairs ["weirdo_direction"=0]
fill ~7 ~9 ~-8 ~7 ~9 ~8 quartz_stairs ["weirdo_direction"=1]
fill ~-6 ~10 ~-7 ~-6 ~10 ~7 quartz_stairs ["weirdo_direction"=0]
fill ~6 ~10 ~-7 ~6 ~10 ~7 quartz_stairs ["weirdo_direction"=1]
fill ~-5 ~10 ~-7 ~5 ~10 ~7 quartz_slab []
fill ~0 ~11 ~-8 ~0 ~11 ~8 nether_brick []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 quartz_pillar []
setblock ~-8 ~5 ~-9 soul_lantern []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 quartz_pillar []
setblock ~-8 ~5 ~9 soul_lantern []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 quartz_pillar []
setblock ~8 ~5 ~-9 soul_lantern []
fill ~8 ~0 ~9 ~8 ~4 ~9 quartz_pillar []
setblock ~8 ~5 ~9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x10x6) ---
fill ~-8 ~0 ~-10 ~-8 ~9 ~-10 nether_brick []
setblock ~-8 ~10 ~-10 magma []
setblock ~-8 ~11 ~-10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gilded_blackstone []
setblock ~0 ~1 ~0 glowstone []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 magma_cream 9
replaceitem block ~5 ~1 ~6 slot.container 1 ghast_tear 6
replaceitem block ~5 ~1 ~6 slot.container 2 gold_nugget 19
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 4 bone 15
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 9 quartz 16
replaceitem block ~5 ~1 ~6 slot.container 10 nether_wart 13
replaceitem block ~5 ~1 ~6 slot.container 11 obsidian 10
replaceitem block ~5 ~1 ~6 slot.container 12 crying_obsidian 7
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 6
replaceitem block ~5 ~1 ~6 slot.container 14 golden_carrot 13
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
