# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0452/4224 | 主题内编号: b068/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·断裂凯旋高架拱廊 (roofed_forest_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 dark_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 deepslate_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

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

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-7 ~0 ~0 ~-8 ~5 ~2 iron_bars []
fill ~-7 ~6 ~0 ~-8 ~6 ~2 dark_oak_slab []
setblock ~-8 ~7 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 string 15
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 3 totem_of_undying 8
replaceitem block ~-5 ~1 ~4 slot.container 4 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_chestplate 1
replaceitem block ~-5 ~1 ~4 slot.container 10 crossbow 1
replaceitem block ~-5 ~1 ~4 slot.container 11 arrow 30
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 4
replaceitem block ~-5 ~1 ~4 slot.container 13 dark_oak_log 17
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-5 ~1 ~4 loot "rsf/roofed_forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 1 totem_of_undying 3
replaceitem block ~5 ~1 ~4 slot.container 2 emerald 9
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 4 bone 15
replaceitem block ~5 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~5 ~1 ~4 slot.container 9 iron_chestplate 1
replaceitem block ~5 ~1 ~4 slot.container 10 crossbow 1
replaceitem block ~5 ~1 ~4 slot.container 11 arrow 28
replaceitem block ~5 ~1 ~4 slot.container 12 lantern 9
replaceitem block ~5 ~1 ~4 slot.container 13 dark_oak_log 22
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~5 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~4 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
