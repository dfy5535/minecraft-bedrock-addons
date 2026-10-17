# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3859/4224 | 主题内编号: b019/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·琉璃穹顶圣物秘室 (soulsand_valley_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 soul_soil []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 nether_brick []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 soul_lantern []
setblock ~4 ~-5 ~-3 soul_lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 coal 16
replaceitem block ~4 ~-3 ~3 slot.container 1 arrow 21
replaceitem block ~4 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 3 rotten_flesh 13
replaceitem block ~4 ~-3 ~3 slot.container 4 wither_skeleton_skull 5
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 21
replaceitem block ~4 ~-3 ~3 slot.container 9 soul_lantern 7
replaceitem block ~4 ~-3 ~3 slot.container 10 bone_block 14
replaceitem block ~4 ~-3 ~3 slot.container 11 soul_sand 19
replaceitem block ~4 ~-3 ~3 slot.container 12 soul_soil 20
replaceitem block ~4 ~-3 ~3 slot.container 13 gold_ingot 13
replaceitem block ~4 ~-3 ~3 slot.container 14 quartz 22
loot insert ~4 ~-3 ~3 loot "rsf/soulsand_valley"
loot insert ~4 ~-3 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 polished_blackstone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 basalt []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 basalt []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 basalt []
fill ~4 ~1 ~3 ~4 ~7 ~3 basalt []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 bone_block []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 basalt []
setblock ~-7 ~5 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 basalt []
setblock ~-7 ~5 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 basalt []
setblock ~7 ~5 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~4 ~6 basalt []
setblock ~7 ~5 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-7 ~0 ~0 ~-7 ~4 ~0 bone_block []
fill ~7 ~0 ~0 ~7 ~4 ~0 bone_block []
fill ~-7 ~5 ~0 ~7 ~5 ~0 bone_block []
setblock ~0 ~6 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 coal 19
replaceitem block ~4 ~1 ~2 slot.container 1 arrow 24
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~2 slot.container 4 wither_skeleton_skull 8
replaceitem block ~4 ~1 ~2 slot.container 5 bone 16
replaceitem block ~4 ~1 ~2 slot.container 9 netherite_scrap 3
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 5
replaceitem block ~4 ~1 ~2 slot.container 11 soul_lantern 10
replaceitem block ~4 ~1 ~2 slot.container 12 bone_block 17
replaceitem block ~4 ~1 ~2 slot.container 13 soul_sand 22
replaceitem block ~4 ~1 ~2 slot.container 14 soul_soil 16
loot insert ~4 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 19
replaceitem block ~-4 ~1 ~3 slot.container 4 ghast_tear 10
replaceitem block ~-4 ~1 ~3 slot.container 5 blaze_rod 11
replaceitem block ~-4 ~1 ~3 slot.container 9 netherite_scrap 1
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 3
replaceitem block ~-4 ~1 ~3 slot.container 11 soul_lantern 8
replaceitem block ~-4 ~1 ~3 slot.container 12 bone_block 15
replaceitem block ~-4 ~1 ~3 slot.container 13 soul_sand 20
replaceitem block ~-4 ~1 ~3 slot.container 14 soul_soil 21
loot insert ~-4 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~3 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
