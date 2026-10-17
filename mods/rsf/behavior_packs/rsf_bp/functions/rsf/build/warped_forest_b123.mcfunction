# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3835/4224 | 主题内编号: b123/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·四角塔楼领主城堡复合体 (warped_forest_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 quartz_block [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 quartz_block [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 warped_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 shroomlight []
setblock ~4 ~-6 ~-5 shroomlight []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 bone 12
replaceitem block ~4 ~-4 ~5 slot.container 1 gold_nugget 19
replaceitem block ~4 ~-4 ~5 slot.container 2 rotten_flesh 14
replaceitem block ~4 ~-4 ~5 slot.container 3 ender_pearl 17
replaceitem block ~4 ~-4 ~5 slot.container 4 blaze_rod 12
replaceitem block ~4 ~-4 ~5 slot.container 5 ghast_tear 11
replaceitem block ~4 ~-4 ~5 slot.container 9 crying_obsidian 7
replaceitem block ~4 ~-4 ~5 slot.container 10 netherite_scrap 3
replaceitem block ~4 ~-4 ~5 slot.container 11 golden_apple 5
replaceitem block ~4 ~-4 ~5 slot.container 12 warped_stem 20
replaceitem block ~4 ~-4 ~5 slot.container 13 shroomlight 11
replaceitem block ~4 ~-4 ~5 slot.container 14 warped_fungus_on_a_stick 1
loot insert ~4 ~-4 ~5 loot "rsf/warped_forest"
loot insert ~4 ~-4 ~5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 quartz_block []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 warped_planks []
setblock ~-6 ~10 ~-7 shroomlight []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 warped_planks []
setblock ~-6 ~10 ~6 shroomlight []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 warped_planks []
setblock ~5 ~10 ~-7 shroomlight []
fill ~5 ~1 ~6 ~6 ~9 ~7 warped_planks []
setblock ~5 ~10 ~6 shroomlight []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 warped_planks []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 warped_fence []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 warped_stem []
setblock ~-6 ~9 ~-7 shroomlight []
setblock ~-6 ~8 ~7 warped_stem []
setblock ~-6 ~9 ~7 shroomlight []
setblock ~6 ~8 ~-7 warped_stem []
setblock ~6 ~9 ~-7 shroomlight []
setblock ~6 ~8 ~7 warped_stem []
setblock ~6 ~9 ~7 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 polished_blackstone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~8 ~-7 ~8 ~8 warped_stem []
setblock ~-7 ~9 ~8 crying_obsidian []
setblock ~-7 ~10 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 magma_cream 9
replaceitem block ~5 ~1 ~6 slot.container 1 string 16
replaceitem block ~5 ~1 ~6 slot.container 2 bone 15
replaceitem block ~5 ~1 ~6 slot.container 3 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 12
replaceitem block ~5 ~1 ~6 slot.container 9 quartz 22
replaceitem block ~5 ~1 ~6 slot.container 10 obsidian 10
replaceitem block ~5 ~1 ~6 slot.container 11 crying_obsidian 7
replaceitem block ~5 ~1 ~6 slot.container 12 netherite_scrap 3
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 14 warped_stem 20
loot insert ~5 ~1 ~6 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
