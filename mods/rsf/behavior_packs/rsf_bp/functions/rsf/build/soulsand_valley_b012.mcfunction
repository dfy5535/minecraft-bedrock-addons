# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3852/4224 | 主题内编号: b012/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双子暗门地底宝库 (soulsand_valley_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~9 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~9 ~6 air [] replace fire
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 bone_block [] replace air
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 bone_block [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 nether_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 nether_brick []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 nether_brick []
fill ~-5 ~-6 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~5 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~2 slot.container 0 bone 21
replaceitem block ~5 ~-4 ~2 slot.container 1 ghast_tear 12
replaceitem block ~5 ~-4 ~2 slot.container 2 blaze_rod 13
replaceitem block ~5 ~-4 ~2 slot.container 3 coal 16
replaceitem block ~5 ~-4 ~2 slot.container 4 arrow 21
replaceitem block ~5 ~-4 ~2 slot.container 5 ender_pearl 6
replaceitem block ~5 ~-4 ~2 slot.container 9 bone_block 17
replaceitem block ~5 ~-4 ~2 slot.container 10 soul_sand 22
replaceitem block ~5 ~-4 ~2 slot.container 11 soul_soil 16
replaceitem block ~5 ~-4 ~2 slot.container 12 gold_ingot 9
replaceitem block ~5 ~-4 ~2 slot.container 13 quartz 18
replaceitem block ~5 ~-4 ~2 slot.container 14 obsidian 11
loot insert ~5 ~-4 ~2 loot "rsf/soulsand_valley"
loot insert ~5 ~-4 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 bone_block []
fill ~2 ~1 ~-4 ~7 ~7 ~4 bone_block []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 polished_blackstone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 nether_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 nether_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 nether_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 nether_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 nether_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 nether_brick_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-9 ~0 ~1 ~-9 ~7 ~1 bone_block []
fill ~9 ~0 ~1 ~9 ~7 ~1 bone_block []
fill ~-9 ~8 ~1 ~9 ~8 ~1 bone_block []
setblock ~0 ~9 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 arrow 24
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~-6 ~1 ~2 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-6 ~1 ~2 slot.container 9 crying_obsidian 8
replaceitem block ~-6 ~1 ~2 slot.container 10 netherite_scrap 4
replaceitem block ~-6 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~-6 ~1 ~2 slot.container 12 soul_lantern 11
replaceitem block ~-6 ~1 ~2 slot.container 13 bone_block 18
replaceitem block ~-6 ~1 ~2 slot.container 14 soul_sand 16
loot insert ~-6 ~1 ~2 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
