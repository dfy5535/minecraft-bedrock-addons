# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3938/4224 | 主题内编号: b098/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·四角炮楼重装要塞 (soulsand_valley_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace fire
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 blackstone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 blackstone [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 blackstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 soul_campfire []
setblock ~5 ~-6 ~-4 soul_campfire []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 arrow 21
replaceitem block ~5 ~-4 ~4 slot.container 1 ender_pearl 6
replaceitem block ~5 ~-4 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~5 ~-4 ~4 slot.container 3 wither_skeleton_skull 5
replaceitem block ~5 ~-4 ~4 slot.container 4 bone 21
replaceitem block ~5 ~-4 ~4 slot.container 5 ghast_tear 12
replaceitem block ~5 ~-4 ~4 slot.container 9 crying_obsidian 12
replaceitem block ~5 ~-4 ~4 slot.container 10 netherite_scrap 1
replaceitem block ~5 ~-4 ~4 slot.container 11 golden_apple 3
replaceitem block ~5 ~-4 ~4 slot.container 12 soul_lantern 8
replaceitem block ~5 ~-4 ~4 slot.container 13 bone_block 15
replaceitem block ~5 ~-4 ~4 slot.container 14 soul_sand 20
loot insert ~5 ~-4 ~4 loot "rsf/soulsand_valley"
loot insert ~5 ~-4 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 blackstone []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 bone_block []
setblock ~-7 ~10 ~-6 soul_campfire []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 bone_block []
setblock ~-7 ~10 ~5 soul_campfire []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 bone_block []
setblock ~6 ~10 ~-6 soul_campfire []
fill ~6 ~1 ~5 ~7 ~9 ~6 bone_block []
setblock ~6 ~10 ~5 soul_campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 bone_block []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 polished_blackstone_wall []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 chiseled_polished_blackstone []
setblock ~-7 ~9 ~-6 soul_campfire []
setblock ~-7 ~8 ~6 chiseled_polished_blackstone []
setblock ~-7 ~9 ~6 soul_campfire []
setblock ~7 ~8 ~-6 chiseled_polished_blackstone []
setblock ~7 ~9 ~-6 soul_campfire []
setblock ~7 ~8 ~6 chiseled_polished_blackstone []
setblock ~7 ~9 ~6 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_campfire []
setblock ~2 ~4 ~-7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-9 ~0 ~-2 ~-9 ~8 ~-2 bone_block []
fill ~9 ~0 ~-2 ~9 ~8 ~-2 bone_block []
fill ~-9 ~9 ~-2 ~9 ~9 ~-2 bone_block []
setblock ~0 ~10 ~-2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 blaze_rod 8
replaceitem block ~-6 ~1 ~4 slot.container 1 coal 19
replaceitem block ~-6 ~1 ~4 slot.container 2 arrow 24
replaceitem block ~-6 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~-6 ~1 ~4 slot.container 5 wither_skeleton_skull 8
replaceitem block ~-6 ~1 ~4 slot.container 9 quartz 20
replaceitem block ~-6 ~1 ~4 slot.container 10 obsidian 13
replaceitem block ~-6 ~1 ~4 slot.container 11 crying_obsidian 12
replaceitem block ~-6 ~1 ~4 slot.container 12 netherite_scrap 1
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~-6 ~1 ~4 slot.container 14 soul_lantern 8
loot insert ~-6 ~1 ~4 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-4 ~0
