# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0502/4224 | 主题内编号: b118/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·L型蜂农与林果采集屋 (roofed_forest_conservatory_l_apiary)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 2格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 dark_oak_planks []
fill ~-5 ~1 ~0 ~5 ~5 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 dark_oak_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 dark_oak_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 dark_oak_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 dark_oak_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 dark_oak_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 stripped_dark_oak_log []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 stripped_dark_oak_log []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 stripped_dark_oak_log []
fill ~6 ~0 ~2 ~6 ~5 ~2 stripped_dark_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~-6 ~0 ~-4 ~-7 ~5 ~-2 iron_bars []
fill ~-6 ~6 ~-4 ~-7 ~6 ~-2 dark_oak_slab []
setblock ~-7 ~7 ~-3 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 1 totem_of_undying 8
replaceitem block ~-4 ~1 ~5 slot.container 2 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_chestplate 1
replaceitem block ~-4 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~-4 ~1 ~5 slot.container 11 arrow 24
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 5
replaceitem block ~-4 ~1 ~5 slot.container 13 dark_oak_log 18
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 10
replaceitem block ~4 ~1 ~5 slot.container 9 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 11 arrow 29
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 13 dark_oak_log 16
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
