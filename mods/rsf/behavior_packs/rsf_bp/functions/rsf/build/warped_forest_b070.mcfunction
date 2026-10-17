# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3782/4224 | 主题内编号: b070/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·风化坍塌阶梯祭台 (warped_forest_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 quartz_block []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 ghast_tear 11
replaceitem block ~3 ~-2 ~4 slot.container 1 magma_cream 6
replaceitem block ~3 ~-2 ~4 slot.container 2 string 13
replaceitem block ~3 ~-2 ~4 slot.container 3 bone 12
replaceitem block ~3 ~-2 ~4 slot.container 4 gold_nugget 19
replaceitem block ~3 ~-2 ~4 slot.container 5 rotten_flesh 14
replaceitem block ~3 ~-2 ~4 slot.container 9 warped_stem 21
replaceitem block ~3 ~-2 ~4 slot.container 10 shroomlight 12
replaceitem block ~3 ~-2 ~4 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~3 ~-2 ~4 slot.container 12 saddle 1
replaceitem block ~3 ~-2 ~4 slot.container 13 gold_ingot 10
replaceitem block ~3 ~-2 ~4 slot.container 14 quartz 19
loot insert ~3 ~-2 ~4 loot "rsf/warped_forest"
loot insert ~3 ~-2 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 blackstone []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 warped_planks []
fill ~-3 ~5 ~-4 ~3 ~5 ~4 quartz_block []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 warped_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 warped_planks []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 glass []
fill ~-2 ~7 ~-3 ~2 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 warped_stem []
setblock ~0 ~4 ~-8 gold_block []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 warped_stem []
setblock ~0 ~4 ~8 gold_block []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 warped_stem []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 warped_stem []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-6 ~0 ~8 ~-6 ~5 ~8 warped_stem []
setblock ~-6 ~6 ~8 crying_obsidian []
setblock ~-6 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~5 smoker []
setblock ~4 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gold_nugget 22
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 12
replaceitem block ~-4 ~1 ~5 slot.container 3 blaze_rod 7
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 9 obsidian 12
replaceitem block ~-4 ~1 ~5 slot.container 10 crying_obsidian 9
replaceitem block ~-4 ~1 ~5 slot.container 11 netherite_scrap 5
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 7
replaceitem block ~-4 ~1 ~5 slot.container 13 warped_stem 22
replaceitem block ~-4 ~1 ~5 slot.container 14 shroomlight 6
loot insert ~-4 ~1 ~5 loot "rsf/warped_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 15
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 10
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 19
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 obsidian 10
replaceitem block ~4 ~1 ~5 slot.container 10 crying_obsidian 7
replaceitem block ~4 ~1 ~5 slot.container 11 netherite_scrap 3
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 13 warped_stem 20
replaceitem block ~4 ~1 ~5 slot.container 14 shroomlight 11
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
loot insert ~4 ~1 ~5 loot "chests/bastion_other"
summon zombie_pigman ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin ~0 ~-2 ~0
