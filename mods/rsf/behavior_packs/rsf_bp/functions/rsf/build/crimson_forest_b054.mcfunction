# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3638/4224 | 主题内编号: b054/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·切石与伐木工匠棚屋 (crimson_forest_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~10 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~10 ~6 air [] replace fire
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 blackstone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 polished_blackstone_bricks []
fill ~2 ~1 ~-4 ~6 ~8 ~4 polished_blackstone_bricks []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 crimson_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-5 ~-7 ~8 ~5 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-5 ~7 ~8 ~5 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-4 ~-6 ~9 ~4 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-4 ~6 ~9 ~4 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-4 ~5 ~9 ~4 polished_blackstone_brick_slab []
fill ~0 ~10 ~-5 ~0 ~10 ~5 crimson_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 crimson_stem []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 crimson_stem []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 crimson_stem []
fill ~8 ~0 ~2 ~8 ~6 ~2 crimson_stem []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~9 ~0 ~-7 ~9 ~8 ~-7 gilded_blackstone []
setblock ~9 ~9 ~-7 gold_block []
setblock ~9 ~10 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 string 16
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 11
replaceitem block ~-5 ~1 ~2 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~2 slot.container 3 cooked_porkchop 11
replaceitem block ~-5 ~1 ~2 slot.container 4 gold_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 5 blaze_rod 7
replaceitem block ~-5 ~1 ~2 slot.container 9 crying_obsidian 11
replaceitem block ~-5 ~1 ~2 slot.container 10 obsidian 14
replaceitem block ~-5 ~1 ~2 slot.container 11 netherite_scrap 1
replaceitem block ~-5 ~1 ~2 slot.container 12 golden_helmet 1
replaceitem block ~-5 ~1 ~2 slot.container 13 crossbow 1
replaceitem block ~-5 ~1 ~2 slot.container 14 arrow 27
loot insert ~-5 ~1 ~2 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~2 ~0
