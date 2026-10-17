# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3747/4224 | 主题内编号: b035/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·巨石垒砌古战石冢 (warped_forest_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace fire
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 quartz_block [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 quartz_block [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 warped_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 quartz_block []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 shroomlight []
setblock ~2 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 blaze_rod 12
replaceitem block ~0 ~-4 ~3 slot.container 1 ghast_tear 11
replaceitem block ~0 ~-4 ~3 slot.container 2 magma_cream 6
replaceitem block ~0 ~-4 ~3 slot.container 3 string 13
replaceitem block ~0 ~-4 ~3 slot.container 4 bone 12
replaceitem block ~0 ~-4 ~3 slot.container 5 gold_nugget 19
replaceitem block ~0 ~-4 ~3 slot.container 9 saddle 1
replaceitem block ~0 ~-4 ~3 slot.container 10 gold_ingot 10
replaceitem block ~0 ~-4 ~3 slot.container 11 quartz 19
replaceitem block ~0 ~-4 ~3 slot.container 12 obsidian 14
replaceitem block ~0 ~-4 ~3 slot.container 13 crying_obsidian 11
replaceitem block ~0 ~-4 ~3 slot.container 14 netherite_scrap 7
loot insert ~0 ~-4 ~3 loot "rsf/warped_forest"
loot insert ~0 ~-4 ~3 loot "chests/bastion_other"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 blaze_rod 10
replaceitem block ~0 ~-4 ~-3 slot.container 1 ghast_tear 9
replaceitem block ~0 ~-4 ~-3 slot.container 2 magma_cream 12
replaceitem block ~0 ~-4 ~-3 slot.container 3 string 19
replaceitem block ~0 ~-4 ~-3 slot.container 4 bone 10
replaceitem block ~0 ~-4 ~-3 slot.container 5 gold_nugget 17
replaceitem block ~0 ~-4 ~-3 slot.container 9 saddle 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 gold_ingot 9
replaceitem block ~0 ~-4 ~-3 slot.container 11 quartz 18
replaceitem block ~0 ~-4 ~-3 slot.container 12 obsidian 13
replaceitem block ~0 ~-4 ~-3 slot.container 13 crying_obsidian 10
replaceitem block ~0 ~-4 ~-3 slot.container 14 netherite_scrap 6
loot insert ~0 ~-4 ~-3 loot "rsf/warped_forest"
loot insert ~0 ~-4 ~-3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 quartz_block []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 air []
fill ~4 ~1 ~5 ~4 ~7 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 warped_stem []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 warped_stem []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 warped_stem []
fill ~3 ~1 ~4 ~3 ~6 ~4 warped_stem []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 warped_planks []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 polished_blackstone_wall []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 stripped_warped_stem []
setblock ~-5 ~8 ~-6 shroomlight []
setblock ~-5 ~7 ~6 stripped_warped_stem []
setblock ~-5 ~8 ~6 shroomlight []
setblock ~5 ~7 ~-6 stripped_warped_stem []
setblock ~5 ~8 ~-6 shroomlight []
setblock ~5 ~7 ~6 stripped_warped_stem []
setblock ~5 ~8 ~6 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 warped_stem []
setblock ~0 ~4 ~-7 shroomlight []
setblock ~0 ~5 ~-7 shroomlight []
fill ~0 ~0 ~7 ~0 ~3 ~7 warped_stem []
setblock ~0 ~4 ~7 shroomlight []
setblock ~0 ~5 ~7 shroomlight []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 warped_stem []
setblock ~-6 ~4 ~0 shroomlight []
setblock ~-6 ~5 ~0 shroomlight []
fill ~6 ~0 ~0 ~6 ~3 ~0 warped_stem []
setblock ~6 ~4 ~0 shroomlight []
setblock ~6 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x8x2) ---
fill ~-5 ~0 ~8 ~-5 ~5 ~8 warped_stem []
setblock ~-5 ~6 ~8 crying_obsidian []
setblock ~-5 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~-2 ~1 ~4 anvil []
setblock ~2 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 magma_cream 9
replaceitem block ~3 ~1 ~4 slot.container 1 string 16
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 12
replaceitem block ~3 ~1 ~4 slot.container 9 shroomlight 8
replaceitem block ~3 ~1 ~4 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~3 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 13
replaceitem block ~3 ~1 ~4 slot.container 13 quartz 22
replaceitem block ~3 ~1 ~4 slot.container 14 obsidian 10
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
summon skeleton ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
