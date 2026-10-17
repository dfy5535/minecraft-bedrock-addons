# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3851/4224 | 主题内编号: b011/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·深渊困兽角斗地牢 (soulsand_valley_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 soul_soil []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 bone_block []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 crying_obsidian []
setblock ~0 ~-5 ~0 soul_lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 wither_skeleton_skull 5
replaceitem block ~4 ~-2 ~0 slot.container 1 bone 21
replaceitem block ~4 ~-2 ~0 slot.container 2 ghast_tear 12
replaceitem block ~4 ~-2 ~0 slot.container 3 blaze_rod 13
replaceitem block ~4 ~-2 ~0 slot.container 4 coal 16
replaceitem block ~4 ~-2 ~0 slot.container 5 arrow 21
replaceitem block ~4 ~-2 ~0 slot.container 9 netherite_scrap 3
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_apple 5
replaceitem block ~4 ~-2 ~0 slot.container 11 soul_lantern 10
replaceitem block ~4 ~-2 ~0 slot.container 12 bone_block 17
replaceitem block ~4 ~-2 ~0 slot.container 13 soul_sand 22
replaceitem block ~4 ~-2 ~0 slot.container 14 soul_soil 16
loot insert ~4 ~-2 ~0 loot "rsf/soulsand_valley"
loot insert ~4 ~-2 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 polished_blackstone_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 air []
fill ~6 ~1 ~5 ~6 ~7 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 basalt []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 basalt []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 basalt []
fill ~5 ~1 ~4 ~5 ~6 ~4 basalt []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 basalt []
setblock ~-6 ~9 ~-5 soul_lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 basalt []
setblock ~-6 ~9 ~5 soul_lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 basalt []
setblock ~6 ~9 ~-5 soul_lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 basalt []
setblock ~6 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 polished_blackstone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-8 ~0 ~-1 ~-8 ~6 ~-1 bone_block []
fill ~8 ~0 ~-1 ~8 ~6 ~-1 bone_block []
fill ~-8 ~7 ~-1 ~8 ~7 ~-1 bone_block []
setblock ~0 ~8 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 coal 19
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 24
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 4 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~3 slot.container 5 bone 16
replaceitem block ~5 ~1 ~3 slot.container 9 gold_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 10 quartz 18
replaceitem block ~5 ~1 ~3 slot.container 11 obsidian 11
replaceitem block ~5 ~1 ~3 slot.container 12 crying_obsidian 10
replaceitem block ~5 ~1 ~3 slot.container 13 netherite_scrap 6
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 8
loot insert ~5 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 19
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 10
replaceitem block ~-5 ~1 ~4 slot.container 5 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 10 quartz 16
replaceitem block ~-5 ~1 ~4 slot.container 11 obsidian 9
replaceitem block ~-5 ~1 ~4 slot.container 12 crying_obsidian 8
replaceitem block ~-5 ~1 ~4 slot.container 13 netherite_scrap 4
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~-5 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~4 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~-3 ~0
