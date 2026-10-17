# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0407/4224 | 主题内编号: b023/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双层露台阁楼宝室 (roofed_forest_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace log2
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 cracked_stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dark_oak_planks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 emerald 11
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 18
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 17
replaceitem block ~0 ~-4 ~5 slot.container 3 spider_eye 6
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 5 string 12
replaceitem block ~0 ~-4 ~5 slot.container 9 diamond 3
replaceitem block ~0 ~-4 ~5 slot.container 10 experience_bottle 6
replaceitem block ~0 ~-4 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~0 ~-4 ~5 slot.container 12 crossbow 1
replaceitem block ~0 ~-4 ~5 slot.container 13 arrow 29
replaceitem block ~0 ~-4 ~5 slot.container 14 lantern 10
loot insert ~0 ~-4 ~5 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~5 loot "chests/woodland_mansion"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 emerald 9
replaceitem block ~0 ~-4 ~-5 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-4 ~-5 slot.container 2 bone 15
replaceitem block ~0 ~-4 ~-5 slot.container 3 spider_eye 12
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 5 string 10
replaceitem block ~0 ~-4 ~-5 slot.container 9 diamond 2
replaceitem block ~0 ~-4 ~-5 slot.container 10 experience_bottle 5
replaceitem block ~0 ~-4 ~-5 slot.container 11 iron_chestplate 1
replaceitem block ~0 ~-4 ~-5 slot.container 12 crossbow 1
replaceitem block ~0 ~-4 ~-5 slot.container 13 arrow 28
replaceitem block ~0 ~-4 ~-5 slot.container 14 lantern 9
loot insert ~0 ~-4 ~-5 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~-5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~4 ~6 mossy_stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-5 ~4 ~-7 ~5 ~4 ~7 stone_brick_slab []
fill ~-3 ~5 ~-5 ~3 ~8 ~5 deepslate_bricks []
fill ~-2 ~5 ~-4 ~2 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-7 ~5 ~8 ~7 stone_brick_slab []
fill ~-3 ~9 ~-5 ~3 ~10 ~5 deepslate_bricks []
fill ~-4 ~11 ~-6 ~4 ~11 ~6 deepslate_brick_slab []
setblock ~0 ~12 ~0 bookshelf []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~10 ~2 deepslate_bricks []
fill ~5 ~1 ~-1 ~6 ~9 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~11 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-5 ~0 ~-3 ~-6 ~5 ~-1 iron_bars []
fill ~-5 ~6 ~-3 ~-6 ~6 ~-1 dark_oak_slab []
setblock ~-6 ~7 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 totem_of_undying 8
replaceitem block ~3 ~1 ~5 slot.container 1 emerald 6
replaceitem block ~3 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~5 slot.container 3 bone 12
replaceitem block ~3 ~1 ~5 slot.container 4 spider_eye 9
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 9 golden_apple 3
replaceitem block ~3 ~1 ~5 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~1 ~5 slot.container 11 iron_ingot 11
replaceitem block ~3 ~1 ~5 slot.container 12 diamond 6
replaceitem block ~3 ~1 ~5 slot.container 13 experience_bottle 9
replaceitem block ~3 ~1 ~5 slot.container 14 iron_chestplate 1
loot insert ~3 ~1 ~5 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~2 ~0
