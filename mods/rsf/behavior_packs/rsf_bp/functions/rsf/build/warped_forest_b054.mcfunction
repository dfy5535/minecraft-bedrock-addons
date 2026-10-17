# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3766/4224 | 主题内编号: b054/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·切石与伐木工匠棚屋 (warped_forest_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 2格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~8 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~8 ~7 air [] replace fire
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 blackstone [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 blackstone [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 blackstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 nether_brick []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 warped_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~6 ~5 blackstone []
fill ~2 ~1 ~-5 ~5 ~6 ~5 blackstone []
fill ~-4 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 warped_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-6 ~-6 ~6 ~6 warped_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-6 ~6 ~6 ~6 warped_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~-5 ~7 ~5 warped_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-5 ~5 ~7 ~5 warped_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~4 ~7 ~5 blackstone_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 warped_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 polished_blackstone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 warped_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 warped_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 warped_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~-6 ~0 ~6 ~-6 ~9 ~6 warped_stem []
setblock ~-6 ~10 ~6 crying_obsidian []
setblock ~-6 ~11 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 diamond_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 gold_nugget 22
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-4 ~1 ~4 slot.container 2 ender_pearl 12
replaceitem block ~-4 ~1 ~4 slot.container 3 blaze_rod 7
replaceitem block ~-4 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~4 slot.container 5 magma_cream 9
replaceitem block ~-4 ~1 ~4 slot.container 9 netherite_scrap 1
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~-4 ~1 ~4 slot.container 11 warped_stem 18
replaceitem block ~-4 ~1 ~4 slot.container 12 shroomlight 9
replaceitem block ~-4 ~1 ~4 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~-4 ~1 ~4 slot.container 14 saddle 1
loot insert ~-4 ~1 ~4 loot "rsf/warped_forest"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 ender_pearl 15
replaceitem block ~4 ~1 ~4 slot.container 1 blaze_rod 10
replaceitem block ~4 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~4 slot.container 3 magma_cream 12
replaceitem block ~4 ~1 ~4 slot.container 4 string 19
replaceitem block ~4 ~1 ~4 slot.container 5 bone 10
replaceitem block ~4 ~1 ~4 slot.container 9 netherite_scrap 6
replaceitem block ~4 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~4 ~1 ~4 slot.container 11 warped_stem 16
replaceitem block ~4 ~1 ~4 slot.container 12 shroomlight 7
replaceitem block ~4 ~1 ~4 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~4 slot.container 14 saddle 1
loot insert ~4 ~1 ~4 loot "rsf/warped_forest"
loot insert ~4 ~1 ~4 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
