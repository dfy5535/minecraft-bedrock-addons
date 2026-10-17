# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3823/4224 | 主题内编号: b111/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·地下禁忌书库与炼药室 (warped_forest_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
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

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block []
fill ~-4 ~-6 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-6 ~0 shroomlight []
setblock ~3 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 bone 12
replaceitem block ~0 ~-4 ~4 slot.container 1 gold_nugget 19
replaceitem block ~0 ~-4 ~4 slot.container 2 rotten_flesh 14
replaceitem block ~0 ~-4 ~4 slot.container 3 ender_pearl 17
replaceitem block ~0 ~-4 ~4 slot.container 4 blaze_rod 12
replaceitem block ~0 ~-4 ~4 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-4 ~4 slot.container 9 shroomlight 6
replaceitem block ~0 ~-4 ~4 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-4 ~4 slot.container 11 saddle 1
replaceitem block ~0 ~-4 ~4 slot.container 12 gold_ingot 11
replaceitem block ~0 ~-4 ~4 slot.container 13 quartz 20
replaceitem block ~0 ~-4 ~4 slot.container 14 obsidian 15
loot insert ~0 ~-4 ~4 loot "rsf/warped_forest"
loot insert ~0 ~-4 ~4 loot "chests/bastion_other"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 bone 10
replaceitem block ~0 ~-4 ~-4 slot.container 1 gold_nugget 17
replaceitem block ~0 ~-4 ~-4 slot.container 2 rotten_flesh 12
replaceitem block ~0 ~-4 ~-4 slot.container 3 ender_pearl 15
replaceitem block ~0 ~-4 ~-4 slot.container 4 blaze_rod 10
replaceitem block ~0 ~-4 ~-4 slot.container 5 ghast_tear 9
replaceitem block ~0 ~-4 ~-4 slot.container 9 shroomlight 12
replaceitem block ~0 ~-4 ~-4 slot.container 10 warped_fungus_on_a_stick 1
replaceitem block ~0 ~-4 ~-4 slot.container 11 saddle 1
replaceitem block ~0 ~-4 ~-4 slot.container 12 gold_ingot 10
replaceitem block ~0 ~-4 ~-4 slot.container 13 quartz 19
replaceitem block ~0 ~-4 ~-4 slot.container 14 obsidian 14
loot insert ~0 ~-4 ~-4 loot "rsf/warped_forest"
loot insert ~0 ~-4 ~-4 loot "chests/bastion_other"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 quartz_block []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 warped_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 warped_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~4 ~-6 ~4 ~4 ~6 warped_planks []
fill ~-3 ~5 ~-5 ~3 ~6 ~5 glass []
fill ~-2 ~5 ~-4 ~2 ~5 ~4 air []
setblock ~0 ~6 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 warped_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-6 ~0 ~7 ~-6 ~6 ~7 warped_stem []
setblock ~-6 ~7 ~7 crying_obsidian []
setblock ~-6 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 12
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 7
replaceitem block ~4 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 4 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 5 string 16
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 10 warped_stem 18
replaceitem block ~4 ~1 ~5 slot.container 11 shroomlight 9
replaceitem block ~4 ~1 ~5 slot.container 12 warped_fungus_on_a_stick 1
replaceitem block ~4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 14
loot insert ~4 ~1 ~5 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
