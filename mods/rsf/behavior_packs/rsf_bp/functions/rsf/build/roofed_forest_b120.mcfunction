# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0504/4224 | 主题内编号: b120/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·引水渠跨桥水培温室 (roofed_forest_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_deepslate []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 deepslate_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 dark_oak_planks []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 12
replaceitem block ~0 ~-3 ~-4 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 2 totem_of_undying 5
replaceitem block ~0 ~-3 ~-4 slot.container 3 emerald 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 crossbow 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 arrow 30
replaceitem block ~0 ~-3 ~-4 slot.container 11 lantern 4
replaceitem block ~0 ~-3 ~-4 slot.container 12 dark_oak_log 17
replaceitem block ~0 ~-3 ~-4 slot.container 13 golden_apple 4
replaceitem block ~0 ~-3 ~-4 slot.container 14 mushroom_stew 1
loot insert ~0 ~-3 ~-4 loot "rsf/roofed_forest"
loot insert ~0 ~-3 ~-4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 deepslate_bricks []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 dark_oak_planks []
fill ~-4 ~7 ~-4 ~4 ~8 ~4 glass []
fill ~-3 ~7 ~-3 ~3 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 dark_oak_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-6 ~0 ~-3 ~-7 ~7 ~-1 iron_bars []
fill ~-6 ~8 ~-3 ~-7 ~8 ~-1 dark_oak_slab []
setblock ~-7 ~9 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~4 crafting_table []
setblock ~-3 ~1 ~4 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 emerald 6
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 5 string 15
replaceitem block ~-4 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~-4 ~1 ~4 slot.container 10 iron_ingot 9
replaceitem block ~-4 ~1 ~4 slot.container 11 diamond 4
replaceitem block ~-4 ~1 ~4 slot.container 12 experience_bottle 7
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~-4 ~1 ~4 slot.container 14 crossbow 1
loot insert ~-4 ~1 ~4 loot "rsf/roofed_forest"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 bone 15
replaceitem block ~4 ~1 ~4 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~4 slot.container 3 string 10
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 5 totem_of_undying 3
replaceitem block ~4 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~4 ~1 ~4 slot.container 10 iron_ingot 14
replaceitem block ~4 ~1 ~4 slot.container 11 diamond 2
replaceitem block ~4 ~1 ~4 slot.container 12 experience_bottle 5
replaceitem block ~4 ~1 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~4 ~1 ~4 slot.container 14 crossbow 1
loot insert ~4 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~4 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
