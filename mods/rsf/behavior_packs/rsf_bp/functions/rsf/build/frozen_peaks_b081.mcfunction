# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2257/4224 | 主题内编号: b081/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·双高炉重工冶炼密室 (frozen_peaks_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 deepslate_bricks [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 deepslate_bricks [] replace water
fill ~-5 ~1 ~-7 ~5 ~7 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 packed_ice []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 deepslate_bricks []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
setblock ~-2 ~-6 ~0 blast_furnace []
setblock ~2 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-4 ~4 slot.container 0 goat_horn 3
replaceitem block ~2 ~-4 ~4 slot.container 1 leather 9
replaceitem block ~2 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-4 ~4 slot.container 3 bone 17
replaceitem block ~2 ~-4 ~4 slot.container 4 arrow 26
replaceitem block ~2 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~2 ~-4 ~4 slot.container 9 crossbow 1
replaceitem block ~2 ~-4 ~4 slot.container 10 campfire 5
replaceitem block ~2 ~-4 ~4 slot.container 11 lantern 8
replaceitem block ~2 ~-4 ~4 slot.container 12 emerald 11
replaceitem block ~2 ~-4 ~4 slot.container 13 iron_ingot 14
replaceitem block ~2 ~-4 ~4 slot.container 14 coal 16
loot insert ~2 ~-4 ~4 loot "rsf/frozen_peaks"
loot insert ~2 ~-4 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-4 ~1 ~-6 ~4 ~5 ~6 deepslate_bricks []
fill ~-3 ~1 ~-5 ~3 ~4 ~5 air []
fill ~-4 ~1 ~6 ~-5 ~8 ~6 snow []
setblock ~-4 ~9 ~6 soul_lantern []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-7 ~-5 ~6 ~7 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-7 ~5 ~6 ~7 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~-4 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-6 ~4 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-6 ~3 ~7 ~6 deepslate_brick_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 snow []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 snow []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 polished_deepslate []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 polished_deepslate []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 deepslate_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x7x6) ---
fill ~-5 ~0 ~0 ~-5 ~9 ~0 deepslate_bricks []
setblock ~-5 ~10 ~0 packed_ice []
setblock ~-5 ~11 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 2 string 11
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 4 goat_horn 6
replaceitem block ~3 ~1 ~5 slot.container 5 leather 12
replaceitem block ~3 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~3 ~1 ~5 slot.container 10 coal 20
replaceitem block ~3 ~1 ~5 slot.container 11 cooked_mutton 13
replaceitem block ~3 ~1 ~5 slot.container 12 golden_apple 8
replaceitem block ~3 ~1 ~5 slot.container 13 leather_boots 1
replaceitem block ~3 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~3 ~1 ~5 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
