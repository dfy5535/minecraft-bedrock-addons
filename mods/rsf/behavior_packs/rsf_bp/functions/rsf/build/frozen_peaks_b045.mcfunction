# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2221/4224 | 主题内编号: b045/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·十二柱神殿试炼场 (frozen_peaks_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 packed_ice []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_bricks []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 blue_ice []
setblock ~-4 ~-5 ~-5 soul_lantern []
setblock ~4 ~-5 ~5 soul_lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 goat_horn 3
replaceitem block ~0 ~-3 ~5 slot.container 1 leather 9
replaceitem block ~0 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~5 slot.container 4 arrow 26
replaceitem block ~0 ~-3 ~5 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 9 leather_boots 1
replaceitem block ~0 ~-3 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-3 ~5 slot.container 11 crossbow 1
replaceitem block ~0 ~-3 ~5 slot.container 12 campfire 4
replaceitem block ~0 ~-3 ~5 slot.container 13 lantern 7
replaceitem block ~0 ~-3 ~5 slot.container 14 emerald 10
loot insert ~0 ~-3 ~5 loot "rsf/frozen_peaks"
loot insert ~0 ~-3 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 snow []
fill ~-6 ~1 ~-7 ~-6 ~5 ~-7 polished_deepslate []
fill ~-6 ~1 ~7 ~-6 ~5 ~7 polished_deepslate []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 polished_deepslate []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 polished_deepslate []
fill ~-2 ~1 ~-7 ~-2 ~5 ~-7 polished_deepslate []
fill ~-2 ~1 ~7 ~-2 ~5 ~7 polished_deepslate []
fill ~0 ~1 ~-7 ~0 ~5 ~-7 polished_deepslate []
fill ~0 ~1 ~7 ~0 ~5 ~7 polished_deepslate []
fill ~2 ~1 ~-7 ~2 ~5 ~-7 polished_deepslate []
fill ~2 ~1 ~7 ~2 ~5 ~7 polished_deepslate []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 polished_deepslate []
fill ~4 ~1 ~7 ~4 ~5 ~7 polished_deepslate []
fill ~6 ~1 ~-7 ~6 ~5 ~-7 polished_deepslate []
fill ~6 ~1 ~7 ~6 ~5 ~7 polished_deepslate []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 polished_deepslate []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 polished_deepslate []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 polished_deepslate []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 polished_deepslate []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 polished_deepslate []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 polished_deepslate []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 polished_deepslate []
fill ~6 ~1 ~1 ~6 ~5 ~1 polished_deepslate []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 polished_deepslate []
fill ~6 ~1 ~3 ~6 ~5 ~3 polished_deepslate []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 polished_deepslate []
fill ~6 ~1 ~5 ~6 ~5 ~5 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 polished_deepslate []
setblock ~-6 ~9 ~-7 soul_lantern []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 polished_deepslate []
setblock ~-6 ~9 ~7 soul_lantern []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 polished_deepslate []
setblock ~6 ~9 ~-7 soul_lantern []
fill ~6 ~6 ~7 ~6 ~8 ~7 polished_deepslate []
setblock ~6 ~9 ~7 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 polished_deepslate []
setblock ~0 ~4 ~-9 iron_block []
setblock ~0 ~5 ~-9 soul_lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 polished_deepslate []
setblock ~0 ~4 ~9 iron_block []
setblock ~0 ~5 ~9 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 polished_deepslate []
setblock ~-8 ~4 ~0 iron_block []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 polished_deepslate []
setblock ~8 ~4 ~0 iron_block []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~-1 ~-7 ~8 ~-1 deepslate_bricks []
setblock ~-7 ~9 ~-1 packed_ice []
setblock ~-7 ~10 ~-1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 goat_horn 6
replaceitem block ~5 ~1 ~6 slot.container 1 leather 12
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 bone 12
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_mutton 10
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 11 leather_boots 1
replaceitem block ~5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 13 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 14 campfire 2
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
