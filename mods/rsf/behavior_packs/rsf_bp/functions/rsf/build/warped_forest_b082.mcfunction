# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3794/4224 | 主题内编号: b082/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·竖井井架矿工物资站 (warped_forest_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[trial_pit] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace fire
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 blackstone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 blackstone [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 diamond_block []

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

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~3 ~5 blackstone []
fill ~-3 ~1 ~-4 ~3 ~2 ~4 air []
fill ~-5 ~3 ~-6 ~5 ~3 ~6 blackstone_slab []
fill ~-3 ~4 ~-4 ~3 ~7 ~4 quartz_block []
fill ~-2 ~4 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 warped_planks []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 quartz_block []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 diamond_block []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 polished_blackstone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x7x4) ---
fill ~-5 ~0 ~7 ~-5 ~7 ~7 warped_stem []
setblock ~-5 ~8 ~7 crying_obsidian []
setblock ~-5 ~9 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-3 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 1 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 2 string 16
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 4 gold_nugget 22
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~-3 ~1 ~4 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~-3 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 12 quartz 19
replaceitem block ~-3 ~1 ~4 slot.container 13 obsidian 14
replaceitem block ~-3 ~1 ~4 slot.container 14 crying_obsidian 11
loot insert ~-3 ~1 ~4 loot "rsf/warped_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 19
replaceitem block ~3 ~1 ~4 slot.container 1 bone 10
replaceitem block ~3 ~1 ~4 slot.container 2 gold_nugget 17
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 15
replaceitem block ~3 ~1 ~4 slot.container 5 blaze_rod 10
replaceitem block ~3 ~1 ~4 slot.container 9 warped_fungus_on_a_stick 1
replaceitem block ~3 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 12 quartz 17
replaceitem block ~3 ~1 ~4 slot.container 13 obsidian 12
replaceitem block ~3 ~1 ~4 slot.container 14 crying_obsidian 9
loot insert ~3 ~1 ~4 loot "rsf/warped_forest"
loot insert ~3 ~1 ~4 loot "chests/bastion_other"
summon zombie_pigman ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin ~0 ~-4 ~0
