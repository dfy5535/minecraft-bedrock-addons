# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3698/4224 | 主题内编号: b114/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双联拱顶植物培育馆 (crimson_forest_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~10 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~10 ~6 air [] replace fire
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 blackstone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 polished_blackstone_bricks []
fill ~2 ~1 ~-4 ~7 ~8 ~4 polished_blackstone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 crimson_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 crimson_planks []
fill ~-6 ~8 ~-3 ~6 ~9 ~3 glass []
fill ~-5 ~8 ~-2 ~5 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 polished_blackstone []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x7x5) ---
fill ~10 ~0 ~-7 ~10 ~8 ~-7 gilded_blackstone []
setblock ~10 ~9 ~-7 gold_block []
setblock ~10 ~10 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gold_ingot 12
replaceitem block ~-6 ~1 ~2 slot.container 1 blaze_rod 7
replaceitem block ~-6 ~1 ~2 slot.container 2 magma_cream 10
replaceitem block ~-6 ~1 ~2 slot.container 3 ghast_tear 8
replaceitem block ~-6 ~1 ~2 slot.container 4 string 16
replaceitem block ~-6 ~1 ~2 slot.container 5 ender_pearl 11
replaceitem block ~-6 ~1 ~2 slot.container 9 crying_obsidian 8
replaceitem block ~-6 ~1 ~2 slot.container 10 obsidian 11
replaceitem block ~-6 ~1 ~2 slot.container 11 netherite_scrap 5
replaceitem block ~-6 ~1 ~2 slot.container 12 golden_helmet 1
replaceitem block ~-6 ~1 ~2 slot.container 13 crossbow 1
replaceitem block ~-6 ~1 ~2 slot.container 14 arrow 24
loot insert ~-6 ~1 ~2 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~2 ~0
