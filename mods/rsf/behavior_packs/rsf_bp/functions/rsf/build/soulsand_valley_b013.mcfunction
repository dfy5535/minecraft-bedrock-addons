# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3853/4224 | 主题内编号: b013/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·地底熔炉苦工地牢 (soulsand_valley_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~9 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~9 ~8 air [] replace fire
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 nether_brick [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 nether_brick [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 nether_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_blackstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone_bricks []
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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~6 ~6 nether_brick []
fill ~-5 ~1 ~-5 ~5 ~5 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~6 ~-6 basalt []
fill ~-6 ~1 ~6 ~-6 ~6 ~6 basalt []
fill ~6 ~1 ~-6 ~6 ~6 ~-6 basalt []
fill ~6 ~1 ~6 ~6 ~6 ~6 basalt []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 nether_brick_fence []
setblock ~6 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 bone_block []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 blackstone []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~-8 ~0 ~-3 ~-8 ~8 ~-3 bone_block []
fill ~8 ~0 ~-3 ~8 ~8 ~-3 bone_block []
fill ~-8 ~9 ~-3 ~8 ~9 ~-3 bone_block []
setblock ~0 ~10 ~-3 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 2 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~4 slot.container 3 bone 16
replaceitem block ~5 ~1 ~4 slot.container 4 ghast_tear 7
replaceitem block ~5 ~1 ~4 slot.container 5 blaze_rod 8
replaceitem block ~5 ~1 ~4 slot.container 9 soul_lantern 9
replaceitem block ~5 ~1 ~4 slot.container 10 bone_block 16
replaceitem block ~5 ~1 ~4 slot.container 11 soul_sand 21
replaceitem block ~5 ~1 ~4 slot.container 12 soul_soil 22
replaceitem block ~5 ~1 ~4 slot.container 13 gold_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 14 quartz 17
loot insert ~5 ~1 ~4 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~5 slot.container 1 bone 19
replaceitem block ~-5 ~1 ~5 slot.container 2 ghast_tear 10
replaceitem block ~-5 ~1 ~5 slot.container 3 blaze_rod 11
replaceitem block ~-5 ~1 ~5 slot.container 4 coal 22
replaceitem block ~-5 ~1 ~5 slot.container 5 arrow 27
replaceitem block ~-5 ~1 ~5 slot.container 9 soul_lantern 7
replaceitem block ~-5 ~1 ~5 slot.container 10 bone_block 14
replaceitem block ~-5 ~1 ~5 slot.container 11 soul_sand 19
replaceitem block ~-5 ~1 ~5 slot.container 12 soul_soil 20
replaceitem block ~-5 ~1 ~5 slot.container 13 gold_ingot 13
replaceitem block ~-5 ~1 ~5 slot.container 14 quartz 22
loot insert ~-5 ~1 ~5 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~5 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
