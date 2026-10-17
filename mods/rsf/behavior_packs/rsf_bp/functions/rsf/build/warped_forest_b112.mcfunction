# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3824/4224 | 主题内编号: b112/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·U型回廊学者修道院 (warped_forest_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 warped_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 warped_planks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 warped_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 warped_planks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 lava []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 ender_pearl 17
replaceitem block ~-3 ~-4 ~4 slot.container 1 blaze_rod 12
replaceitem block ~-3 ~-4 ~4 slot.container 2 ghast_tear 11
replaceitem block ~-3 ~-4 ~4 slot.container 3 magma_cream 6
replaceitem block ~-3 ~-4 ~4 slot.container 4 string 13
replaceitem block ~-3 ~-4 ~4 slot.container 5 bone 12
replaceitem block ~-3 ~-4 ~4 slot.container 9 gold_ingot 11
replaceitem block ~-3 ~-4 ~4 slot.container 10 quartz 20
replaceitem block ~-3 ~-4 ~4 slot.container 11 obsidian 15
replaceitem block ~-3 ~-4 ~4 slot.container 12 crying_obsidian 12
replaceitem block ~-3 ~-4 ~4 slot.container 13 netherite_scrap 1
replaceitem block ~-3 ~-4 ~4 slot.container 14 golden_apple 3
loot insert ~-3 ~-4 ~4 loot "rsf/warped_forest"
loot insert ~-3 ~-4 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 warped_planks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 quartz_block []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 warped_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 warped_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 warped_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 warped_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 warped_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 polished_blackstone_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 warped_stem []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 warped_stem []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 warped_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~-6 ~0 ~8 ~-6 ~7 ~8 warped_stem []
setblock ~-6 ~8 ~8 crying_obsidian []
setblock ~-6 ~9 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 soul_lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 crying_obsidian []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 12
replaceitem block ~-4 ~1 ~5 slot.container 1 blaze_rod 7
replaceitem block ~-4 ~1 ~5 slot.container 2 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 3 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 4 string 16
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~-4 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 12 quartz 21
replaceitem block ~-4 ~1 ~5 slot.container 13 obsidian 16
replaceitem block ~-4 ~1 ~5 slot.container 14 crying_obsidian 6
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 1 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 19
replaceitem block ~4 ~1 ~5 slot.container 3 bone 10
replaceitem block ~4 ~1 ~5 slot.container 4 gold_nugget 17
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 12 quartz 19
replaceitem block ~4 ~1 ~5 slot.container 13 obsidian 14
replaceitem block ~4 ~1 ~5 slot.container 14 crying_obsidian 11
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon zombie_pigman ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin ~0 ~-2 ~0
