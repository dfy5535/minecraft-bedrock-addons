# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3881/4224 | 主题内编号: b041/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·八角看台古罗马斗技场 (soulsand_valley_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~9 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~9 ~8 air [] replace fire
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 nether_brick [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 nether_brick [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 nether_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 nether_brick []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 ghast_tear 12
replaceitem block ~4 ~-3 ~4 slot.container 1 blaze_rod 13
replaceitem block ~4 ~-3 ~4 slot.container 2 coal 16
replaceitem block ~4 ~-3 ~4 slot.container 3 arrow 21
replaceitem block ~4 ~-3 ~4 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-3 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~4 ~-3 ~4 slot.container 9 obsidian 10
replaceitem block ~4 ~-3 ~4 slot.container 10 crying_obsidian 9
replaceitem block ~4 ~-3 ~4 slot.container 11 netherite_scrap 5
replaceitem block ~4 ~-3 ~4 slot.container 12 golden_apple 7
replaceitem block ~4 ~-3 ~4 slot.container 13 soul_lantern 12
replaceitem block ~4 ~-3 ~4 slot.container 14 bone_block 12
loot insert ~4 ~-3 ~4 loot "rsf/soulsand_valley"
loot insert ~4 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 nether_brick []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 air []
fill ~7 ~1 ~6 ~7 ~7 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 basalt []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 basalt []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 basalt []
fill ~6 ~1 ~5 ~6 ~6 ~5 basalt []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 basalt []
setblock ~-7 ~9 ~-6 soul_lantern []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 basalt []
setblock ~-7 ~9 ~6 soul_lantern []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 basalt []
setblock ~7 ~9 ~-6 soul_lantern []
fill ~7 ~6 ~6 ~7 ~8 ~6 basalt []
setblock ~7 ~9 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 basalt []
setblock ~-9 ~5 ~-8 soul_lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 basalt []
setblock ~-9 ~5 ~8 soul_lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 basalt []
setblock ~9 ~5 ~-8 soul_lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 basalt []
setblock ~9 ~5 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~-9 ~0 ~1 ~-9 ~6 ~1 bone_block []
fill ~9 ~0 ~1 ~9 ~6 ~1 bone_block []
fill ~-9 ~7 ~1 ~9 ~7 ~1 bone_block []
setblock ~0 ~8 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~-5 ~1 ~5 anvil []
setblock ~5 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ghast_tear 7
replaceitem block ~6 ~1 ~4 slot.container 1 blaze_rod 8
replaceitem block ~6 ~1 ~4 slot.container 2 coal 19
replaceitem block ~6 ~1 ~4 slot.container 3 arrow 24
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 9 gold_ingot 11
replaceitem block ~6 ~1 ~4 slot.container 10 quartz 20
replaceitem block ~6 ~1 ~4 slot.container 11 obsidian 13
replaceitem block ~6 ~1 ~4 slot.container 12 crying_obsidian 12
replaceitem block ~6 ~1 ~4 slot.container 13 netherite_scrap 1
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 3
loot insert ~6 ~1 ~4 loot "rsf/soulsand_valley"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 coal 22
replaceitem block ~-6 ~1 ~5 slot.container 1 arrow 27
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 11
replaceitem block ~-6 ~1 ~5 slot.container 4 wither_skeleton_skull 3
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 19
replaceitem block ~-6 ~1 ~5 slot.container 9 gold_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 10 quartz 18
replaceitem block ~-6 ~1 ~5 slot.container 11 obsidian 11
replaceitem block ~-6 ~1 ~5 slot.container 12 crying_obsidian 10
replaceitem block ~-6 ~1 ~5 slot.container 13 netherite_scrap 6
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 8
loot insert ~-6 ~1 ~5 loot "rsf/soulsand_valley"
loot insert ~-6 ~1 ~5 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~-2 ~0
