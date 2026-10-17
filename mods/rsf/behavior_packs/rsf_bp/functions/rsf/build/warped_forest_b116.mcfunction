# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3828/4224 | 主题内编号: b116/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·U型围合秘密花园驿站 (warped_forest_conservatory_u_garden)
# 建筑构造: 主体[u_courtyard] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 2格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace fire
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 warped_planks [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 warped_planks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 warped_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 warped_planks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 string 13
replaceitem block ~4 ~-3 ~5 slot.container 1 bone 12
replaceitem block ~4 ~-3 ~5 slot.container 2 gold_nugget 19
replaceitem block ~4 ~-3 ~5 slot.container 3 rotten_flesh 14
replaceitem block ~4 ~-3 ~5 slot.container 4 ender_pearl 17
replaceitem block ~4 ~-3 ~5 slot.container 5 blaze_rod 12
replaceitem block ~4 ~-3 ~5 slot.container 9 obsidian 13
replaceitem block ~4 ~-3 ~5 slot.container 10 crying_obsidian 10
replaceitem block ~4 ~-3 ~5 slot.container 11 netherite_scrap 6
replaceitem block ~4 ~-3 ~5 slot.container 12 golden_apple 8
replaceitem block ~4 ~-3 ~5 slot.container 13 warped_stem 16
replaceitem block ~4 ~-3 ~5 slot.container 14 shroomlight 7
loot insert ~4 ~-3 ~5 loot "rsf/warped_forest"
loot insert ~4 ~-3 ~5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 warped_planks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 quartz_block []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 polished_blackstone_bricks []
fill ~-4 ~6 ~-5 ~4 ~7 ~5 glass []
fill ~-3 ~6 ~-4 ~3 ~6 ~4 air []
setblock ~0 ~7 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 polished_blackstone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x9x3) ---
fill ~-6 ~0 ~9 ~-6 ~6 ~9 warped_stem []
setblock ~-6 ~7 ~9 crying_obsidian []
setblock ~-6 ~8 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 16
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 2 gold_nugget 22
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 12
replaceitem block ~-4 ~1 ~5 slot.container 5 blaze_rod 7
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 10 quartz 16
replaceitem block ~-4 ~1 ~5 slot.container 11 obsidian 11
replaceitem block ~-4 ~1 ~5 slot.container 12 crying_obsidian 8
replaceitem block ~-4 ~1 ~5 slot.container 13 netherite_scrap 4
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 6
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 17
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 15
replaceitem block ~4 ~1 ~5 slot.container 3 blaze_rod 10
replaceitem block ~4 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 5 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 10 quartz 21
replaceitem block ~4 ~1 ~5 slot.container 11 obsidian 16
replaceitem block ~4 ~1 ~5 slot.container 12 crying_obsidian 6
replaceitem block ~4 ~1 ~5 slot.container 13 netherite_scrap 2
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 4
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
