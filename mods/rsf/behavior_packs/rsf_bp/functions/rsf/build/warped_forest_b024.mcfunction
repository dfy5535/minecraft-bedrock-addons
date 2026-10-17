# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3736/4224 | 主题内编号: b024/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·半地下掩体储藏室 (warped_forest_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~7 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~7 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 warped_planks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 warped_planks [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 warped_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 warped_planks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 string 13
replaceitem block ~2 ~-3 ~3 slot.container 1 bone 12
replaceitem block ~2 ~-3 ~3 slot.container 2 gold_nugget 19
replaceitem block ~2 ~-3 ~3 slot.container 3 rotten_flesh 14
replaceitem block ~2 ~-3 ~3 slot.container 4 ender_pearl 17
replaceitem block ~2 ~-3 ~3 slot.container 5 blaze_rod 12
replaceitem block ~2 ~-3 ~3 slot.container 9 gold_ingot 12
replaceitem block ~2 ~-3 ~3 slot.container 10 quartz 21
replaceitem block ~2 ~-3 ~3 slot.container 11 obsidian 16
replaceitem block ~2 ~-3 ~3 slot.container 12 crying_obsidian 6
replaceitem block ~2 ~-3 ~3 slot.container 13 netherite_scrap 2
replaceitem block ~2 ~-3 ~3 slot.container 14 golden_apple 4
loot insert ~2 ~-3 ~3 loot "rsf/warped_forest"
loot insert ~2 ~-3 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 warped_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~4 ~-5 ~4 ~4 ~5 polished_blackstone_bricks []
fill ~-4 ~5 ~-5 ~4 ~5 ~5 warped_fence []
fill ~-3 ~5 ~-4 ~3 ~5 ~4 air []
setblock ~-4 ~5 ~-5 warped_stem []
setblock ~-4 ~6 ~-5 soul_lantern []
setblock ~-4 ~5 ~5 warped_stem []
setblock ~-4 ~6 ~5 soul_lantern []
setblock ~4 ~5 ~-5 warped_stem []
setblock ~4 ~6 ~-5 soul_lantern []
setblock ~4 ~5 ~5 warped_stem []
setblock ~4 ~6 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 quartz_block []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x6x6) ---
fill ~-5 ~0 ~6 ~-5 ~9 ~6 warped_stem []
setblock ~-5 ~10 ~6 crying_obsidian []
setblock ~-5 ~11 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ender_pearl 12
replaceitem block ~-3 ~1 ~4 slot.container 1 blaze_rod 7
replaceitem block ~-3 ~1 ~4 slot.container 2 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 3 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 4 string 16
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 9 netherite_scrap 6
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~-3 ~1 ~4 slot.container 11 warped_stem 16
replaceitem block ~-3 ~1 ~4 slot.container 12 shroomlight 7
replaceitem block ~-3 ~1 ~4 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~-3 ~1 ~4 slot.container 14 saddle 1
loot insert ~-3 ~1 ~4 loot "rsf/warped_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 1 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 2 string 19
replaceitem block ~3 ~1 ~4 slot.container 3 bone 10
replaceitem block ~3 ~1 ~4 slot.container 4 gold_nugget 17
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 netherite_scrap 4
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 11 warped_stem 21
replaceitem block ~3 ~1 ~4 slot.container 12 shroomlight 12
replaceitem block ~3 ~1 ~4 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~3 ~1 ~4 slot.container 14 saddle 1
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
loot insert ~3 ~1 ~4 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
