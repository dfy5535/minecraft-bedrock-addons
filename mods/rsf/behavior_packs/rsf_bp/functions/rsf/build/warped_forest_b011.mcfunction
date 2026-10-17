# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3723/4224 | 主题内编号: b011/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·深渊困兽角斗地牢 (warped_forest_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace fire
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 quartz_block [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 quartz_block [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 warped_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 gold_block []

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

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 quartz_block []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 air []
fill ~5 ~1 ~6 ~5 ~6 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~5 ~-5 warped_stem []
fill ~4 ~1 ~-5 ~4 ~5 ~-5 warped_stem []
fill ~-4 ~1 ~5 ~-4 ~5 ~5 warped_stem []
fill ~4 ~1 ~5 ~4 ~5 ~5 warped_stem []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-6 ~-5 ~7 ~-6 warped_stem []
setblock ~-5 ~8 ~-6 shroomlight []
fill ~-5 ~5 ~6 ~-5 ~7 ~6 warped_stem []
setblock ~-5 ~8 ~6 shroomlight []
fill ~5 ~5 ~-6 ~5 ~7 ~-6 warped_stem []
setblock ~5 ~8 ~-6 shroomlight []
fill ~5 ~5 ~6 ~5 ~7 ~6 warped_stem []
setblock ~5 ~8 ~6 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x9x3) ---
fill ~-6 ~0 ~9 ~-6 ~6 ~9 warped_stem []
setblock ~-6 ~7 ~9 crying_obsidian []
setblock ~-6 ~8 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 diamond_block []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 1 string 16
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 12
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 8
replaceitem block ~4 ~1 ~5 slot.container 10 warped_stem 16
replaceitem block ~4 ~1 ~5 slot.container 11 shroomlight 7
replaceitem block ~4 ~1 ~5 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 12
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
summon skeleton ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
