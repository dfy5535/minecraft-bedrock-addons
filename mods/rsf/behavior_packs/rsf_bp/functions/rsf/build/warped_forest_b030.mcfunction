# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3742/4224 | 主题内编号: b030/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双坡顶驻军卫戍塔 (warped_forest_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 blackstone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 blackstone [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 blackstone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-4 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-4 ~3 soul_lantern []
setblock ~2 ~-4 ~-3 soul_lantern []
setblock ~2 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-2 ~3 slot.container 0 ender_pearl 17
replaceitem block ~2 ~-2 ~3 slot.container 1 blaze_rod 12
replaceitem block ~2 ~-2 ~3 slot.container 2 ghast_tear 11
replaceitem block ~2 ~-2 ~3 slot.container 3 magma_cream 6
replaceitem block ~2 ~-2 ~3 slot.container 4 string 13
replaceitem block ~2 ~-2 ~3 slot.container 5 bone 12
replaceitem block ~2 ~-2 ~3 slot.container 9 netherite_scrap 7
replaceitem block ~2 ~-2 ~3 slot.container 10 golden_apple 2
replaceitem block ~2 ~-2 ~3 slot.container 11 warped_stem 17
replaceitem block ~2 ~-2 ~3 slot.container 12 shroomlight 8
replaceitem block ~2 ~-2 ~3 slot.container 13 warped_fungus_on_a_stick 1
replaceitem block ~2 ~-2 ~3 slot.container 14 saddle 1
loot insert ~2 ~-2 ~3 loot "rsf/warped_forest"
loot insert ~2 ~-2 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~8 ~5 blackstone []
fill ~-4 ~1 ~0 ~4 ~7 ~5 quartz_block []
fill ~-3 ~1 ~-4 ~-1 ~7 ~4 air []
fill ~-1 ~1 ~1 ~3 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 warped_planks []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 glass []
fill ~-2 ~7 ~-3 ~2 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~10 ~2 quartz_block []
fill ~5 ~1 ~-1 ~6 ~9 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~11 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x6x2) ---
fill ~-5 ~0 ~6 ~-5 ~5 ~6 warped_stem []
setblock ~-5 ~6 ~6 crying_obsidian []
setblock ~-5 ~7 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gold_nugget 22
replaceitem block ~-3 ~1 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-3 ~1 ~4 slot.container 2 ender_pearl 12
replaceitem block ~-3 ~1 ~4 slot.container 3 blaze_rod 7
replaceitem block ~-3 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 5 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 9 obsidian 14
replaceitem block ~-3 ~1 ~4 slot.container 10 crying_obsidian 11
replaceitem block ~-3 ~1 ~4 slot.container 11 netherite_scrap 7
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~-3 ~1 ~4 slot.container 13 warped_stem 17
replaceitem block ~-3 ~1 ~4 slot.container 14 shroomlight 8
loot insert ~-3 ~1 ~4 loot "rsf/warped_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 15
replaceitem block ~3 ~1 ~4 slot.container 1 blaze_rod 10
replaceitem block ~3 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 3 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 4 string 19
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 obsidian 12
replaceitem block ~3 ~1 ~4 slot.container 10 crying_obsidian 9
replaceitem block ~3 ~1 ~4 slot.container 11 netherite_scrap 5
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~3 ~1 ~4 slot.container 13 warped_stem 22
replaceitem block ~3 ~1 ~4 slot.container 14 shroomlight 6
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
loot insert ~3 ~1 ~4 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
