# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3832/4224 | 主题内编号: b120/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·引水渠跨桥水培温室 (warped_forest_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~8 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~8 ~7 air [] replace fire
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 warped_planks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 warped_planks [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 warped_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 blackstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 polished_blackstone_bricks []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 lava []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~3 slot.container 0 ghast_tear 11
replaceitem block ~-3 ~-2 ~3 slot.container 1 magma_cream 6
replaceitem block ~-3 ~-2 ~3 slot.container 2 string 13
replaceitem block ~-3 ~-2 ~3 slot.container 3 bone 12
replaceitem block ~-3 ~-2 ~3 slot.container 4 gold_nugget 19
replaceitem block ~-3 ~-2 ~3 slot.container 5 rotten_flesh 14
replaceitem block ~-3 ~-2 ~3 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~-3 ~-2 ~3 slot.container 10 saddle 1
replaceitem block ~-3 ~-2 ~3 slot.container 11 gold_ingot 14
replaceitem block ~-3 ~-2 ~3 slot.container 12 quartz 16
replaceitem block ~-3 ~-2 ~3 slot.container 13 obsidian 11
replaceitem block ~-3 ~-2 ~3 slot.container 14 crying_obsidian 8
loot insert ~-3 ~-2 ~3 loot "rsf/warped_forest"
loot insert ~-3 ~-2 ~3 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~5 ~5 warped_planks []
fill ~-4 ~1 ~-4 ~4 ~4 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 warped_planks []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 quartz_block []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 diamond_block []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~-6 ~0 ~6 ~-6 ~5 ~6 warped_stem []
setblock ~-6 ~6 ~6 crying_obsidian []
setblock ~-6 ~7 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~4 crafting_table []
setblock ~-3 ~1 ~4 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 ender_pearl 12
replaceitem block ~-4 ~1 ~4 slot.container 1 blaze_rod 7
replaceitem block ~-4 ~1 ~4 slot.container 2 ghast_tear 6
replaceitem block ~-4 ~1 ~4 slot.container 3 magma_cream 9
replaceitem block ~-4 ~1 ~4 slot.container 4 string 16
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~4 slot.container 9 obsidian 13
replaceitem block ~-4 ~1 ~4 slot.container 10 crying_obsidian 10
replaceitem block ~-4 ~1 ~4 slot.container 11 netherite_scrap 6
replaceitem block ~-4 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~-4 ~1 ~4 slot.container 13 warped_stem 16
replaceitem block ~-4 ~1 ~4 slot.container 14 shroomlight 7
loot insert ~-4 ~1 ~4 loot "rsf/warped_forest"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 ghast_tear 9
replaceitem block ~4 ~1 ~4 slot.container 1 magma_cream 12
replaceitem block ~4 ~1 ~4 slot.container 2 string 19
replaceitem block ~4 ~1 ~4 slot.container 3 bone 10
replaceitem block ~4 ~1 ~4 slot.container 4 gold_nugget 17
replaceitem block ~4 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 9 obsidian 11
replaceitem block ~4 ~1 ~4 slot.container 10 crying_obsidian 8
replaceitem block ~4 ~1 ~4 slot.container 11 netherite_scrap 4
replaceitem block ~4 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~4 ~1 ~4 slot.container 13 warped_stem 21
replaceitem block ~4 ~1 ~4 slot.container 14 shroomlight 12
loot insert ~4 ~1 ~4 loot "rsf/warped_forest"
loot insert ~4 ~1 ~4 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
