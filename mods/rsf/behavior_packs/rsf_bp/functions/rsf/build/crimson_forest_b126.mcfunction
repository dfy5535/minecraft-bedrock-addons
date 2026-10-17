# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3710/4224 | 主题内编号: b126/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双子主塔天桥宫殿与暗牢 (crimson_forest_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-7 ~9 ~13 ~7 air [] replace lava
fill ~-9 ~0 ~-7 ~9 ~13 ~7 air [] replace fire
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-8 ~0 ~-6 ~8 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 blackstone []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 polished_blackstone_bricks []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 shroomlight []
setblock ~5 ~-6 ~-3 shroomlight []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 leather 17
replaceitem block ~5 ~-4 ~3 slot.container 1 cooked_porkchop 16
replaceitem block ~5 ~-4 ~3 slot.container 2 gold_ingot 17
replaceitem block ~5 ~-4 ~3 slot.container 3 blaze_rod 4
replaceitem block ~5 ~-4 ~3 slot.container 4 magma_cream 7
replaceitem block ~5 ~-4 ~3 slot.container 5 ghast_tear 5
replaceitem block ~5 ~-4 ~3 slot.container 9 crimson_stem 18
replaceitem block ~5 ~-4 ~3 slot.container 10 shroomlight 9
replaceitem block ~5 ~-4 ~3 slot.container 11 crying_obsidian 10
replaceitem block ~5 ~-4 ~3 slot.container 12 obsidian 13
replaceitem block ~5 ~-4 ~3 slot.container 13 netherite_scrap 7
replaceitem block ~5 ~-4 ~3 slot.container 14 golden_helmet 1
loot insert ~5 ~-4 ~3 loot "rsf/crimson_forest"
loot insert ~5 ~-4 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~11 ~5 polished_blackstone_bricks []
fill ~2 ~1 ~-5 ~7 ~11 ~5 polished_blackstone_bricks []
fill ~-6 ~1 ~-4 ~-3 ~10 ~4 air []
fill ~3 ~1 ~-4 ~6 ~10 ~4 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 crimson_planks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 crimson_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 polished_blackstone_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 crimson_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 shroomlight []
setblock ~2 ~4 ~-8 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x8x2) ---
fill ~10 ~0 ~-8 ~10 ~5 ~-8 gilded_blackstone []
setblock ~10 ~6 ~-8 gold_block []
setblock ~10 ~7 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 string 16
replaceitem block ~-6 ~1 ~3 slot.container 1 ender_pearl 11
replaceitem block ~-6 ~1 ~3 slot.container 2 leather 12
replaceitem block ~-6 ~1 ~3 slot.container 3 cooked_porkchop 11
replaceitem block ~-6 ~1 ~3 slot.container 4 gold_ingot 12
replaceitem block ~-6 ~1 ~3 slot.container 5 blaze_rod 7
replaceitem block ~-6 ~1 ~3 slot.container 9 golden_apple 2
replaceitem block ~-6 ~1 ~3 slot.container 10 golden_carrot 9
replaceitem block ~-6 ~1 ~3 slot.container 11 crimson_stem 18
replaceitem block ~-6 ~1 ~3 slot.container 12 shroomlight 9
replaceitem block ~-6 ~1 ~3 slot.container 13 crying_obsidian 10
replaceitem block ~-6 ~1 ~3 slot.container 14 obsidian 13
loot insert ~-6 ~1 ~3 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-4 ~0
