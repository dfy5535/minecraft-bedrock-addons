# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0448/4224 | 主题内编号: b064/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·U型冥庭守墓人陵园 (roofed_forest_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 dark_oak_planks []
setblock ~0 ~-6 ~0 red_mushroom_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 spider_eye 6
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 9
replaceitem block ~0 ~-3 ~-4 slot.container 3 string 12
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 5 totem_of_undying 5
replaceitem block ~0 ~-3 ~-4 slot.container 9 dark_oak_log 19
replaceitem block ~0 ~-3 ~-4 slot.container 10 golden_apple 6
replaceitem block ~0 ~-3 ~-4 slot.container 11 mushroom_stew 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_ingot 14
replaceitem block ~0 ~-3 ~-4 slot.container 13 diamond 2
replaceitem block ~0 ~-3 ~-4 slot.container 14 experience_bottle 5
loot insert ~0 ~-3 ~-4 loot "rsf/roofed_forest"
loot insert ~0 ~-3 ~-4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 deepslate_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 dark_oak_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 dark_oak_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 dark_oak_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 dark_oak_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 deepslate_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 dark_oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 dark_oak_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 dark_oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 dark_oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 dark_oak_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-6 ~0 ~-4 ~-7 ~6 ~-2 iron_bars []
fill ~-6 ~7 ~-4 ~-7 ~7 ~-2 dark_oak_slab []
setblock ~-7 ~8 ~-3 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 5 string 15
replaceitem block ~-4 ~1 ~5 slot.container 9 diamond 2
replaceitem block ~-4 ~1 ~5 slot.container 10 experience_bottle 5
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~-4 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~-4 ~1 ~5 slot.container 13 arrow 28
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 9
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 3 string 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 5 totem_of_undying 3
replaceitem block ~4 ~1 ~5 slot.container 9 diamond 7
replaceitem block ~4 ~1 ~5 slot.container 10 experience_bottle 10
replaceitem block ~4 ~1 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 13 arrow 26
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 7
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
