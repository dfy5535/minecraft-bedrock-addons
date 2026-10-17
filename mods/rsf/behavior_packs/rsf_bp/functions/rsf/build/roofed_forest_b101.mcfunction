# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0485/4224 | 主题内编号: b101/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·L型驻军兵营军械所 (roofed_forest_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 dark_oak_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 rotten_flesh 18
replaceitem block ~3 ~-3 ~4 slot.container 1 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 2 spider_eye 6
replaceitem block ~3 ~-3 ~4 slot.container 3 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 4 string 12
replaceitem block ~3 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 9 lantern 9
replaceitem block ~3 ~-3 ~4 slot.container 10 dark_oak_log 22
replaceitem block ~3 ~-3 ~4 slot.container 11 golden_apple 2
replaceitem block ~3 ~-3 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~3 ~-3 ~4 slot.container 13 iron_ingot 10
replaceitem block ~3 ~-3 ~4 slot.container 14 diamond 5
loot insert ~3 ~-3 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~-3 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~7 ~6 cobblestone []
fill ~-5 ~1 ~0 ~5 ~6 ~6 dark_oak_planks []
fill ~-4 ~1 ~-5 ~-1 ~6 ~5 air []
fill ~-1 ~1 ~1 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 dark_oak_planks []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone_wall []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 dark_oak_log []
setblock ~-5 ~9 ~-6 torch []
setblock ~-5 ~8 ~6 dark_oak_log []
setblock ~-5 ~9 ~6 torch []
setblock ~5 ~8 ~-6 dark_oak_log []
setblock ~5 ~9 ~-6 torch []
setblock ~5 ~8 ~6 dark_oak_log []
setblock ~5 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_dark_oak_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_dark_oak_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_dark_oak_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_dark_oak_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-6 ~0 ~-3 ~-7 ~3 ~-1 iron_bars []
fill ~-6 ~4 ~-3 ~-7 ~4 ~-1 dark_oak_slab []
setblock ~-7 ~5 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 15
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 2 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 3 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 bone 12
replaceitem block ~4 ~1 ~5 slot.container 9 experience_bottle 6
replaceitem block ~4 ~1 ~5 slot.container 10 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 11 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 12 arrow 29
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 14 dark_oak_log 16
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-3 ~0
