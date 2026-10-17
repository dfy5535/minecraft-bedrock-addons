# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3741/4224 | 主题内编号: b029/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·奥术星象琉璃塔 (warped_forest_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 warped_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 blackstone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 crying_obsidian []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 bone 12
replaceitem block ~2 ~-3 ~0 slot.container 1 gold_nugget 19
replaceitem block ~2 ~-3 ~0 slot.container 2 rotten_flesh 14
replaceitem block ~2 ~-3 ~0 slot.container 3 ender_pearl 17
replaceitem block ~2 ~-3 ~0 slot.container 4 blaze_rod 12
replaceitem block ~2 ~-3 ~0 slot.container 5 ghast_tear 11
replaceitem block ~2 ~-3 ~0 slot.container 9 golden_apple 3
replaceitem block ~2 ~-3 ~0 slot.container 10 warped_stem 18
replaceitem block ~2 ~-3 ~0 slot.container 11 shroomlight 9
replaceitem block ~2 ~-3 ~0 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~2 ~-3 ~0 slot.container 13 saddle 1
replaceitem block ~2 ~-3 ~0 slot.container 14 gold_ingot 14
loot insert ~2 ~-3 ~0 loot "rsf/warped_forest"
loot insert ~2 ~-3 ~0 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 polished_blackstone_bricks []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 blackstone_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~9 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 warped_planks []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 glass []
fill ~-2 ~10 ~-3 ~2 ~10 ~3 air []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x8x6) ---
fill ~-5 ~0 ~8 ~-5 ~9 ~8 warped_stem []
setblock ~-5 ~10 ~8 crying_obsidian []
setblock ~-5 ~11 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 15
replaceitem block ~3 ~1 ~4 slot.container 1 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 12
replaceitem block ~3 ~1 ~4 slot.container 4 blaze_rod 7
replaceitem block ~3 ~1 ~4 slot.container 5 ghast_tear 6
replaceitem block ~3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 11 quartz 21
replaceitem block ~3 ~1 ~4 slot.container 12 obsidian 16
replaceitem block ~3 ~1 ~4 slot.container 13 crying_obsidian 6
replaceitem block ~3 ~1 ~4 slot.container 14 netherite_scrap 2
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
summon skeleton ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
