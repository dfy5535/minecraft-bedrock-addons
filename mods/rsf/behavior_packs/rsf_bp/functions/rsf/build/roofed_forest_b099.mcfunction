# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0483/4224 | 主题内编号: b099/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·铁闸门瓮城防御堡 (roofed_forest_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cracked_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 deepslate_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 totem_of_undying 5
replaceitem block ~3 ~-3 ~3 slot.container 1 emerald 11
replaceitem block ~3 ~-3 ~3 slot.container 2 rotten_flesh 18
replaceitem block ~3 ~-3 ~3 slot.container 3 bone 17
replaceitem block ~3 ~-3 ~3 slot.container 4 spider_eye 6
replaceitem block ~3 ~-3 ~3 slot.container 5 gunpowder 9
replaceitem block ~3 ~-3 ~3 slot.container 9 iron_ingot 11
replaceitem block ~3 ~-3 ~3 slot.container 10 diamond 6
replaceitem block ~3 ~-3 ~3 slot.container 11 experience_bottle 9
replaceitem block ~3 ~-3 ~3 slot.container 12 iron_chestplate 1
replaceitem block ~3 ~-3 ~3 slot.container 13 crossbow 1
replaceitem block ~3 ~-3 ~3 slot.container 14 arrow 25
loot insert ~3 ~-3 ~3 loot "rsf/roofed_forest"
loot insert ~3 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 dark_oak_planks []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 cobblestone_wall []
fill ~-4 ~8 ~-4 ~4 ~8 ~4 air []
setblock ~-5 ~8 ~-5 stripped_dark_oak_log []
setblock ~-5 ~9 ~-5 soul_lantern []
setblock ~-5 ~8 ~5 stripped_dark_oak_log []
setblock ~-5 ~9 ~5 soul_lantern []
setblock ~5 ~8 ~-5 stripped_dark_oak_log []
setblock ~5 ~9 ~-5 soul_lantern []
setblock ~5 ~8 ~5 stripped_dark_oak_log []
setblock ~5 ~9 ~5 soul_lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-6 ~0 ~1 ~-7 ~6 ~3 iron_bars []
fill ~-6 ~7 ~1 ~-7 ~7 ~3 dark_oak_slab []
setblock ~-7 ~8 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 bookshelf []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~4 slot.container 2 string 15
replaceitem block ~4 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 4 totem_of_undying 8
replaceitem block ~4 ~1 ~4 slot.container 5 emerald 6
replaceitem block ~4 ~1 ~4 slot.container 9 lantern 4
replaceitem block ~4 ~1 ~4 slot.container 10 dark_oak_log 17
replaceitem block ~4 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~4 ~1 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~4 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~4 ~1 ~4 slot.container 14 diamond 7
loot insert ~4 ~1 ~4 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
