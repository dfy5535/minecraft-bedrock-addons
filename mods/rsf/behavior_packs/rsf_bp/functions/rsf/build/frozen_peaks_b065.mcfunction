# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2241/4224 | 主题内编号: b065/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·断柱露天古神庙废墟 (frozen_peaks_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x17 | 地上高度 5格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 deepslate_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~7 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 packed_ice []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 calcite []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 goat_horn 3
replaceitem block ~3 ~-3 ~5 slot.container 1 leather 9
replaceitem block ~3 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~5 slot.container 3 bone 17
replaceitem block ~3 ~-3 ~5 slot.container 4 arrow 26
replaceitem block ~3 ~-3 ~5 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-3 ~5 slot.container 9 crossbow 1
replaceitem block ~3 ~-3 ~5 slot.container 10 campfire 7
replaceitem block ~3 ~-3 ~5 slot.container 11 lantern 10
replaceitem block ~3 ~-3 ~5 slot.container 12 emerald 6
replaceitem block ~3 ~-3 ~5 slot.container 13 iron_ingot 9
replaceitem block ~3 ~-3 ~5 slot.container 14 coal 18
loot insert ~3 ~-3 ~5 loot "rsf/frozen_peaks"
loot insert ~3 ~-3 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 snow []
fill ~-5 ~1 ~-7 ~-5 ~4 ~-7 polished_deepslate []
fill ~-5 ~1 ~7 ~-5 ~4 ~7 polished_deepslate []
fill ~-3 ~1 ~-7 ~-3 ~4 ~-7 polished_deepslate []
fill ~-3 ~1 ~7 ~-3 ~4 ~7 polished_deepslate []
fill ~-1 ~1 ~-7 ~-1 ~4 ~-7 polished_deepslate []
fill ~-1 ~1 ~7 ~-1 ~4 ~7 polished_deepslate []
fill ~1 ~1 ~-7 ~1 ~4 ~-7 polished_deepslate []
fill ~1 ~1 ~7 ~1 ~4 ~7 polished_deepslate []
fill ~3 ~1 ~-7 ~3 ~4 ~-7 polished_deepslate []
fill ~3 ~1 ~7 ~3 ~4 ~7 polished_deepslate []
fill ~5 ~1 ~-7 ~5 ~4 ~-7 polished_deepslate []
fill ~5 ~1 ~7 ~5 ~4 ~7 polished_deepslate []
fill ~-5 ~1 ~-5 ~-5 ~4 ~-5 polished_deepslate []
fill ~5 ~1 ~-5 ~5 ~4 ~-5 polished_deepslate []
fill ~-5 ~1 ~-3 ~-5 ~4 ~-3 polished_deepslate []
fill ~5 ~1 ~-3 ~5 ~4 ~-3 polished_deepslate []
fill ~-5 ~1 ~-1 ~-5 ~4 ~-1 polished_deepslate []
fill ~5 ~1 ~-1 ~5 ~4 ~-1 polished_deepslate []
fill ~-5 ~1 ~1 ~-5 ~4 ~1 polished_deepslate []
fill ~5 ~1 ~1 ~5 ~4 ~1 polished_deepslate []
fill ~-5 ~1 ~3 ~-5 ~4 ~3 polished_deepslate []
fill ~5 ~1 ~3 ~5 ~4 ~3 polished_deepslate []
fill ~-5 ~1 ~5 ~-5 ~4 ~5 polished_deepslate []
fill ~5 ~1 ~5 ~5 ~4 ~5 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 deepslate_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-9 ~-7 ~3 ~-9 polished_deepslate []
setblock ~-7 ~4 ~-9 soul_lantern []
fill ~-7 ~0 ~9 ~-7 ~3 ~9 polished_deepslate []
setblock ~-7 ~4 ~9 soul_lantern []
fill ~7 ~0 ~-9 ~7 ~3 ~-9 polished_deepslate []
setblock ~7 ~4 ~-9 soul_lantern []
fill ~7 ~0 ~9 ~7 ~3 ~9 polished_deepslate []
setblock ~7 ~4 ~9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x10x5) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 deepslate_bricks []
setblock ~-6 ~9 ~-2 packed_ice []
setblock ~-6 ~10 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~6 slot.container 2 string 11
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~6 slot.container 4 goat_horn 6
replaceitem block ~4 ~1 ~6 slot.container 5 leather 12
replaceitem block ~4 ~1 ~6 slot.container 9 cooked_mutton 9
replaceitem block ~4 ~1 ~6 slot.container 10 golden_apple 4
replaceitem block ~4 ~1 ~6 slot.container 11 leather_boots 1
replaceitem block ~4 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~6 slot.container 13 crossbow 1
replaceitem block ~4 ~1 ~6 slot.container 14 campfire 8
loot insert ~4 ~1 ~6 loot "rsf/frozen_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
