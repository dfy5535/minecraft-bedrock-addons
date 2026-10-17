# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3939/4224 | 主题内编号: b099/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·铁闸门瓮城防御堡 (soulsand_valley_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~10 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~10 ~6 air [] replace fire
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 soul_soil []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 bone_block []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 ghast_tear 12
replaceitem block ~-5 ~-3 ~2 slot.container 1 blaze_rod 13
replaceitem block ~-5 ~-3 ~2 slot.container 2 coal 16
replaceitem block ~-5 ~-3 ~2 slot.container 3 arrow 21
replaceitem block ~-5 ~-3 ~2 slot.container 4 ender_pearl 6
replaceitem block ~-5 ~-3 ~2 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~-3 ~2 slot.container 9 netherite_scrap 4
replaceitem block ~-5 ~-3 ~2 slot.container 10 golden_apple 6
replaceitem block ~-5 ~-3 ~2 slot.container 11 soul_lantern 11
replaceitem block ~-5 ~-3 ~2 slot.container 12 bone_block 18
replaceitem block ~-5 ~-3 ~2 slot.container 13 soul_sand 16
replaceitem block ~-5 ~-3 ~2 slot.container 14 soul_soil 17
loot insert ~-5 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~-5 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 polished_blackstone_bricks []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 bone_block []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 polished_blackstone_wall []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 basalt []
setblock ~-6 ~9 ~-4 soul_lantern []
setblock ~-6 ~8 ~4 basalt []
setblock ~-6 ~9 ~4 soul_lantern []
setblock ~6 ~8 ~-4 basalt []
setblock ~6 ~9 ~-4 soul_lantern []
setblock ~6 ~8 ~4 basalt []
setblock ~6 ~9 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 bone_block []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-8 ~0 ~0 ~-8 ~4 ~0 bone_block []
fill ~8 ~0 ~0 ~8 ~4 ~0 bone_block []
fill ~-8 ~5 ~0 ~8 ~5 ~0 bone_block []
setblock ~0 ~6 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 crying_obsidian []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 coal 19
replaceitem block ~5 ~1 ~2 slot.container 1 arrow 24
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~2 slot.container 4 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~2 slot.container 5 bone 16
replaceitem block ~5 ~1 ~2 slot.container 9 netherite_scrap 6
replaceitem block ~5 ~1 ~2 slot.container 10 golden_apple 8
replaceitem block ~5 ~1 ~2 slot.container 11 soul_lantern 6
replaceitem block ~5 ~1 ~2 slot.container 12 bone_block 13
replaceitem block ~5 ~1 ~2 slot.container 13 soul_sand 18
replaceitem block ~5 ~1 ~2 slot.container 14 soul_soil 19
loot insert ~5 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 19
replaceitem block ~-5 ~1 ~3 slot.container 4 ghast_tear 10
replaceitem block ~-5 ~1 ~3 slot.container 5 blaze_rod 11
replaceitem block ~-5 ~1 ~3 slot.container 9 netherite_scrap 4
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 11 soul_lantern 11
replaceitem block ~-5 ~1 ~3 slot.container 12 bone_block 18
replaceitem block ~-5 ~1 ~3 slot.container 13 soul_sand 16
replaceitem block ~-5 ~1 ~3 slot.container 14 soul_soil 17
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~3 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
