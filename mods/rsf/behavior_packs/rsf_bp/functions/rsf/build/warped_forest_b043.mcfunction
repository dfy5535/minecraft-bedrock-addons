# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3755/4224 | 主题内编号: b043/128
# 地形主题 #30: 下界诡异森林与末影秘塔 (warped_forest) —— 带诡异菌柄扭曲螺旋塔与哭泣黑曜石阵
# 建筑名称: 诡异末影系·十字四门试炼擂台 (warped_forest_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 3格
# 适用群系: warped_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~8 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~8 ~9 air [] replace fire
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 quartz_block [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 quartz_block [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 warped_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 warped_planks []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~5 ~7 quartz_block []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 quartz_block []
fill ~-1 ~1 ~-6 ~1 ~4 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 warped_fence []
setblock ~6 ~2 ~0 warped_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-7 ~6 ~5 ~7 warped_planks []
fill ~-6 ~6 ~-7 ~6 ~6 ~7 warped_fence []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 air []
setblock ~-6 ~6 ~-7 warped_stem []
setblock ~-6 ~7 ~-7 shroomlight []
setblock ~-6 ~6 ~7 warped_stem []
setblock ~-6 ~7 ~7 shroomlight []
setblock ~6 ~6 ~-7 warped_stem []
setblock ~6 ~7 ~-7 shroomlight []
setblock ~6 ~6 ~7 warped_stem []
setblock ~6 ~7 ~7 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 polished_blackstone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (warped_forest 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-7 ~0 ~9 ~-7 ~8 ~9 warped_stem []
setblock ~-7 ~9 ~9 crying_obsidian []
setblock ~-7 ~10 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 soul_lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 crying_obsidian []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 magma_cream 9
replaceitem block ~5 ~1 ~6 slot.container 1 string 16
replaceitem block ~5 ~1 ~6 slot.container 2 bone 15
replaceitem block ~5 ~1 ~6 slot.container 3 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 12
replaceitem block ~5 ~1 ~6 slot.container 9 quartz 19
replaceitem block ~5 ~1 ~6 slot.container 10 obsidian 14
replaceitem block ~5 ~1 ~6 slot.container 11 crying_obsidian 11
replaceitem block ~5 ~1 ~6 slot.container 12 netherite_scrap 7
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 14 warped_stem 17
loot insert ~5 ~1 ~6 loot "rsf/warped_forest"
summon piglin ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon strider ~1 ~1 ~1
summon zombie_pigman ~0 ~2 ~0
