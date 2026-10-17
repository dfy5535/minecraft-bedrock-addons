# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3760/4224 | 主题内编号: b048/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·阶梯王座巅峰试炼台 (warped_forest_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace fire
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 warped_planks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 warped_planks [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 warped_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks []
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 polished_blackstone_bricks []
setblock ~0 ~-5 ~0 crying_obsidian []
fill ~0 ~-4 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-5 slot.container 0 ghast_tear 11
replaceitem block ~0 ~-2 ~-5 slot.container 1 magma_cream 6
replaceitem block ~0 ~-2 ~-5 slot.container 2 string 13
replaceitem block ~0 ~-2 ~-5 slot.container 3 bone 12
replaceitem block ~0 ~-2 ~-5 slot.container 4 gold_nugget 19
replaceitem block ~0 ~-2 ~-5 slot.container 5 rotten_flesh 14
replaceitem block ~0 ~-2 ~-5 slot.container 9 obsidian 14
replaceitem block ~0 ~-2 ~-5 slot.container 10 crying_obsidian 11
replaceitem block ~0 ~-2 ~-5 slot.container 11 netherite_scrap 7
replaceitem block ~0 ~-2 ~-5 slot.container 12 golden_apple 2
replaceitem block ~0 ~-2 ~-5 slot.container 13 warped_stem 17
replaceitem block ~0 ~-2 ~-5 slot.container 14 shroomlight 8
loot insert ~0 ~-2 ~-5 loot "rsf/warped_forest"
loot insert ~0 ~-2 ~-5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 warped_planks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 polished_blackstone_bricks []
fill ~-4 ~5 ~-5 ~4 ~6 ~5 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 warped_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 warped_stem []
setblock ~-6 ~9 ~-7 soul_lantern []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 warped_stem []
setblock ~-6 ~9 ~7 soul_lantern []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 warped_stem []
setblock ~6 ~9 ~-7 soul_lantern []
fill ~6 ~6 ~7 ~6 ~8 ~7 warped_stem []
setblock ~6 ~9 ~7 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~8 ~-7 ~8 ~8 warped_stem []
setblock ~-7 ~9 ~8 crying_obsidian []
setblock ~-7 ~10 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 soul_lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 crying_obsidian []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 ender_pearl 12
replaceitem block ~-5 ~1 ~6 slot.container 1 blaze_rod 7
replaceitem block ~-5 ~1 ~6 slot.container 2 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 3 magma_cream 9
replaceitem block ~-5 ~1 ~6 slot.container 4 string 16
replaceitem block ~-5 ~1 ~6 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 9 warped_stem 17
replaceitem block ~-5 ~1 ~6 slot.container 10 shroomlight 8
replaceitem block ~-5 ~1 ~6 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~-5 ~1 ~6 slot.container 12 saddle 1
replaceitem block ~-5 ~1 ~6 slot.container 13 gold_ingot 13
replaceitem block ~-5 ~1 ~6 slot.container 14 quartz 22
loot insert ~-5 ~1 ~6 loot "rsf/warped_forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ghast_tear 9
replaceitem block ~5 ~1 ~6 slot.container 1 magma_cream 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 19
replaceitem block ~5 ~1 ~6 slot.container 3 bone 10
replaceitem block ~5 ~1 ~6 slot.container 4 gold_nugget 17
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 warped_stem 22
replaceitem block ~5 ~1 ~6 slot.container 10 shroomlight 6
replaceitem block ~5 ~1 ~6 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~6 slot.container 12 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 14 quartz 20
loot insert ~5 ~1 ~6 loot "rsf/warped_forest"
loot insert ~5 ~1 ~6 loot "chests/bastion_other"
summon blaze ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
