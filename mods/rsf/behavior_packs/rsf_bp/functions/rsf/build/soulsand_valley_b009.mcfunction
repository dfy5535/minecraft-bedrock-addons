# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3849/4224 | 主题内编号: b009/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·铁栏双室地下死牢 (soulsand_valley_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~8 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~8 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 nether_brick [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 soul_lantern []
setblock ~4 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~3 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-3 ~3 slot.container 2 wither_skeleton_skull 5
replaceitem block ~0 ~-3 ~3 slot.container 3 bone 21
replaceitem block ~0 ~-3 ~3 slot.container 4 ghast_tear 12
replaceitem block ~0 ~-3 ~3 slot.container 5 blaze_rod 13
replaceitem block ~0 ~-3 ~3 slot.container 9 obsidian 10
replaceitem block ~0 ~-3 ~3 slot.container 10 crying_obsidian 9
replaceitem block ~0 ~-3 ~3 slot.container 11 netherite_scrap 5
replaceitem block ~0 ~-3 ~3 slot.container 12 golden_apple 7
replaceitem block ~0 ~-3 ~3 slot.container 13 soul_lantern 12
replaceitem block ~0 ~-3 ~3 slot.container 14 bone_block 12
loot insert ~0 ~-3 ~3 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~3 loot "chests/nether_bridge"
setblock ~0 ~-3 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-3 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-3 ~-3 slot.container 1 rotten_flesh 11
replaceitem block ~0 ~-3 ~-3 slot.container 2 wither_skeleton_skull 3
replaceitem block ~0 ~-3 ~-3 slot.container 3 bone 19
replaceitem block ~0 ~-3 ~-3 slot.container 4 ghast_tear 10
replaceitem block ~0 ~-3 ~-3 slot.container 5 blaze_rod 11
replaceitem block ~0 ~-3 ~-3 slot.container 9 obsidian 9
replaceitem block ~0 ~-3 ~-3 slot.container 10 crying_obsidian 8
replaceitem block ~0 ~-3 ~-3 slot.container 11 netherite_scrap 4
replaceitem block ~0 ~-3 ~-3 slot.container 12 golden_apple 6
replaceitem block ~0 ~-3 ~-3 slot.container 13 soul_lantern 11
replaceitem block ~0 ~-3 ~-3 slot.container 14 bone_block 18
loot insert ~0 ~-3 ~-3 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~-3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 nether_brick []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 bone_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 bone_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 bone_block []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 nether_brick_fence []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 air []
setblock ~-6 ~6 ~-5 basalt []
setblock ~-6 ~7 ~-5 soul_lantern []
setblock ~-6 ~6 ~5 basalt []
setblock ~-6 ~7 ~5 soul_lantern []
setblock ~6 ~6 ~-5 basalt []
setblock ~6 ~7 ~-5 soul_lantern []
setblock ~6 ~6 ~5 basalt []
setblock ~6 ~7 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 bone_block []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 basalt []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 basalt []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 nether_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~2 ~-8 ~4 ~2 bone_block []
fill ~8 ~0 ~2 ~8 ~4 ~2 bone_block []
fill ~-8 ~5 ~2 ~8 ~5 ~2 bone_block []
setblock ~0 ~6 ~2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 gilded_blackstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 1 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 2 coal 19
replaceitem block ~5 ~1 ~3 slot.container 3 arrow 24
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 9 netherite_scrap 7
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 11 soul_lantern 7
replaceitem block ~5 ~1 ~3 slot.container 12 bone_block 14
replaceitem block ~5 ~1 ~3 slot.container 13 soul_sand 19
replaceitem block ~5 ~1 ~3 slot.container 14 soul_soil 20
loot insert ~5 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 coal 22
replaceitem block ~-5 ~1 ~4 slot.container 1 arrow 27
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 4 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 19
replaceitem block ~-5 ~1 ~4 slot.container 9 netherite_scrap 5
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 11 soul_lantern 12
replaceitem block ~-5 ~1 ~4 slot.container 12 bone_block 12
replaceitem block ~-5 ~1 ~4 slot.container 13 soul_sand 17
replaceitem block ~-5 ~1 ~4 slot.container 14 soul_soil 18
loot insert ~-5 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~4 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
