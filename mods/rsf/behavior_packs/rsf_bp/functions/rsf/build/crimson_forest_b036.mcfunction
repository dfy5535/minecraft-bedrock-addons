# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3620/4224 | 主题内编号: b036/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·下沉碑林地宫方尖碑 (crimson_forest_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 5格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace fire
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 blackstone []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 shroomlight []
setblock ~3 ~-6 ~-2 shroomlight []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 string 13
replaceitem block ~3 ~-4 ~2 slot.container 1 ender_pearl 8
replaceitem block ~3 ~-4 ~2 slot.container 2 leather 17
replaceitem block ~3 ~-4 ~2 slot.container 3 cooked_porkchop 16
replaceitem block ~3 ~-4 ~2 slot.container 4 gold_ingot 17
replaceitem block ~3 ~-4 ~2 slot.container 5 blaze_rod 4
replaceitem block ~3 ~-4 ~2 slot.container 9 crimson_stem 19
replaceitem block ~3 ~-4 ~2 slot.container 10 shroomlight 10
replaceitem block ~3 ~-4 ~2 slot.container 11 crying_obsidian 11
replaceitem block ~3 ~-4 ~2 slot.container 12 obsidian 14
replaceitem block ~3 ~-4 ~2 slot.container 13 netherite_scrap 1
replaceitem block ~3 ~-4 ~2 slot.container 14 golden_helmet 1
loot insert ~3 ~-4 ~2 loot "rsf/crimson_forest"
loot insert ~3 ~-4 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 blackstone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 crimson_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 crimson_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 crimson_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 blackstone []
fill ~0 ~16 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 crimson_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~-7 ~8 ~5 ~-7 gilded_blackstone []
setblock ~8 ~6 ~-7 gold_block []
setblock ~8 ~7 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 magma_cream 10
replaceitem block ~-4 ~1 ~2 slot.container 1 ghast_tear 8
replaceitem block ~-4 ~1 ~2 slot.container 2 string 16
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 11
replaceitem block ~-4 ~1 ~2 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 5 cooked_porkchop 11
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 3
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_carrot 10
replaceitem block ~-4 ~1 ~2 slot.container 11 crimson_stem 19
replaceitem block ~-4 ~1 ~2 slot.container 12 shroomlight 10
replaceitem block ~-4 ~1 ~2 slot.container 13 crying_obsidian 11
replaceitem block ~-4 ~1 ~2 slot.container 14 obsidian 14
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-4 ~0
