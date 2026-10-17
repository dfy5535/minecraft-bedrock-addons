# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3793/4224 | 主题内编号: b081/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双高炉重工冶炼密室 (warped_forest_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-8 ~6 ~8 ~8 air [] replace lava
fill ~-6 ~0 ~-8 ~6 ~8 ~8 air [] replace fire
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-7 ~5 ~0 ~7 warped_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 quartz_block []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 polished_blackstone_bricks []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
setblock ~-2 ~-6 ~0 blast_furnace []
setblock ~2 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-4 ~4 slot.container 0 bone 12
replaceitem block ~2 ~-4 ~4 slot.container 1 gold_nugget 19
replaceitem block ~2 ~-4 ~4 slot.container 2 rotten_flesh 14
replaceitem block ~2 ~-4 ~4 slot.container 3 ender_pearl 17
replaceitem block ~2 ~-4 ~4 slot.container 4 blaze_rod 12
replaceitem block ~2 ~-4 ~4 slot.container 5 ghast_tear 11
replaceitem block ~2 ~-4 ~4 slot.container 9 quartz 21
replaceitem block ~2 ~-4 ~4 slot.container 10 obsidian 16
replaceitem block ~2 ~-4 ~4 slot.container 11 crying_obsidian 6
replaceitem block ~2 ~-4 ~4 slot.container 12 netherite_scrap 2
replaceitem block ~2 ~-4 ~4 slot.container 13 golden_apple 4
replaceitem block ~2 ~-4 ~4 slot.container 14 warped_stem 19
loot insert ~2 ~-4 ~4 loot "rsf/warped_forest"
loot insert ~2 ~-4 ~4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-4 ~1 ~-6 ~4 ~5 ~6 polished_blackstone_bricks []
fill ~-3 ~1 ~-5 ~3 ~4 ~5 air []
fill ~-4 ~1 ~6 ~-5 ~8 ~6 warped_planks []
setblock ~-4 ~9 ~6 shroomlight []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 warped_planks []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 glass []
fill ~-2 ~7 ~-3 ~2 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 warped_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_warped_stem []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_warped_stem []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 warped_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x7x3) ---
fill ~-5 ~0 ~7 ~-5 ~6 ~7 warped_stem []
setblock ~-5 ~7 ~7 crying_obsidian []
setblock ~-5 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-3 ~1 ~5 blast_furnace []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 blaze_rod 7
replaceitem block ~3 ~1 ~5 slot.container 1 ghast_tear 6
replaceitem block ~3 ~1 ~5 slot.container 2 magma_cream 9
replaceitem block ~3 ~1 ~5 slot.container 3 string 16
replaceitem block ~3 ~1 ~5 slot.container 4 bone 15
replaceitem block ~3 ~1 ~5 slot.container 5 gold_nugget 22
replaceitem block ~3 ~1 ~5 slot.container 9 golden_apple 8
replaceitem block ~3 ~1 ~5 slot.container 10 warped_stem 16
replaceitem block ~3 ~1 ~5 slot.container 11 shroomlight 7
replaceitem block ~3 ~1 ~5 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~3 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~3 ~1 ~5 slot.container 14 gold_ingot 12
loot insert ~3 ~1 ~5 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
