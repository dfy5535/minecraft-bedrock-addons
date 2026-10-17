# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3856/4224 | 主题内编号: b016/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·要塞地底重装暗牢 (soulsand_valley_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~9 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~9 ~8 air [] replace fire
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 bone_block [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 bone_block [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 nether_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 bone_block []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 soul_campfire []
setblock ~5 ~-6 ~0 soul_campfire []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-4 ~4 slot.container 1 wither_skeleton_skull 5
replaceitem block ~0 ~-4 ~4 slot.container 2 bone 21
replaceitem block ~0 ~-4 ~4 slot.container 3 ghast_tear 12
replaceitem block ~0 ~-4 ~4 slot.container 4 blaze_rod 13
replaceitem block ~0 ~-4 ~4 slot.container 5 coal 16
replaceitem block ~0 ~-4 ~4 slot.container 9 bone_block 17
replaceitem block ~0 ~-4 ~4 slot.container 10 soul_sand 22
replaceitem block ~0 ~-4 ~4 slot.container 11 soul_soil 16
replaceitem block ~0 ~-4 ~4 slot.container 12 gold_ingot 9
replaceitem block ~0 ~-4 ~4 slot.container 13 quartz 18
replaceitem block ~0 ~-4 ~4 slot.container 14 obsidian 11
loot insert ~0 ~-4 ~4 loot "rsf/soulsand_valley"
loot insert ~0 ~-4 ~4 loot "chests/nether_bridge"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 rotten_flesh 11
replaceitem block ~0 ~-4 ~-4 slot.container 1 wither_skeleton_skull 3
replaceitem block ~0 ~-4 ~-4 slot.container 2 bone 19
replaceitem block ~0 ~-4 ~-4 slot.container 3 ghast_tear 10
replaceitem block ~0 ~-4 ~-4 slot.container 4 blaze_rod 11
replaceitem block ~0 ~-4 ~-4 slot.container 5 coal 22
replaceitem block ~0 ~-4 ~-4 slot.container 9 bone_block 16
replaceitem block ~0 ~-4 ~-4 slot.container 10 soul_sand 21
replaceitem block ~0 ~-4 ~-4 slot.container 11 soul_soil 22
replaceitem block ~0 ~-4 ~-4 slot.container 12 gold_ingot 8
replaceitem block ~0 ~-4 ~-4 slot.container 13 quartz 17
replaceitem block ~0 ~-4 ~-4 slot.container 14 obsidian 10
loot insert ~0 ~-4 ~-4 loot "rsf/soulsand_valley"
loot insert ~0 ~-4 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 bone_block []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 polished_blackstone_bricks []
setblock ~-7 ~9 ~-6 soul_campfire []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 polished_blackstone_bricks []
setblock ~-7 ~9 ~5 soul_campfire []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 polished_blackstone_bricks []
setblock ~6 ~9 ~-6 soul_campfire []
fill ~6 ~1 ~5 ~7 ~8 ~6 polished_blackstone_bricks []
setblock ~6 ~9 ~5 soul_campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 basalt []
setblock ~-6 ~10 ~-5 soul_lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 basalt []
setblock ~-6 ~10 ~5 soul_lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 basalt []
setblock ~6 ~10 ~-5 soul_lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 basalt []
setblock ~6 ~10 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 nether_brick_fence []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~-9 ~0 ~0 ~-9 ~6 ~0 bone_block []
fill ~9 ~0 ~0 ~9 ~6 ~0 bone_block []
fill ~-9 ~7 ~0 ~9 ~7 ~0 bone_block []
setblock ~0 ~8 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 16
replaceitem block ~-6 ~1 ~4 slot.container 1 ghast_tear 7
replaceitem block ~-6 ~1 ~4 slot.container 2 blaze_rod 8
replaceitem block ~-6 ~1 ~4 slot.container 3 coal 19
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 24
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 golden_apple 8
replaceitem block ~-6 ~1 ~4 slot.container 10 soul_lantern 6
replaceitem block ~-6 ~1 ~4 slot.container 11 bone_block 13
replaceitem block ~-6 ~1 ~4 slot.container 12 soul_sand 18
replaceitem block ~-6 ~1 ~4 slot.container 13 soul_soil 19
replaceitem block ~-6 ~1 ~4 slot.container 14 gold_ingot 12
loot insert ~-6 ~1 ~4 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
