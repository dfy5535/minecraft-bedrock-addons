# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3840/4224 | 主题内编号: b128/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·U型紫禁朝堂大殿与地底金库 (warped_forest_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 warped_planks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 warped_planks [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 warped_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-3 ~-6 ~-4 shroomlight []
setblock ~3 ~-6 ~4 shroomlight []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 magma_cream 6
replaceitem block ~0 ~-4 ~4 slot.container 1 string 13
replaceitem block ~0 ~-4 ~4 slot.container 2 bone 12
replaceitem block ~0 ~-4 ~4 slot.container 3 gold_nugget 19
replaceitem block ~0 ~-4 ~4 slot.container 4 rotten_flesh 14
replaceitem block ~0 ~-4 ~4 slot.container 5 ender_pearl 17
replaceitem block ~0 ~-4 ~4 slot.container 9 shroomlight 9
replaceitem block ~0 ~-4 ~4 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-4 ~4 slot.container 11 saddle 1
replaceitem block ~0 ~-4 ~4 slot.container 12 gold_ingot 14
replaceitem block ~0 ~-4 ~4 slot.container 13 quartz 16
replaceitem block ~0 ~-4 ~4 slot.container 14 obsidian 11
loot insert ~0 ~-4 ~4 loot "rsf/warped_forest"
loot insert ~0 ~-4 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 warped_planks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 quartz_block []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-8 ~7 ~7 ~8 warped_slab []
fill ~-5 ~8 ~-6 ~5 ~9 ~6 polished_blackstone_bricks []
fill ~-6 ~10 ~-7 ~6 ~10 ~7 warped_slab []
setblock ~0 ~11 ~0 shroomlight []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 warped_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x10x5) ---
fill ~-7 ~0 ~10 ~-7 ~8 ~10 warped_stem []
setblock ~-7 ~9 ~10 crying_obsidian []
setblock ~-7 ~10 ~10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~6 blast_furnace []
setblock ~-4 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 ender_pearl 12
replaceitem block ~-5 ~1 ~6 slot.container 1 blaze_rod 7
replaceitem block ~-5 ~1 ~6 slot.container 2 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 3 magma_cream 9
replaceitem block ~-5 ~1 ~6 slot.container 4 string 16
replaceitem block ~-5 ~1 ~6 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 9 warped_stem 20
replaceitem block ~-5 ~1 ~6 slot.container 10 shroomlight 11
replaceitem block ~-5 ~1 ~6 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~-5 ~1 ~6 slot.container 12 saddle 1
replaceitem block ~-5 ~1 ~6 slot.container 13 gold_ingot 9
replaceitem block ~-5 ~1 ~6 slot.container 14 quartz 18
loot insert ~-5 ~1 ~6 loot "rsf/warped_forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ghast_tear 9
replaceitem block ~5 ~1 ~6 slot.container 1 magma_cream 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 19
replaceitem block ~5 ~1 ~6 slot.container 3 bone 10
replaceitem block ~5 ~1 ~6 slot.container 4 gold_nugget 17
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 warped_stem 18
replaceitem block ~5 ~1 ~6 slot.container 10 shroomlight 9
replaceitem block ~5 ~1 ~6 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~6 slot.container 12 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 14 quartz 16
loot insert ~5 ~1 ~6 loot "rsf/warped_forest"
loot insert ~5 ~1 ~6 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
