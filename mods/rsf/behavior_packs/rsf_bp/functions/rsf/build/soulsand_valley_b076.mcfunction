# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3916/4224 | 主题内编号: b076/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·阶梯高台图腾战阵 (soulsand_valley_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 bone_block [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 bone_block [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 bone_block []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 gold_block []
setblock ~-4 ~-5 ~-3 soul_campfire []
setblock ~4 ~-5 ~3 soul_campfire []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 arrow 21
replaceitem block ~0 ~-3 ~3 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~3 slot.container 2 rotten_flesh 13
replaceitem block ~0 ~-3 ~3 slot.container 3 wither_skeleton_skull 5
replaceitem block ~0 ~-3 ~3 slot.container 4 bone 21
replaceitem block ~0 ~-3 ~3 slot.container 5 ghast_tear 12
replaceitem block ~0 ~-3 ~3 slot.container 9 bone_block 12
replaceitem block ~0 ~-3 ~3 slot.container 10 soul_sand 17
replaceitem block ~0 ~-3 ~3 slot.container 11 soul_soil 18
replaceitem block ~0 ~-3 ~3 slot.container 12 gold_ingot 11
replaceitem block ~0 ~-3 ~3 slot.container 13 quartz 20
replaceitem block ~0 ~-3 ~3 slot.container 14 obsidian 13
loot insert ~0 ~-3 ~3 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 bone_block []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 polished_blackstone_bricks []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 nether_brick []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 nether_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 polished_blackstone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 bone_block []
fill ~0 ~14 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 blackstone []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~-1 ~-8 ~6 ~-1 bone_block []
fill ~8 ~0 ~-1 ~8 ~6 ~-1 bone_block []
fill ~-8 ~7 ~-1 ~8 ~7 ~-1 bone_block []
setblock ~0 ~8 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 24
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 5 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 10 soul_lantern 10
replaceitem block ~-5 ~1 ~3 slot.container 11 bone_block 17
replaceitem block ~-5 ~1 ~3 slot.container 12 soul_sand 22
replaceitem block ~-5 ~1 ~3 slot.container 13 soul_soil 16
replaceitem block ~-5 ~1 ~3 slot.container 14 gold_ingot 9
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
