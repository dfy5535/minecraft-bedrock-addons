# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3963/4224 | 主题内编号: b123/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·四角塔楼领主城堡复合体 (soulsand_valley_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~11 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~11 ~8 air [] replace fire
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 soul_soil []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 soul_lantern []
setblock ~5 ~-5 ~-4 soul_lantern []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~5 ~-3 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~5 ~-3 ~4 slot.container 2 wither_skeleton_skull 5
replaceitem block ~5 ~-3 ~4 slot.container 3 bone 21
replaceitem block ~5 ~-3 ~4 slot.container 4 ghast_tear 12
replaceitem block ~5 ~-3 ~4 slot.container 5 blaze_rod 13
replaceitem block ~5 ~-3 ~4 slot.container 9 soul_sand 19
replaceitem block ~5 ~-3 ~4 slot.container 10 soul_soil 20
replaceitem block ~5 ~-3 ~4 slot.container 11 gold_ingot 13
replaceitem block ~5 ~-3 ~4 slot.container 12 quartz 22
replaceitem block ~5 ~-3 ~4 slot.container 13 obsidian 8
replaceitem block ~5 ~-3 ~4 slot.container 14 crying_obsidian 7
loot insert ~5 ~-3 ~4 loot "rsf/soulsand_valley"
loot insert ~5 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 polished_blackstone_bricks []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~10 ~-5 bone_block []
setblock ~-7 ~11 ~-6 soul_lantern []
fill ~-7 ~1 ~5 ~-6 ~10 ~6 bone_block []
setblock ~-7 ~11 ~5 soul_lantern []
fill ~6 ~1 ~-6 ~7 ~10 ~-5 bone_block []
setblock ~6 ~11 ~-6 soul_lantern []
fill ~6 ~1 ~5 ~7 ~10 ~6 bone_block []
setblock ~6 ~11 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 bone_block []
fill ~-7 ~9 ~-6 ~7 ~9 ~6 polished_blackstone_wall []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 air []
setblock ~-7 ~9 ~-6 basalt []
setblock ~-7 ~10 ~-6 soul_lantern []
setblock ~-7 ~9 ~6 basalt []
setblock ~-7 ~10 ~6 soul_lantern []
setblock ~7 ~9 ~-6 basalt []
setblock ~7 ~10 ~-6 soul_lantern []
setblock ~7 ~9 ~6 basalt []
setblock ~7 ~10 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_campfire []
setblock ~2 ~4 ~-7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~-1 ~-9 ~8 ~-1 bone_block []
fill ~9 ~0 ~-1 ~9 ~8 ~-1 bone_block []
fill ~-9 ~9 ~-1 ~9 ~9 ~-1 bone_block []
setblock ~0 ~10 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 gilded_blackstone []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 coal 19
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 24
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 4 wither_skeleton_skull 8
replaceitem block ~6 ~1 ~4 slot.container 5 bone 16
replaceitem block ~6 ~1 ~4 slot.container 9 soul_lantern 7
replaceitem block ~6 ~1 ~4 slot.container 10 bone_block 14
replaceitem block ~6 ~1 ~4 slot.container 11 soul_sand 19
replaceitem block ~6 ~1 ~4 slot.container 12 soul_soil 20
replaceitem block ~6 ~1 ~4 slot.container 13 gold_ingot 13
replaceitem block ~6 ~1 ~4 slot.container 14 quartz 22
loot insert ~6 ~1 ~4 loot "rsf/soulsand_valley"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 11
replaceitem block ~-6 ~1 ~5 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 19
replaceitem block ~-6 ~1 ~5 slot.container 4 ghast_tear 10
replaceitem block ~-6 ~1 ~5 slot.container 5 blaze_rod 11
replaceitem block ~-6 ~1 ~5 slot.container 9 soul_lantern 12
replaceitem block ~-6 ~1 ~5 slot.container 10 bone_block 12
replaceitem block ~-6 ~1 ~5 slot.container 11 soul_sand 17
replaceitem block ~-6 ~1 ~5 slot.container 12 soul_soil 18
replaceitem block ~-6 ~1 ~5 slot.container 13 gold_ingot 11
replaceitem block ~-6 ~1 ~5 slot.container 14 quartz 20
loot insert ~-6 ~1 ~5 loot "rsf/soulsand_valley"
loot insert ~-6 ~1 ~5 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
