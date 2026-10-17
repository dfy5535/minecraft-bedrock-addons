# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2190/4224 | 主题内编号: b014/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·暗渠蓄水池秘境地牢 (frozen_peaks_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 calcite [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 calcite [] replace water
fill ~-6 ~1 ~-7 ~6 ~6 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 bone 17
replaceitem block ~-3 ~-4 ~4 slot.container 1 arrow 26
replaceitem block ~-3 ~-4 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~-3 ~-4 ~4 slot.container 3 string 8
replaceitem block ~-3 ~-4 ~4 slot.container 4 gunpowder 9
replaceitem block ~-3 ~-4 ~4 slot.container 5 goat_horn 3
replaceitem block ~-3 ~-4 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-3 ~-4 ~4 slot.container 10 crossbow 1
replaceitem block ~-3 ~-4 ~4 slot.container 11 campfire 4
replaceitem block ~-3 ~-4 ~4 slot.container 12 lantern 7
replaceitem block ~-3 ~-4 ~4 slot.container 13 emerald 10
replaceitem block ~-3 ~-4 ~4 slot.container 14 iron_ingot 13
loot insert ~-3 ~-4 ~4 loot "rsf/frozen_peaks"
loot insert ~-3 ~-4 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~4 ~6 calcite []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~4 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 snow []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~4 ~-6 ~5 ~4 ~6 stone_brick_slab []
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

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x9x4) ---
fill ~-6 ~0 ~-1 ~-6 ~7 ~-1 deepslate_bricks []
setblock ~-6 ~8 ~-1 packed_ice []
setblock ~-6 ~9 ~-1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 3 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 string 11
replaceitem block ~-4 ~1 ~5 slot.container 9 emerald 12
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 11 coal 17
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_mutton 10
replaceitem block ~-4 ~1 ~5 slot.container 13 golden_apple 5
replaceitem block ~-4 ~1 ~5 slot.container 14 leather_boots 1
loot insert ~-4 ~1 ~5 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 24
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 string 14
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 goat_horn 1
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 11 coal 22
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_mutton 8
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 14 leather_boots 1
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon stray ~0 ~1 ~-1
summon goat ~-1 ~1 ~1
