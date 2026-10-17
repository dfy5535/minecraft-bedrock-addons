# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3967/4224 | 主题内编号: b127/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·万神殿巨型穹顶与试炼宫 (soulsand_valley_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
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

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 crying_obsidian []
setblock ~-5 ~-5 ~-4 soul_lantern []
setblock ~5 ~-5 ~4 soul_lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 wither_skeleton_skull 5
replaceitem block ~0 ~-3 ~4 slot.container 1 bone 21
replaceitem block ~0 ~-3 ~4 slot.container 2 ghast_tear 12
replaceitem block ~0 ~-3 ~4 slot.container 3 blaze_rod 13
replaceitem block ~0 ~-3 ~4 slot.container 4 coal 16
replaceitem block ~0 ~-3 ~4 slot.container 5 arrow 21
replaceitem block ~0 ~-3 ~4 slot.container 9 gold_ingot 10
replaceitem block ~0 ~-3 ~4 slot.container 10 quartz 19
replaceitem block ~0 ~-3 ~4 slot.container 11 obsidian 12
replaceitem block ~0 ~-3 ~4 slot.container 12 crying_obsidian 11
replaceitem block ~0 ~-3 ~4 slot.container 13 netherite_scrap 7
replaceitem block ~0 ~-3 ~4 slot.container 14 golden_apple 2
loot insert ~0 ~-3 ~4 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 bone_block []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 basalt []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 basalt []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 basalt []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 basalt []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 basalt []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 basalt []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 basalt []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 basalt []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 basalt []
fill ~1 ~1 ~6 ~1 ~7 ~6 basalt []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 basalt []
fill ~3 ~1 ~6 ~3 ~7 ~6 basalt []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 basalt []
fill ~5 ~1 ~6 ~5 ~7 ~6 basalt []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 basalt []
fill ~7 ~1 ~6 ~7 ~7 ~6 basalt []
fill ~-7 ~1 ~-4 ~-7 ~7 ~-4 basalt []
fill ~7 ~1 ~-4 ~7 ~7 ~-4 basalt []
fill ~-7 ~1 ~-2 ~-7 ~7 ~-2 basalt []
fill ~7 ~1 ~-2 ~7 ~7 ~-2 basalt []
fill ~-7 ~1 ~0 ~-7 ~7 ~0 basalt []
fill ~7 ~1 ~0 ~7 ~7 ~0 basalt []
fill ~-7 ~1 ~2 ~-7 ~7 ~2 basalt []
fill ~7 ~1 ~2 ~7 ~7 ~2 basalt []
fill ~-7 ~1 ~4 ~-7 ~7 ~4 basalt []
fill ~7 ~1 ~4 ~7 ~7 ~4 basalt []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 bone_block []
fill ~-6 ~9 ~-5 ~6 ~10 ~5 glass []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 blackstone []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~-9 ~0 ~-3 ~-9 ~7 ~-3 bone_block []
fill ~9 ~0 ~-3 ~9 ~7 ~-3 bone_block []
fill ~-9 ~8 ~-3 ~9 ~8 ~-3 bone_block []
setblock ~0 ~9 ~-3 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 crying_obsidian []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 wither_skeleton_skull 8
replaceitem block ~6 ~1 ~4 slot.container 1 bone 16
replaceitem block ~6 ~1 ~4 slot.container 2 ghast_tear 7
replaceitem block ~6 ~1 ~4 slot.container 3 blaze_rod 8
replaceitem block ~6 ~1 ~4 slot.container 4 coal 19
replaceitem block ~6 ~1 ~4 slot.container 5 arrow 24
replaceitem block ~6 ~1 ~4 slot.container 9 soul_sand 21
replaceitem block ~6 ~1 ~4 slot.container 10 soul_soil 22
replaceitem block ~6 ~1 ~4 slot.container 11 gold_ingot 8
replaceitem block ~6 ~1 ~4 slot.container 12 quartz 17
replaceitem block ~6 ~1 ~4 slot.container 13 obsidian 10
replaceitem block ~6 ~1 ~4 slot.container 14 crying_obsidian 9
loot insert ~6 ~1 ~4 loot "rsf/soulsand_valley"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ghast_tear 10
replaceitem block ~-6 ~1 ~5 slot.container 1 blaze_rod 11
replaceitem block ~-6 ~1 ~5 slot.container 2 coal 22
replaceitem block ~-6 ~1 ~5 slot.container 3 arrow 27
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 11
replaceitem block ~-6 ~1 ~5 slot.container 9 soul_sand 19
replaceitem block ~-6 ~1 ~5 slot.container 10 soul_soil 20
replaceitem block ~-6 ~1 ~5 slot.container 11 gold_ingot 13
replaceitem block ~-6 ~1 ~5 slot.container 12 quartz 22
replaceitem block ~-6 ~1 ~5 slot.container 13 obsidian 8
replaceitem block ~-6 ~1 ~5 slot.container 14 crying_obsidian 7
loot insert ~-6 ~1 ~5 loot "rsf/soulsand_valley"
loot insert ~-6 ~1 ~5 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
