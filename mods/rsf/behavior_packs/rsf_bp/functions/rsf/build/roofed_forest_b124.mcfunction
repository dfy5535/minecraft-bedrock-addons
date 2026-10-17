# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0508/4224 | 主题内编号: b124/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·三层重檐帝王阁楼与秘库 (roofed_forest_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x17 | 地上高度 10格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~14 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~14 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~14 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~14 ~9 air [] replace log2
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 deepslate_bricks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 polished_deepslate []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 cobblestone []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 emerald 11
replaceitem block ~3 ~-3 ~5 slot.container 1 rotten_flesh 18
replaceitem block ~3 ~-3 ~5 slot.container 2 bone 17
replaceitem block ~3 ~-3 ~5 slot.container 3 spider_eye 6
replaceitem block ~3 ~-3 ~5 slot.container 4 gunpowder 9
replaceitem block ~3 ~-3 ~5 slot.container 5 string 12
replaceitem block ~3 ~-3 ~5 slot.container 9 arrow 24
replaceitem block ~3 ~-3 ~5 slot.container 10 lantern 5
replaceitem block ~3 ~-3 ~5 slot.container 11 dark_oak_log 18
replaceitem block ~3 ~-3 ~5 slot.container 12 golden_apple 5
replaceitem block ~3 ~-3 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~3 ~-3 ~5 slot.container 14 iron_ingot 13
loot insert ~3 ~-3 ~5 loot "rsf/roofed_forest"
loot insert ~3 ~-3 ~5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 deepslate_bricks []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-6 ~5 ~-8 ~6 ~5 ~8 deepslate_brick_slab []
fill ~-4 ~6 ~-6 ~4 ~10 ~6 cobblestone []
fill ~-3 ~6 ~-5 ~3 ~9 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~6 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~10 ~-8 ~6 ~10 ~8 deepslate_brick_slab []
fill ~-4 ~11 ~-6 ~4 ~12 ~6 cobblestone []
fill ~-5 ~13 ~-7 ~5 ~13 ~7 dark_oak_slab []
setblock ~0 ~14 ~0 emerald_block []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 cracked_stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x10x5) ---
fill ~-6 ~0 ~0 ~-7 ~6 ~2 iron_bars []
fill ~-6 ~7 ~0 ~-7 ~7 ~2 dark_oak_slab []
setblock ~-7 ~8 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~6 slot.container 1 string 15
replaceitem block ~-4 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 3 totem_of_undying 8
replaceitem block ~-4 ~1 ~6 slot.container 4 emerald 6
replaceitem block ~-4 ~1 ~6 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~6 slot.container 9 diamond 6
replaceitem block ~-4 ~1 ~6 slot.container 10 experience_bottle 9
replaceitem block ~-4 ~1 ~6 slot.container 11 iron_chestplate 1
replaceitem block ~-4 ~1 ~6 slot.container 12 crossbow 1
replaceitem block ~-4 ~1 ~6 slot.container 13 arrow 25
replaceitem block ~-4 ~1 ~6 slot.container 14 lantern 6
loot insert ~-4 ~1 ~6 loot "rsf/roofed_forest"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 1 totem_of_undying 3
replaceitem block ~4 ~1 ~6 slot.container 2 emerald 9
replaceitem block ~4 ~1 ~6 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~6 slot.container 4 bone 15
replaceitem block ~4 ~1 ~6 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~6 slot.container 9 diamond 4
replaceitem block ~4 ~1 ~6 slot.container 10 experience_bottle 7
replaceitem block ~4 ~1 ~6 slot.container 11 iron_chestplate 1
replaceitem block ~4 ~1 ~6 slot.container 12 crossbow 1
replaceitem block ~4 ~1 ~6 slot.container 13 arrow 30
replaceitem block ~4 ~1 ~6 slot.container 14 lantern 4
loot insert ~4 ~1 ~6 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~6 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
