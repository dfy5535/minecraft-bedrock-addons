# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3621/4224 | 主题内编号: b037/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·环廊聖柱纪念碑 (crimson_forest_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 crimson_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 crimson_planks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 shroomlight []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 ghast_tear 5
replaceitem block ~4 ~-2 ~0 slot.container 1 string 13
replaceitem block ~4 ~-2 ~0 slot.container 2 ender_pearl 8
replaceitem block ~4 ~-2 ~0 slot.container 3 leather 17
replaceitem block ~4 ~-2 ~0 slot.container 4 cooked_porkchop 16
replaceitem block ~4 ~-2 ~0 slot.container 5 gold_ingot 17
replaceitem block ~4 ~-2 ~0 slot.container 9 arrow 24
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_apple 3
replaceitem block ~4 ~-2 ~0 slot.container 11 golden_carrot 10
replaceitem block ~4 ~-2 ~0 slot.container 12 crimson_stem 19
replaceitem block ~4 ~-2 ~0 slot.container 13 shroomlight 10
replaceitem block ~4 ~-2 ~0 slot.container 14 crying_obsidian 11
loot insert ~4 ~-2 ~0 loot "rsf/crimson_forest"
loot insert ~4 ~-2 ~0 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 polished_blackstone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 crimson_stem []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 crimson_stem []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 crimson_stem []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 crimson_stem []
fill ~-2 ~1 ~-5 ~-2 ~8 ~-5 crimson_stem []
fill ~-2 ~1 ~5 ~-2 ~8 ~5 crimson_stem []
fill ~0 ~1 ~-5 ~0 ~8 ~-5 crimson_stem []
fill ~0 ~1 ~5 ~0 ~8 ~5 crimson_stem []
fill ~2 ~1 ~-5 ~2 ~8 ~-5 crimson_stem []
fill ~2 ~1 ~5 ~2 ~8 ~5 crimson_stem []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 crimson_stem []
fill ~4 ~1 ~5 ~4 ~8 ~5 crimson_stem []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 crimson_stem []
fill ~6 ~1 ~5 ~6 ~8 ~5 crimson_stem []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 crimson_stem []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 crimson_stem []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 crimson_stem []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 crimson_stem []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 crimson_stem []
fill ~6 ~1 ~1 ~6 ~8 ~1 crimson_stem []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 crimson_stem []
fill ~6 ~1 ~3 ~6 ~8 ~3 crimson_stem []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~9 ~-5 ~-6 ~11 ~-5 crimson_stem []
setblock ~-6 ~12 ~-5 lantern []
fill ~-6 ~9 ~5 ~-6 ~11 ~5 crimson_stem []
setblock ~-6 ~12 ~5 lantern []
fill ~6 ~9 ~-5 ~6 ~11 ~-5 crimson_stem []
setblock ~6 ~12 ~-5 lantern []
fill ~6 ~9 ~5 ~6 ~11 ~5 crimson_stem []
setblock ~6 ~12 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 crimson_stem []
setblock ~-8 ~6 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 crimson_stem []
setblock ~-8 ~6 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 crimson_stem []
setblock ~8 ~6 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 crimson_stem []
setblock ~8 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~9 ~0 ~-6 ~9 ~6 ~-6 gilded_blackstone []
setblock ~9 ~7 ~-6 gold_block []
setblock ~9 ~8 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ghast_tear 8
replaceitem block ~5 ~1 ~3 slot.container 1 string 16
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 11
replaceitem block ~5 ~1 ~3 slot.container 3 leather 12
replaceitem block ~5 ~1 ~3 slot.container 4 cooked_porkchop 11
replaceitem block ~5 ~1 ~3 slot.container 5 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 9 shroomlight 8
replaceitem block ~5 ~1 ~3 slot.container 10 crying_obsidian 9
replaceitem block ~5 ~1 ~3 slot.container 11 obsidian 12
replaceitem block ~5 ~1 ~3 slot.container 12 netherite_scrap 6
replaceitem block ~5 ~1 ~3 slot.container 13 golden_helmet 1
replaceitem block ~5 ~1 ~3 slot.container 14 crossbow 1
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 6
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 15
replaceitem block ~-5 ~1 ~4 slot.container 2 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 4 blaze_rod 10
replaceitem block ~-5 ~1 ~4 slot.container 5 magma_cream 13
replaceitem block ~-5 ~1 ~4 slot.container 9 shroomlight 6
replaceitem block ~-5 ~1 ~4 slot.container 10 crying_obsidian 7
replaceitem block ~-5 ~1 ~4 slot.container 11 obsidian 10
replaceitem block ~-5 ~1 ~4 slot.container 12 netherite_scrap 4
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_helmet 1
replaceitem block ~-5 ~1 ~4 slot.container 14 crossbow 1
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
