# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0392/4224 | 主题内编号: b008/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·凯旋双拱圣物祭坛 (roofed_forest_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_deepslate []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 dark_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 deepslate_bricks []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 dark_oak_planks []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 dark_oak_fence []
fill ~-4 ~8 ~-4 ~4 ~8 ~4 air []
setblock ~-5 ~8 ~-5 dark_oak_log []
setblock ~-5 ~9 ~-5 lantern []
setblock ~-5 ~8 ~5 dark_oak_log []
setblock ~-5 ~9 ~5 lantern []
setblock ~5 ~8 ~-5 dark_oak_log []
setblock ~5 ~9 ~-5 lantern []
setblock ~5 ~8 ~5 dark_oak_log []
setblock ~5 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 cracked_stone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-6 ~0 ~0 ~-7 ~5 ~2 iron_bars []
fill ~-6 ~6 ~0 ~-7 ~6 ~2 dark_oak_slab []
setblock ~-7 ~7 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 emerald 6
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 5 string 15
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_chestplate 1
replaceitem block ~-4 ~1 ~4 slot.container 10 crossbow 1
replaceitem block ~-4 ~1 ~4 slot.container 11 arrow 26
replaceitem block ~-4 ~1 ~4 slot.container 12 lantern 7
replaceitem block ~-4 ~1 ~4 slot.container 13 dark_oak_log 20
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~-4 ~1 ~4 loot "rsf/roofed_forest"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 bone 15
replaceitem block ~4 ~1 ~4 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~4 slot.container 3 string 10
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 5 totem_of_undying 3
replaceitem block ~4 ~1 ~4 slot.container 9 iron_chestplate 1
replaceitem block ~4 ~1 ~4 slot.container 10 crossbow 1
replaceitem block ~4 ~1 ~4 slot.container 11 arrow 24
replaceitem block ~4 ~1 ~4 slot.container 12 lantern 5
replaceitem block ~4 ~1 ~4 slot.container 13 dark_oak_log 18
replaceitem block ~4 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~4 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~4 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
