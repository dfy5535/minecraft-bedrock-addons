# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3799/4224 | 主题内编号: b087/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·十字矿道枢纽补给室 (warped_forest_mine_cross_tunnel_hub)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~7 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~7 ~8 air [] replace fire
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 quartz_block [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 quartz_block [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 warped_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 quartz_block []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~4 slot.container 0 magma_cream 6
replaceitem block ~3 ~-4 ~4 slot.container 1 string 13
replaceitem block ~3 ~-4 ~4 slot.container 2 bone 12
replaceitem block ~3 ~-4 ~4 slot.container 3 gold_nugget 19
replaceitem block ~3 ~-4 ~4 slot.container 4 rotten_flesh 14
replaceitem block ~3 ~-4 ~4 slot.container 5 ender_pearl 17
replaceitem block ~3 ~-4 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~-4 ~4 slot.container 10 gold_ingot 13
replaceitem block ~3 ~-4 ~4 slot.container 11 quartz 22
replaceitem block ~3 ~-4 ~4 slot.container 12 obsidian 10
replaceitem block ~3 ~-4 ~4 slot.container 13 crying_obsidian 7
replaceitem block ~3 ~-4 ~4 slot.container 14 netherite_scrap 3
loot insert ~3 ~-4 ~4 loot "rsf/warped_forest"
loot insert ~3 ~-4 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~4 ~6 quartz_block []
fill ~-5 ~1 ~-2 ~5 ~4 ~2 quartz_block []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~3 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 warped_fence []
setblock ~5 ~2 ~0 warped_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~4 ~-6 ~5 ~4 ~6 warped_planks []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 warped_fence []
fill ~-4 ~5 ~-5 ~4 ~5 ~5 air []
setblock ~-5 ~5 ~-6 warped_stem []
setblock ~-5 ~6 ~-6 shroomlight []
setblock ~-5 ~5 ~6 warped_stem []
setblock ~-5 ~6 ~6 shroomlight []
setblock ~5 ~5 ~-6 warped_stem []
setblock ~5 ~6 ~-6 shroomlight []
setblock ~5 ~5 ~6 warped_stem []
setblock ~5 ~6 ~6 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 polished_blackstone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-6 ~0 ~7 ~-6 ~7 ~7 warped_stem []
setblock ~-6 ~8 ~7 crying_obsidian []
setblock ~-6 ~9 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 12
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 7
replaceitem block ~4 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 4 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 5 string 16
replaceitem block ~4 ~1 ~5 slot.container 9 crying_obsidian 11
replaceitem block ~4 ~1 ~5 slot.container 10 netherite_scrap 7
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 12 warped_stem 17
replaceitem block ~4 ~1 ~5 slot.container 13 shroomlight 8
replaceitem block ~4 ~1 ~5 slot.container 14 warped_fungus_on_a_stick 1
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
