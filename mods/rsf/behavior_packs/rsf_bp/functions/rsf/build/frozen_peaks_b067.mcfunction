# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2243/4224 | 主题内编号: b067/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·半掩埋下沉庭院遗迹 (frozen_peaks_ruin_sunken_courtyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~1 ~-7 ~6 ~6 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 snow []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 goat_horn 3
replaceitem block ~-3 ~-4 ~4 slot.container 1 leather 9
replaceitem block ~-3 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-4 ~4 slot.container 3 bone 17
replaceitem block ~-3 ~-4 ~4 slot.container 4 arrow 26
replaceitem block ~-3 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~-3 ~-4 ~4 slot.container 9 leather_boots 1
replaceitem block ~-3 ~-4 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~-3 ~-4 ~4 slot.container 11 crossbow 1
replaceitem block ~-3 ~-4 ~4 slot.container 12 campfire 2
replaceitem block ~-3 ~-4 ~4 slot.container 13 lantern 5
replaceitem block ~-3 ~-4 ~4 slot.container 14 emerald 8
loot insert ~-3 ~-4 ~4 loot "rsf/frozen_peaks"
loot insert ~-3 ~-4 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~4 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~4 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~4 ~-6 ~5 ~4 ~6 cobblestone_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-5 ~3 ~-1 ~-5 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 polished_deepslate []
setblock ~-6 ~4 ~-7 soul_lantern []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 polished_deepslate []
setblock ~-6 ~4 ~7 soul_lantern []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 polished_deepslate []
setblock ~6 ~4 ~-7 soul_lantern []
fill ~6 ~0 ~7 ~6 ~3 ~7 polished_deepslate []
setblock ~6 ~4 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 deepslate_bricks []
setblock ~-6 ~6 ~-2 packed_ice []
setblock ~-6 ~7 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 11
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 goat_horn 6
replaceitem block ~4 ~1 ~5 slot.container 3 leather 12
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 bone 12
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 12 coal 22
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_mutton 8
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~-4 ~0
