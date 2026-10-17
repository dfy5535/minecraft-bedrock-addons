# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0388/4224 | 主题内编号: b004/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双子火盆高台神坛 (roofed_forest_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_campfire]
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

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 deepslate_bricks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 dark_oak_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 dark_oak_log []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 dark_oak_log []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 dark_oak_log []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 dark_oak_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_oak_planks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-7 ~0 ~1 ~-8 ~6 ~3 iron_bars []
fill ~-7 ~7 ~1 ~-8 ~7 ~3 dark_oak_slab []
setblock ~-8 ~8 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 string 15
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 3 totem_of_undying 8
replaceitem block ~-5 ~1 ~4 slot.container 4 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 5
replaceitem block ~-5 ~1 ~4 slot.container 10 experience_bottle 8
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_chestplate 1
replaceitem block ~-5 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~-5 ~1 ~4 slot.container 13 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 5
loot insert ~-5 ~1 ~4 loot "rsf/roofed_forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 1 totem_of_undying 3
replaceitem block ~5 ~1 ~4 slot.container 2 emerald 9
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 4 bone 15
replaceitem block ~5 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~5 ~1 ~4 slot.container 9 diamond 3
replaceitem block ~5 ~1 ~4 slot.container 10 experience_bottle 6
replaceitem block ~5 ~1 ~4 slot.container 11 iron_chestplate 1
replaceitem block ~5 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~5 ~1 ~4 slot.container 13 arrow 29
replaceitem block ~5 ~1 ~4 slot.container 14 lantern 10
loot insert ~5 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~4 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
