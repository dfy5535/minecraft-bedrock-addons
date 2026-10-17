# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3739/4224 | 主题内编号: b027/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·双子连廊警戒塔楼 (warped_forest_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 quartz_block [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 quartz_block [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 warped_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 warped_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~9 ~4 quartz_block []
fill ~2 ~1 ~-4 ~5 ~9 ~4 quartz_block []
fill ~-4 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 warped_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 warped_planks []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 warped_fence []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 air []
setblock ~-5 ~9 ~-4 warped_stem []
setblock ~-5 ~10 ~-4 shroomlight []
setblock ~-5 ~9 ~4 warped_stem []
setblock ~-5 ~10 ~4 shroomlight []
setblock ~5 ~9 ~-4 warped_stem []
setblock ~5 ~10 ~-4 shroomlight []
setblock ~5 ~9 ~4 warped_stem []
setblock ~5 ~10 ~4 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 polished_blackstone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 6x5x4) ---
fill ~-6 ~0 ~5 ~-6 ~7 ~5 warped_stem []
setblock ~-6 ~8 ~5 crying_obsidian []
setblock ~-6 ~9 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 magma_cream 9
replaceitem block ~4 ~1 ~3 slot.container 1 string 16
replaceitem block ~4 ~1 ~3 slot.container 2 bone 15
replaceitem block ~4 ~1 ~3 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~1 ~3 slot.container 5 ender_pearl 12
replaceitem block ~4 ~1 ~3 slot.container 9 crying_obsidian 7
replaceitem block ~4 ~1 ~3 slot.container 10 netherite_scrap 3
replaceitem block ~4 ~1 ~3 slot.container 11 golden_apple 5
replaceitem block ~4 ~1 ~3 slot.container 12 warped_stem 20
replaceitem block ~4 ~1 ~3 slot.container 13 shroomlight 11
replaceitem block ~4 ~1 ~3 slot.container 14 warped_fungus_on_a_stick 1
loot insert ~4 ~1 ~3 loot "rsf/warped_forest"
summon strider ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
