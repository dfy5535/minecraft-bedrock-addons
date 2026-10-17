# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3948/4224 | 主题内编号: b108/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·十字四相元素秘法殿 (soulsand_valley_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 bone_block [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 bone_block [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 nether_brick []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 soul_campfire []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 arrow 21
replaceitem block ~4 ~-3 ~0 slot.container 1 ender_pearl 6
replaceitem block ~4 ~-3 ~0 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~-3 ~0 slot.container 3 wither_skeleton_skull 5
replaceitem block ~4 ~-3 ~0 slot.container 4 bone 21
replaceitem block ~4 ~-3 ~0 slot.container 5 ghast_tear 12
replaceitem block ~4 ~-3 ~0 slot.container 9 bone_block 17
replaceitem block ~4 ~-3 ~0 slot.container 10 soul_sand 22
replaceitem block ~4 ~-3 ~0 slot.container 11 soul_soil 16
replaceitem block ~4 ~-3 ~0 slot.container 12 gold_ingot 9
replaceitem block ~4 ~-3 ~0 slot.container 13 quartz 18
replaceitem block ~4 ~-3 ~0 slot.container 14 obsidian 11
loot insert ~4 ~-3 ~0 loot "rsf/soulsand_valley"
loot insert ~4 ~-3 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 bone_block []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 bone_block []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 nether_brick_fence []
setblock ~6 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 polished_blackstone_bricks []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 nether_brick []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 bone_block []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~1 ~-8 ~8 ~1 bone_block []
fill ~8 ~0 ~1 ~8 ~8 ~1 bone_block []
fill ~-8 ~9 ~1 ~8 ~9 ~1 bone_block []
setblock ~0 ~10 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 crying_obsidian []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 24
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 5 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 9 quartz 16
replaceitem block ~-5 ~1 ~3 slot.container 10 obsidian 9
replaceitem block ~-5 ~1 ~3 slot.container 11 crying_obsidian 8
replaceitem block ~-5 ~1 ~3 slot.container 12 netherite_scrap 4
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 14 soul_lantern 11
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
