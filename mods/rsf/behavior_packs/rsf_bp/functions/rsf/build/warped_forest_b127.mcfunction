# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3839/4224 | 主题内编号: b127/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·万神殿巨型穹顶与试炼宫 (warped_forest_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
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

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 quartz_block []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-4 ~-6 ~-5 shroomlight []
setblock ~4 ~-6 ~5 shroomlight []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 14
replaceitem block ~0 ~-4 ~5 slot.container 1 ender_pearl 17
replaceitem block ~0 ~-4 ~5 slot.container 2 blaze_rod 12
replaceitem block ~0 ~-4 ~5 slot.container 3 ghast_tear 11
replaceitem block ~0 ~-4 ~5 slot.container 4 magma_cream 6
replaceitem block ~0 ~-4 ~5 slot.container 5 string 13
replaceitem block ~0 ~-4 ~5 slot.container 9 golden_apple 2
replaceitem block ~0 ~-4 ~5 slot.container 10 warped_stem 17
replaceitem block ~0 ~-4 ~5 slot.container 11 shroomlight 8
replaceitem block ~0 ~-4 ~5 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-4 ~5 slot.container 13 saddle 1
replaceitem block ~0 ~-4 ~5 slot.container 14 gold_ingot 13
loot insert ~0 ~-4 ~5 loot "rsf/warped_forest"
loot insert ~0 ~-4 ~5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 warped_planks []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 warped_stem []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 warped_stem []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 warped_stem []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 warped_stem []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 warped_stem []
fill ~-2 ~1 ~7 ~-2 ~6 ~7 warped_stem []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 warped_stem []
fill ~0 ~1 ~7 ~0 ~6 ~7 warped_stem []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 warped_stem []
fill ~2 ~1 ~7 ~2 ~6 ~7 warped_stem []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 warped_stem []
fill ~4 ~1 ~7 ~4 ~6 ~7 warped_stem []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 warped_stem []
fill ~6 ~1 ~7 ~6 ~6 ~7 warped_stem []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 warped_stem []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 warped_stem []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 warped_stem []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 warped_stem []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 warped_stem []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 warped_stem []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 warped_stem []
fill ~6 ~1 ~1 ~6 ~6 ~1 warped_stem []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 warped_stem []
fill ~6 ~1 ~3 ~6 ~6 ~3 warped_stem []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 warped_stem []
fill ~6 ~1 ~5 ~6 ~6 ~5 warped_stem []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 warped_planks []
fill ~-5 ~8 ~-6 ~5 ~9 ~6 glass []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~-7 ~0 ~9 ~-7 ~7 ~9 warped_stem []
setblock ~-7 ~8 ~9 crying_obsidian []
setblock ~-7 ~9 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~1 ~6 slot.container 1 ender_pearl 12
replaceitem block ~5 ~1 ~6 slot.container 2 blaze_rod 7
replaceitem block ~5 ~1 ~6 slot.container 3 ghast_tear 6
replaceitem block ~5 ~1 ~6 slot.container 4 magma_cream 9
replaceitem block ~5 ~1 ~6 slot.container 5 string 16
replaceitem block ~5 ~1 ~6 slot.container 9 crying_obsidian 9
replaceitem block ~5 ~1 ~6 slot.container 10 netherite_scrap 5
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 7
replaceitem block ~5 ~1 ~6 slot.container 12 warped_stem 22
replaceitem block ~5 ~1 ~6 slot.container 13 shroomlight 6
replaceitem block ~5 ~1 ~6 slot.container 14 warped_fungus_on_a_stick 1
loot insert ~5 ~1 ~6 loot "rsf/warped_forest"
summon piglin ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon strider ~1 ~1 ~1
summon zombie_pigman ~0 ~-4 ~0
