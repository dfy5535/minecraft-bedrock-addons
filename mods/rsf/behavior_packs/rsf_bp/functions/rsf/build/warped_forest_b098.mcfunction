# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3810/4224 | 主题内编号: b098/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·四角炮楼重装要塞 (warped_forest_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~9 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 blackstone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 blackstone [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 blackstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 blackstone []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~5 soul_lantern []
setblock ~4 ~-5 ~-5 soul_lantern []
setblock ~4 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~5 slot.container 0 string 13
replaceitem block ~4 ~-3 ~5 slot.container 1 bone 12
replaceitem block ~4 ~-3 ~5 slot.container 2 gold_nugget 19
replaceitem block ~4 ~-3 ~5 slot.container 3 rotten_flesh 14
replaceitem block ~4 ~-3 ~5 slot.container 4 ender_pearl 17
replaceitem block ~4 ~-3 ~5 slot.container 5 blaze_rod 12
replaceitem block ~4 ~-3 ~5 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~4 ~-3 ~5 slot.container 10 saddle 1
replaceitem block ~4 ~-3 ~5 slot.container 11 gold_ingot 14
replaceitem block ~4 ~-3 ~5 slot.container 12 quartz 16
replaceitem block ~4 ~-3 ~5 slot.container 13 obsidian 11
replaceitem block ~4 ~-3 ~5 slot.container 14 crying_obsidian 8
loot insert ~4 ~-3 ~5 loot "rsf/warped_forest"
loot insert ~4 ~-3 ~5 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 blackstone []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 warped_planks []
setblock ~-6 ~9 ~-7 soul_lantern []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 warped_planks []
setblock ~-6 ~9 ~6 soul_lantern []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 warped_planks []
setblock ~5 ~9 ~-7 soul_lantern []
fill ~5 ~1 ~6 ~6 ~8 ~7 warped_planks []
setblock ~5 ~9 ~6 soul_lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 warped_planks []
fill ~-6 ~7 ~-7 ~6 ~7 ~7 warped_fence []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 air []
setblock ~-6 ~7 ~-7 warped_stem []
setblock ~-6 ~8 ~-7 soul_lantern []
setblock ~-6 ~7 ~7 warped_stem []
setblock ~-6 ~8 ~7 soul_lantern []
setblock ~6 ~7 ~-7 warped_stem []
setblock ~6 ~8 ~-7 soul_lantern []
setblock ~6 ~7 ~7 warped_stem []
setblock ~6 ~8 ~7 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 polished_blackstone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x10x5) ---
fill ~-7 ~0 ~10 ~-7 ~8 ~10 warped_stem []
setblock ~-7 ~9 ~10 crying_obsidian []
setblock ~-7 ~10 ~10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 1 magma_cream 9
replaceitem block ~-5 ~1 ~6 slot.container 2 string 16
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 4 gold_nugget 22
replaceitem block ~-5 ~1 ~6 slot.container 5 rotten_flesh 17
replaceitem block ~-5 ~1 ~6 slot.container 9 warped_stem 18
replaceitem block ~-5 ~1 ~6 slot.container 10 shroomlight 9
replaceitem block ~-5 ~1 ~6 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~-5 ~1 ~6 slot.container 12 saddle 1
replaceitem block ~-5 ~1 ~6 slot.container 13 gold_ingot 14
replaceitem block ~-5 ~1 ~6 slot.container 14 quartz 16
loot insert ~-5 ~1 ~6 loot "rsf/warped_forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 19
replaceitem block ~5 ~1 ~6 slot.container 1 bone 10
replaceitem block ~5 ~1 ~6 slot.container 2 gold_nugget 17
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 15
replaceitem block ~5 ~1 ~6 slot.container 5 blaze_rod 10
replaceitem block ~5 ~1 ~6 slot.container 9 warped_stem 16
replaceitem block ~5 ~1 ~6 slot.container 10 shroomlight 7
replaceitem block ~5 ~1 ~6 slot.container 11 warped_fungus_on_a_stick 1
replaceitem block ~5 ~1 ~6 slot.container 12 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 14 quartz 21
loot insert ~5 ~1 ~6 loot "rsf/warped_forest"
loot insert ~5 ~1 ~6 loot "chests/bastion_other"
summon enderman ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
