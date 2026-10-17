# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3738/4224 | 主题内编号: b026/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·尖顶信标引航高塔 (warped_forest_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~13 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~13 ~6 air [] replace fire
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 blackstone [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 blackstone [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 nether_brick []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-2 ~-3 ~-3 ~2 ~-1 ~3 quartz_block []
fill ~-1 ~-4 ~-2 ~1 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~1 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-2 ~2 slot.container 0 gold_nugget 19
replaceitem block ~1 ~-2 ~2 slot.container 1 rotten_flesh 14
replaceitem block ~1 ~-2 ~2 slot.container 2 ender_pearl 17
replaceitem block ~1 ~-2 ~2 slot.container 3 blaze_rod 12
replaceitem block ~1 ~-2 ~2 slot.container 4 ghast_tear 11
replaceitem block ~1 ~-2 ~2 slot.container 5 magma_cream 6
replaceitem block ~1 ~-2 ~2 slot.container 9 netherite_scrap 4
replaceitem block ~1 ~-2 ~2 slot.container 10 golden_apple 6
replaceitem block ~1 ~-2 ~2 slot.container 11 warped_stem 21
replaceitem block ~1 ~-2 ~2 slot.container 12 shroomlight 12
replaceitem block ~1 ~-2 ~2 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~1 ~-2 ~2 slot.container 14 saddle 1
loot insert ~1 ~-2 ~2 loot "rsf/warped_forest"
loot insert ~1 ~-2 ~2 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-3 ~1 ~-4 ~3 ~10 ~4 blackstone []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 air []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 air []
fill ~3 ~1 ~4 ~3 ~11 ~4 air []
fill ~-2 ~1 ~-3 ~-2 ~10 ~-3 warped_stem []
fill ~2 ~1 ~-3 ~2 ~10 ~-3 warped_stem []
fill ~-2 ~1 ~3 ~-2 ~10 ~3 warped_stem []
fill ~2 ~1 ~3 ~2 ~10 ~3 warped_stem []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 warped_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 blackstone []
fill ~0 ~16 ~0 ~0 ~18 ~0 diamond_block []
setblock ~0 ~19 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 polished_blackstone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 4x7x3) ---
fill ~-4 ~0 ~7 ~-4 ~6 ~7 warped_stem []
setblock ~-4 ~7 ~7 crying_obsidian []
setblock ~-4 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~3 slot.container 0 ghast_tear 6
replaceitem block ~-2 ~1 ~3 slot.container 1 magma_cream 9
replaceitem block ~-2 ~1 ~3 slot.container 2 string 16
replaceitem block ~-2 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-2 ~1 ~3 slot.container 4 gold_nugget 22
replaceitem block ~-2 ~1 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~-2 ~1 ~3 slot.container 9 gold_ingot 8
replaceitem block ~-2 ~1 ~3 slot.container 10 quartz 17
replaceitem block ~-2 ~1 ~3 slot.container 11 obsidian 12
replaceitem block ~-2 ~1 ~3 slot.container 12 crying_obsidian 9
replaceitem block ~-2 ~1 ~3 slot.container 13 netherite_scrap 5
replaceitem block ~-2 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~-2 ~1 ~3 loot "rsf/warped_forest"
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 string 19
replaceitem block ~2 ~1 ~3 slot.container 1 bone 10
replaceitem block ~2 ~1 ~3 slot.container 2 gold_nugget 17
replaceitem block ~2 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 4 ender_pearl 15
replaceitem block ~2 ~1 ~3 slot.container 5 blaze_rod 10
replaceitem block ~2 ~1 ~3 slot.container 9 gold_ingot 13
replaceitem block ~2 ~1 ~3 slot.container 10 quartz 22
replaceitem block ~2 ~1 ~3 slot.container 11 obsidian 10
replaceitem block ~2 ~1 ~3 slot.container 12 crying_obsidian 7
replaceitem block ~2 ~1 ~3 slot.container 13 netherite_scrap 3
replaceitem block ~2 ~1 ~3 slot.container 14 golden_apple 5
loot insert ~2 ~1 ~3 loot "rsf/warped_forest"
loot insert ~2 ~1 ~3 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
