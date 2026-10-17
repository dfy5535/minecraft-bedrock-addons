# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3650/4224 | 主题内编号: b066/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·崩塌角楼古堡残垣 (crimson_forest_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 shroomlight []
setblock ~4 ~-5 ~-3 shroomlight []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 magma_cream 7
replaceitem block ~4 ~-3 ~3 slot.container 1 ghast_tear 5
replaceitem block ~4 ~-3 ~3 slot.container 2 string 13
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 8
replaceitem block ~4 ~-3 ~3 slot.container 4 leather 17
replaceitem block ~4 ~-3 ~3 slot.container 5 cooked_porkchop 16
replaceitem block ~4 ~-3 ~3 slot.container 9 crimson_stem 21
replaceitem block ~4 ~-3 ~3 slot.container 10 shroomlight 12
replaceitem block ~4 ~-3 ~3 slot.container 11 crying_obsidian 6
replaceitem block ~4 ~-3 ~3 slot.container 12 obsidian 9
replaceitem block ~4 ~-3 ~3 slot.container 13 netherite_scrap 3
replaceitem block ~4 ~-3 ~3 slot.container 14 golden_helmet 1
loot insert ~4 ~-3 ~3 loot "rsf/crimson_forest"
loot insert ~4 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 polished_blackstone_bricks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~10 ~-4 crimson_planks []
setblock ~-6 ~11 ~-5 shroomlight []
fill ~-6 ~1 ~4 ~-5 ~10 ~5 crimson_planks []
setblock ~-6 ~11 ~4 shroomlight []
fill ~5 ~1 ~-5 ~6 ~10 ~-4 crimson_planks []
setblock ~5 ~11 ~-5 shroomlight []
fill ~5 ~1 ~4 ~6 ~10 ~5 crimson_planks []
setblock ~5 ~11 ~4 shroomlight []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 polished_blackstone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 gilded_blackstone []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 gilded_blackstone []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 gilded_blackstone []
fill ~7 ~0 ~2 ~7 ~7 ~2 gilded_blackstone []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~9 ~0 ~-8 ~9 ~5 ~-8 gilded_blackstone []
setblock ~9 ~6 ~-8 gold_block []
setblock ~9 ~7 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 1 blaze_rod 7
replaceitem block ~-5 ~1 ~3 slot.container 2 magma_cream 10
replaceitem block ~-5 ~1 ~3 slot.container 3 ghast_tear 8
replaceitem block ~-5 ~1 ~3 slot.container 4 string 16
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 11
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_carrot 12
replaceitem block ~-5 ~1 ~3 slot.container 11 crimson_stem 21
replaceitem block ~-5 ~1 ~3 slot.container 12 shroomlight 12
replaceitem block ~-5 ~1 ~3 slot.container 13 crying_obsidian 6
replaceitem block ~-5 ~1 ~3 slot.container 14 obsidian 9
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-3 ~0
