# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3953/4224 | 主题内编号: b113/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·八角全采光生态温室 (soulsand_valley_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 nether_brick [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 nether_brick [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

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
fill ~-5 ~1 ~-4 ~5 ~7 ~4 nether_brick []
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

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 bone_block []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 basalt []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 basalt []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 nether_brick_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~-7 ~0 ~-2 ~-7 ~8 ~-2 bone_block []
fill ~7 ~0 ~-2 ~7 ~8 ~-2 bone_block []
fill ~-7 ~9 ~-2 ~7 ~9 ~-2 bone_block []
setblock ~0 ~10 ~-2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ghast_tear 7
replaceitem block ~4 ~1 ~2 slot.container 1 blaze_rod 8
replaceitem block ~4 ~1 ~2 slot.container 2 coal 19
replaceitem block ~4 ~1 ~2 slot.container 3 arrow 24
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~2 slot.container 9 soul_lantern 11
replaceitem block ~4 ~1 ~2 slot.container 10 bone_block 18
replaceitem block ~4 ~1 ~2 slot.container 11 soul_sand 16
replaceitem block ~4 ~1 ~2 slot.container 12 soul_soil 17
replaceitem block ~4 ~1 ~2 slot.container 13 gold_ingot 10
replaceitem block ~4 ~1 ~2 slot.container 14 quartz 19
loot insert ~4 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 coal 22
replaceitem block ~-4 ~1 ~3 slot.container 1 arrow 27
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 4 wither_skeleton_skull 3
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 19
replaceitem block ~-4 ~1 ~3 slot.container 9 soul_lantern 9
replaceitem block ~-4 ~1 ~3 slot.container 10 bone_block 16
replaceitem block ~-4 ~1 ~3 slot.container 11 soul_sand 21
replaceitem block ~-4 ~1 ~3 slot.container 12 soul_soil 22
replaceitem block ~-4 ~1 ~3 slot.container 13 gold_ingot 8
replaceitem block ~-4 ~1 ~3 slot.container 14 quartz 17
loot insert ~-4 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~3 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~-2 ~0
