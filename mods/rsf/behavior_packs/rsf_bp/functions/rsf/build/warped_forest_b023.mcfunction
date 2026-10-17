# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3735/4224 | 主题内编号: b023/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双层露台阁楼宝室 (warped_forest_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[open_colonnade] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-8 ~6 ~10 ~8 air [] replace lava
fill ~-6 ~0 ~-8 ~6 ~10 ~8 air [] replace fire
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 quartz_block [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 quartz_block [] replace lava
fill ~-5 ~0 ~-7 ~5 ~0 ~7 warped_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 polished_blackstone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 warped_planks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~3 ~6 quartz_block []
fill ~-3 ~1 ~-5 ~3 ~2 ~5 air []
fill ~-5 ~3 ~-7 ~5 ~3 ~7 warped_slab []
fill ~-3 ~4 ~-5 ~3 ~7 ~5 warped_planks []
fill ~-2 ~4 ~-4 ~2 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~5 ~-5 ~-4 ~7 ~-5 stripped_warped_stem []
setblock ~-4 ~8 ~-5 shroomlight []
fill ~-4 ~5 ~5 ~-4 ~7 ~5 stripped_warped_stem []
setblock ~-4 ~8 ~5 shroomlight []
fill ~4 ~5 ~-5 ~4 ~7 ~-5 stripped_warped_stem []
setblock ~4 ~8 ~-5 shroomlight []
fill ~4 ~5 ~5 ~4 ~7 ~5 stripped_warped_stem []
setblock ~4 ~8 ~5 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~9 ~2 warped_planks []
fill ~5 ~1 ~-1 ~6 ~8 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~10 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 5x9x5) ---
fill ~-5 ~0 ~9 ~-5 ~8 ~9 warped_stem []
setblock ~-5 ~9 ~9 crying_obsidian []
setblock ~-5 ~10 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~1 ~5 slot.container 1 ender_pearl 12
replaceitem block ~3 ~1 ~5 slot.container 2 blaze_rod 7
replaceitem block ~3 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~3 ~1 ~5 slot.container 4 magma_cream 9
replaceitem block ~3 ~1 ~5 slot.container 5 string 16
replaceitem block ~3 ~1 ~5 slot.container 9 quartz 20
replaceitem block ~3 ~1 ~5 slot.container 10 obsidian 15
replaceitem block ~3 ~1 ~5 slot.container 11 crying_obsidian 12
replaceitem block ~3 ~1 ~5 slot.container 12 netherite_scrap 1
replaceitem block ~3 ~1 ~5 slot.container 13 golden_apple 3
replaceitem block ~3 ~1 ~5 slot.container 14 warped_stem 18
loot insert ~3 ~1 ~5 loot "rsf/warped_forest"
summon skeleton ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
