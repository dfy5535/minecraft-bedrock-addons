# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3731/4224 | 主题内编号: b019/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·琉璃穹顶圣物秘室 (warped_forest_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[ruined_skylight] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 warped_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 warped_planks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 magma_cream 6
replaceitem block ~2 ~-3 ~0 slot.container 1 string 13
replaceitem block ~2 ~-3 ~0 slot.container 2 bone 12
replaceitem block ~2 ~-3 ~0 slot.container 3 gold_nugget 19
replaceitem block ~2 ~-3 ~0 slot.container 4 rotten_flesh 14
replaceitem block ~2 ~-3 ~0 slot.container 5 ender_pearl 17
replaceitem block ~2 ~-3 ~0 slot.container 9 golden_apple 7
replaceitem block ~2 ~-3 ~0 slot.container 10 warped_stem 22
replaceitem block ~2 ~-3 ~0 slot.container 11 shroomlight 6
replaceitem block ~2 ~-3 ~0 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~2 ~-3 ~0 slot.container 13 saddle 1
replaceitem block ~2 ~-3 ~0 slot.container 14 gold_ingot 11
loot insert ~2 ~-3 ~0 loot "rsf/warped_forest"
loot insert ~2 ~-3 ~0 loot "chests/bastion_other"

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

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-7 ~6 ~4 ~7 blackstone_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 warped_stem []
setblock ~-6 ~4 ~-7 shroomlight []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 warped_stem []
setblock ~-6 ~4 ~7 shroomlight []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 warped_stem []
setblock ~6 ~4 ~-7 shroomlight []
fill ~6 ~0 ~7 ~6 ~3 ~7 warped_stem []
setblock ~6 ~4 ~7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x7x6) ---
fill ~-5 ~0 ~7 ~-5 ~9 ~7 warped_stem []
setblock ~-5 ~10 ~7 crying_obsidian []
setblock ~-5 ~11 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 magma_cream 9
replaceitem block ~3 ~1 ~4 slot.container 1 string 16
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 12
replaceitem block ~3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 11 quartz 18
replaceitem block ~3 ~1 ~4 slot.container 12 obsidian 13
replaceitem block ~3 ~1 ~4 slot.container 13 crying_obsidian 10
replaceitem block ~3 ~1 ~4 slot.container 14 netherite_scrap 6
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
summon piglin ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon strider ~1 ~1 ~1
summon zombie_pigman ~0 ~-3 ~0
