# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3744/4224 | 主题内编号: b032/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·断顶残垣古哨塔 (warped_forest_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-7 ~5 ~11 ~7 air [] replace lava
fill ~-5 ~0 ~-7 ~5 ~11 ~7 air [] replace fire
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 warped_planks [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 warped_planks [] replace lava
fill ~-4 ~0 ~-6 ~4 ~0 ~6 warped_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 blackstone []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 polished_blackstone_bricks []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 polished_blackstone_bricks []
setblock ~0 ~-5 ~0 crying_obsidian []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ghast_tear 11
replaceitem block ~0 ~-2 ~-3 slot.container 1 magma_cream 6
replaceitem block ~0 ~-2 ~-3 slot.container 2 string 13
replaceitem block ~0 ~-2 ~-3 slot.container 3 bone 12
replaceitem block ~0 ~-2 ~-3 slot.container 4 gold_nugget 19
replaceitem block ~0 ~-2 ~-3 slot.container 5 rotten_flesh 14
replaceitem block ~0 ~-2 ~-3 slot.container 9 netherite_scrap 3
replaceitem block ~0 ~-2 ~-3 slot.container 10 golden_apple 5
replaceitem block ~0 ~-2 ~-3 slot.container 11 warped_stem 20
replaceitem block ~0 ~-2 ~-3 slot.container 12 shroomlight 11
replaceitem block ~0 ~-2 ~-3 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-2 ~-3 slot.container 14 saddle 1
loot insert ~0 ~-2 ~-3 loot "rsf/warped_forest"
loot insert ~0 ~-2 ~-3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~8 ~5 warped_planks []
fill ~-2 ~1 ~-4 ~2 ~7 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~8 ~-5 warped_stem []
fill ~-3 ~1 ~5 ~-3 ~8 ~5 warped_stem []
fill ~3 ~1 ~-5 ~3 ~8 ~-5 warped_stem []
fill ~3 ~1 ~5 ~3 ~8 ~5 warped_stem []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 warped_fence []
setblock ~3 ~2 ~0 warped_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-7 ~-5 ~6 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-7 ~5 ~6 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~-4 ~7 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-6 ~4 ~7 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-6 ~3 ~7 ~6 warped_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 warped_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~7 ~-2 warped_stem []
fill ~-4 ~0 ~2 ~-4 ~7 ~2 warped_stem []
fill ~4 ~0 ~-2 ~4 ~7 ~-2 warped_stem []
fill ~4 ~0 ~2 ~4 ~7 ~2 warped_stem []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 4x8x4) ---
fill ~-4 ~0 ~8 ~-4 ~7 ~8 warped_stem []
setblock ~-4 ~8 ~8 crying_obsidian []
setblock ~-4 ~9 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-2 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 ender_pearl 12
replaceitem block ~-2 ~1 ~4 slot.container 1 blaze_rod 7
replaceitem block ~-2 ~1 ~4 slot.container 2 ghast_tear 6
replaceitem block ~-2 ~1 ~4 slot.container 3 magma_cream 9
replaceitem block ~-2 ~1 ~4 slot.container 4 string 16
replaceitem block ~-2 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-2 ~1 ~4 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~-2 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~-2 ~1 ~4 slot.container 11 gold_ingot 9
replaceitem block ~-2 ~1 ~4 slot.container 12 quartz 18
replaceitem block ~-2 ~1 ~4 slot.container 13 obsidian 13
replaceitem block ~-2 ~1 ~4 slot.container 14 crying_obsidian 10
loot insert ~-2 ~1 ~4 loot "rsf/warped_forest"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 ghast_tear 9
replaceitem block ~2 ~1 ~4 slot.container 1 magma_cream 12
replaceitem block ~2 ~1 ~4 slot.container 2 string 19
replaceitem block ~2 ~1 ~4 slot.container 3 bone 10
replaceitem block ~2 ~1 ~4 slot.container 4 gold_nugget 17
replaceitem block ~2 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~2 ~1 ~4 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~2 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~2 ~1 ~4 slot.container 11 gold_ingot 14
replaceitem block ~2 ~1 ~4 slot.container 12 quartz 16
replaceitem block ~2 ~1 ~4 slot.container 13 obsidian 11
replaceitem block ~2 ~1 ~4 slot.container 14 crying_obsidian 8
loot insert ~2 ~1 ~4 loot "rsf/warped_forest"
loot insert ~2 ~1 ~4 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
