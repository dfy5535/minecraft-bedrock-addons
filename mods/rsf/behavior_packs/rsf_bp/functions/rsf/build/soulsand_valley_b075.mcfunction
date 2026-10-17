# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3915/4224 | 主题内编号: b075/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·远古巨石环廊法阵 (soulsand_valley_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace fire
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 soul_soil []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 bone_block []
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 bone_block []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-4 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-2 ~-4 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-2 ~-4 slot.container 2 wither_skeleton_skull 5
replaceitem block ~0 ~-2 ~-4 slot.container 3 bone 21
replaceitem block ~0 ~-2 ~-4 slot.container 4 ghast_tear 12
replaceitem block ~0 ~-2 ~-4 slot.container 5 blaze_rod 13
replaceitem block ~0 ~-2 ~-4 slot.container 9 soul_sand 21
replaceitem block ~0 ~-2 ~-4 slot.container 10 soul_soil 22
replaceitem block ~0 ~-2 ~-4 slot.container 11 gold_ingot 8
replaceitem block ~0 ~-2 ~-4 slot.container 12 quartz 17
replaceitem block ~0 ~-2 ~-4 slot.container 13 obsidian 10
replaceitem block ~0 ~-2 ~-4 slot.container 14 crying_obsidian 9
loot insert ~0 ~-2 ~-4 loot "rsf/soulsand_valley"
loot insert ~0 ~-2 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 bone_block []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 basalt []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 basalt []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 basalt []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 basalt []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 basalt []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 basalt []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 basalt []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 basalt []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 basalt []
fill ~1 ~1 ~6 ~1 ~6 ~6 basalt []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 basalt []
fill ~3 ~1 ~6 ~3 ~6 ~6 basalt []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 basalt []
fill ~5 ~1 ~6 ~5 ~6 ~6 basalt []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 basalt []
fill ~7 ~1 ~6 ~7 ~6 ~6 basalt []
fill ~-7 ~1 ~-4 ~-7 ~6 ~-4 basalt []
fill ~7 ~1 ~-4 ~7 ~6 ~-4 basalt []
fill ~-7 ~1 ~-2 ~-7 ~6 ~-2 basalt []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 basalt []
fill ~-7 ~1 ~0 ~-7 ~6 ~0 basalt []
fill ~7 ~1 ~0 ~7 ~6 ~0 basalt []
fill ~-7 ~1 ~2 ~-7 ~6 ~2 basalt []
fill ~7 ~1 ~2 ~7 ~6 ~2 basalt []
fill ~-7 ~1 ~4 ~-7 ~6 ~4 basalt []
fill ~7 ~1 ~4 ~7 ~6 ~4 basalt []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 nether_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 basalt []
setblock ~0 ~4 ~-8 gold_block []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 basalt []
setblock ~0 ~4 ~8 gold_block []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 basalt []
setblock ~-9 ~4 ~0 gold_block []
setblock ~-9 ~5 ~0 soul_lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 basalt []
setblock ~9 ~4 ~0 gold_block []
setblock ~9 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~-1 ~-9 ~5 ~-1 bone_block []
fill ~9 ~0 ~-1 ~9 ~5 ~-1 bone_block []
fill ~-9 ~6 ~-1 ~9 ~6 ~-1 bone_block []
setblock ~0 ~7 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 coal 19
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 24
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 4 wither_skeleton_skull 8
replaceitem block ~6 ~1 ~4 slot.container 5 bone 16
replaceitem block ~6 ~1 ~4 slot.container 9 obsidian 10
replaceitem block ~6 ~1 ~4 slot.container 10 crying_obsidian 9
replaceitem block ~6 ~1 ~4 slot.container 11 netherite_scrap 5
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~6 ~1 ~4 slot.container 13 soul_lantern 12
replaceitem block ~6 ~1 ~4 slot.container 14 bone_block 12
loot insert ~6 ~1 ~4 loot "rsf/soulsand_valley"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 11
replaceitem block ~-6 ~1 ~5 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 19
replaceitem block ~-6 ~1 ~5 slot.container 4 ghast_tear 10
replaceitem block ~-6 ~1 ~5 slot.container 5 blaze_rod 11
replaceitem block ~-6 ~1 ~5 slot.container 9 obsidian 8
replaceitem block ~-6 ~1 ~5 slot.container 10 crying_obsidian 7
replaceitem block ~-6 ~1 ~5 slot.container 11 netherite_scrap 3
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 5
replaceitem block ~-6 ~1 ~5 slot.container 13 soul_lantern 10
replaceitem block ~-6 ~1 ~5 slot.container 14 bone_block 17
loot insert ~-6 ~1 ~5 loot "rsf/soulsand_valley"
loot insert ~-6 ~1 ~5 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
