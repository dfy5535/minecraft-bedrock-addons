# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3686/4224 | 主题内编号: b102/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双子箭塔联防碉楼 (crimson_forest_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~12 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~12 ~6 air [] replace fire
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 blackstone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 polished_blackstone_bricks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 shroomlight []
setblock ~5 ~-5 ~-2 shroomlight []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 leather 17
replaceitem block ~5 ~-3 ~2 slot.container 1 cooked_porkchop 16
replaceitem block ~5 ~-3 ~2 slot.container 2 gold_ingot 17
replaceitem block ~5 ~-3 ~2 slot.container 3 blaze_rod 4
replaceitem block ~5 ~-3 ~2 slot.container 4 magma_cream 7
replaceitem block ~5 ~-3 ~2 slot.container 5 ghast_tear 5
replaceitem block ~5 ~-3 ~2 slot.container 9 golden_apple 8
replaceitem block ~5 ~-3 ~2 slot.container 10 golden_carrot 8
replaceitem block ~5 ~-3 ~2 slot.container 11 crimson_stem 17
replaceitem block ~5 ~-3 ~2 slot.container 12 shroomlight 8
replaceitem block ~5 ~-3 ~2 slot.container 13 crying_obsidian 9
replaceitem block ~5 ~-3 ~2 slot.container 14 obsidian 12
loot insert ~5 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~5 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~10 ~4 polished_blackstone_bricks []
fill ~2 ~1 ~-4 ~7 ~10 ~4 polished_blackstone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~6 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 crimson_planks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~9 ~-4 ~7 ~9 ~4 crimson_planks []
fill ~-7 ~10 ~-4 ~7 ~10 ~4 polished_blackstone_wall []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 air []
setblock ~-7 ~10 ~-4 gilded_blackstone []
setblock ~-7 ~11 ~-4 shroomlight []
setblock ~-7 ~10 ~4 gilded_blackstone []
setblock ~-7 ~11 ~4 shroomlight []
setblock ~7 ~10 ~-4 gilded_blackstone []
setblock ~7 ~11 ~-4 shroomlight []
setblock ~7 ~10 ~4 gilded_blackstone []
setblock ~7 ~11 ~4 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~8 ~-2 gilded_blackstone []
fill ~-8 ~0 ~2 ~-8 ~8 ~2 gilded_blackstone []
fill ~8 ~0 ~-2 ~8 ~8 ~-2 gilded_blackstone []
fill ~8 ~0 ~2 ~8 ~8 ~2 gilded_blackstone []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x7x3) ---
fill ~10 ~0 ~-7 ~10 ~6 ~-7 gilded_blackstone []
setblock ~10 ~7 ~-7 gold_block []
setblock ~10 ~8 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 string 16
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 11
replaceitem block ~-6 ~1 ~2 slot.container 2 leather 12
replaceitem block ~-6 ~1 ~2 slot.container 3 cooked_porkchop 11
replaceitem block ~-6 ~1 ~2 slot.container 4 gold_ingot 12
replaceitem block ~-6 ~1 ~2 slot.container 5 blaze_rod 7
replaceitem block ~-6 ~1 ~2 slot.container 9 crossbow 1
replaceitem block ~-6 ~1 ~2 slot.container 10 arrow 29
replaceitem block ~-6 ~1 ~2 slot.container 11 golden_apple 8
replaceitem block ~-6 ~1 ~2 slot.container 12 golden_carrot 8
replaceitem block ~-6 ~1 ~2 slot.container 13 crimson_stem 17
replaceitem block ~-6 ~1 ~2 slot.container 14 shroomlight 8
loot insert ~-6 ~1 ~2 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-3 ~0
