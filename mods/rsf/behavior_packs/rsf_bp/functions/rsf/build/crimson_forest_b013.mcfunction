# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3597/4224 | 主题内编号: b013/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·地底熔炉苦工地牢 (crimson_forest_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~10 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~10 ~8 air [] replace fire
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 crimson_planks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 crimson_planks [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 crimson_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 red_nether_brick []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 crimson_planks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 cooked_porkchop 16
replaceitem block ~4 ~-3 ~4 slot.container 1 gold_ingot 17
replaceitem block ~4 ~-3 ~4 slot.container 2 blaze_rod 4
replaceitem block ~4 ~-3 ~4 slot.container 3 magma_cream 7
replaceitem block ~4 ~-3 ~4 slot.container 4 ghast_tear 5
replaceitem block ~4 ~-3 ~4 slot.container 5 string 13
replaceitem block ~4 ~-3 ~4 slot.container 9 golden_helmet 1
replaceitem block ~4 ~-3 ~4 slot.container 10 crossbow 1
replaceitem block ~4 ~-3 ~4 slot.container 11 arrow 24
replaceitem block ~4 ~-3 ~4 slot.container 12 golden_apple 3
replaceitem block ~4 ~-3 ~4 slot.container 13 golden_carrot 10
replaceitem block ~4 ~-3 ~4 slot.container 14 crimson_stem 19
loot insert ~4 ~-3 ~4 loot "rsf/crimson_forest"
loot insert ~4 ~-3 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~7 ~6 crimson_planks []
fill ~-5 ~1 ~-5 ~5 ~6 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~7 ~-6 crimson_stem []
fill ~-6 ~1 ~6 ~-6 ~7 ~6 crimson_stem []
fill ~6 ~1 ~-6 ~6 ~7 ~-6 crimson_stem []
fill ~6 ~1 ~6 ~6 ~7 ~6 crimson_stem []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 crimson_fence []
setblock ~6 ~2 ~0 crimson_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 polished_blackstone_bricks []
fill ~-6 ~8 ~-6 ~6 ~8 ~6 crimson_fence []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 air []
setblock ~-6 ~8 ~-6 crimson_stem []
setblock ~-6 ~9 ~-6 lantern []
setblock ~-6 ~8 ~6 crimson_stem []
setblock ~-6 ~9 ~6 lantern []
setblock ~6 ~8 ~-6 crimson_stem []
setblock ~6 ~9 ~-6 lantern []
setblock ~6 ~8 ~6 crimson_stem []
setblock ~6 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 polished_blackstone_bricks []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~9 ~0 ~-7 ~9 ~7 ~-7 gilded_blackstone []
setblock ~9 ~8 ~-7 gold_block []
setblock ~9 ~9 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ghast_tear 8
replaceitem block ~5 ~1 ~4 slot.container 1 string 16
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 11
replaceitem block ~5 ~1 ~4 slot.container 3 leather 12
replaceitem block ~5 ~1 ~4 slot.container 4 cooked_porkchop 11
replaceitem block ~5 ~1 ~4 slot.container 5 gold_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 9 golden_carrot 14
replaceitem block ~5 ~1 ~4 slot.container 10 crimson_stem 16
replaceitem block ~5 ~1 ~4 slot.container 11 shroomlight 7
replaceitem block ~5 ~1 ~4 slot.container 12 crying_obsidian 8
replaceitem block ~5 ~1 ~4 slot.container 13 obsidian 11
replaceitem block ~5 ~1 ~4 slot.container 14 netherite_scrap 5
loot insert ~5 ~1 ~4 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 ender_pearl 6
replaceitem block ~-5 ~1 ~5 slot.container 1 leather 15
replaceitem block ~-5 ~1 ~5 slot.container 2 cooked_porkchop 14
replaceitem block ~-5 ~1 ~5 slot.container 3 gold_ingot 15
replaceitem block ~-5 ~1 ~5 slot.container 4 blaze_rod 10
replaceitem block ~-5 ~1 ~5 slot.container 5 magma_cream 13
replaceitem block ~-5 ~1 ~5 slot.container 9 golden_carrot 12
replaceitem block ~-5 ~1 ~5 slot.container 10 crimson_stem 21
replaceitem block ~-5 ~1 ~5 slot.container 11 shroomlight 12
replaceitem block ~-5 ~1 ~5 slot.container 12 crying_obsidian 6
replaceitem block ~-5 ~1 ~5 slot.container 13 obsidian 9
replaceitem block ~-5 ~1 ~5 slot.container 14 netherite_scrap 3
loot insert ~-5 ~1 ~5 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~5 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
