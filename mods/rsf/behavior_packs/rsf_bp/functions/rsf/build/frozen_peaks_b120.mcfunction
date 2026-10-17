# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2296/4224 | 主题内编号: b120/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·引水渠跨桥水培温室 (frozen_peaks_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~7 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 packed_ice []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 packed_ice []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~-3 ~-2 ~3 slot.container 1 string 8
replaceitem block ~-3 ~-2 ~3 slot.container 2 gunpowder 9
replaceitem block ~-3 ~-2 ~3 slot.container 3 goat_horn 3
replaceitem block ~-3 ~-2 ~3 slot.container 4 leather 9
replaceitem block ~-3 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~-3 ~-2 ~3 slot.container 9 golden_apple 3
replaceitem block ~-3 ~-2 ~3 slot.container 10 leather_boots 1
replaceitem block ~-3 ~-2 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~-3 ~-2 ~3 slot.container 12 crossbow 1
replaceitem block ~-3 ~-2 ~3 slot.container 13 campfire 7
replaceitem block ~-3 ~-2 ~3 slot.container 14 lantern 10
loot insert ~-3 ~-2 ~3 loot "rsf/frozen_peaks"
loot insert ~-3 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~5 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~4 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-5 ~5 ~5 ~5 packed_ice []
fill ~-4 ~6 ~-4 ~4 ~7 ~4 glass []
fill ~-3 ~6 ~-3 ~3 ~6 ~3 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 packed_ice []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 deepslate_bricks []
setblock ~-6 ~9 ~-2 packed_ice []
setblock ~-6 ~10 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 21
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 3 string 11
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 5 goat_horn 6
replaceitem block ~-4 ~1 ~4 slot.container 9 campfire 2
replaceitem block ~-4 ~1 ~4 slot.container 10 lantern 5
replaceitem block ~-4 ~1 ~4 slot.container 11 emerald 8
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~-4 ~1 ~4 slot.container 13 coal 20
replaceitem block ~-4 ~1 ~4 slot.container 14 cooked_mutton 13
loot insert ~-4 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~4 slot.container 1 string 14
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~4 slot.container 3 goat_horn 1
replaceitem block ~4 ~1 ~4 slot.container 4 leather 7
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 campfire 7
replaceitem block ~4 ~1 ~4 slot.container 10 lantern 10
replaceitem block ~4 ~1 ~4 slot.container 11 emerald 6
replaceitem block ~4 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~4 ~1 ~4 slot.container 13 coal 18
replaceitem block ~4 ~1 ~4 slot.container 14 cooked_mutton 11
loot insert ~4 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~4 loot "chests/pillager_outpost"
summon zombie ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon stray ~1 ~1 ~1
