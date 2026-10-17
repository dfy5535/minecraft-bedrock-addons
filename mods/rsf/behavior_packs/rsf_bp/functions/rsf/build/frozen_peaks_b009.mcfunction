# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2185/4224 | 主题内编号: b009/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·铁栏双室地下死牢 (frozen_peaks_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~6 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 deepslate_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 soul_lantern []
setblock ~3 ~-6 ~-4 soul_lantern []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 string 8
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 9
replaceitem block ~3 ~-4 ~4 slot.container 2 goat_horn 3
replaceitem block ~3 ~-4 ~4 slot.container 3 leather 9
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 bone 17
replaceitem block ~3 ~-4 ~4 slot.container 9 crossbow 1
replaceitem block ~3 ~-4 ~4 slot.container 10 campfire 6
replaceitem block ~3 ~-4 ~4 slot.container 11 lantern 9
replaceitem block ~3 ~-4 ~4 slot.container 12 emerald 12
replaceitem block ~3 ~-4 ~4 slot.container 13 iron_ingot 8
replaceitem block ~3 ~-4 ~4 slot.container 14 coal 17
loot insert ~3 ~-4 ~4 loot "rsf/frozen_peaks"
loot insert ~3 ~-4 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 deepslate_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 snow []
fill ~0 ~1 ~-6 ~0 ~2 ~6 snow []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~4 ~-6 ~5 ~4 ~6 snow []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 deepslate_brick_wall []
fill ~-4 ~5 ~-5 ~4 ~5 ~5 air []
setblock ~-5 ~5 ~-6 polished_deepslate []
setblock ~-5 ~6 ~-6 soul_lantern []
setblock ~-5 ~5 ~6 polished_deepslate []
setblock ~-5 ~6 ~6 soul_lantern []
setblock ~5 ~5 ~-6 polished_deepslate []
setblock ~5 ~6 ~-6 soul_lantern []
setblock ~5 ~5 ~6 polished_deepslate []
setblock ~5 ~6 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 snow []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 polished_deepslate []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 polished_deepslate []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 deepslate_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-6 ~0 ~0 ~-6 ~7 ~0 deepslate_bricks []
setblock ~-6 ~8 ~0 packed_ice []
setblock ~-6 ~9 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-3 ~1 ~4 crafting_table []
setblock ~-2 ~1 ~4 furnace []
setblock ~3 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 11
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 4 goat_horn 6
replaceitem block ~4 ~1 ~5 slot.container 5 leather 12
replaceitem block ~4 ~1 ~5 slot.container 9 leather_boots 1
replaceitem block ~4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 11 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 12 campfire 6
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 12
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
