# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2297/4224 | 主题内编号: b121/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·卫城廊柱王座大殿与地宫 (frozen_peaks_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 packed_ice []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_lantern []
setblock ~4 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 17
replaceitem block ~0 ~-4 ~5 slot.container 2 arrow 26
replaceitem block ~0 ~-4 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 4 string 8
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 9 cooked_mutton 8
replaceitem block ~0 ~-4 ~5 slot.container 10 golden_apple 3
replaceitem block ~0 ~-4 ~5 slot.container 11 leather_boots 1
replaceitem block ~0 ~-4 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~5 slot.container 13 crossbow 1
replaceitem block ~0 ~-4 ~5 slot.container 14 campfire 7
loot insert ~0 ~-4 ~5 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~5 loot "chests/pillager_outpost"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 15
replaceitem block ~0 ~-4 ~-5 slot.container 2 arrow 24
replaceitem block ~0 ~-4 ~-5 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 4 string 14
replaceitem block ~0 ~-4 ~-5 slot.container 5 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 9 cooked_mutton 14
replaceitem block ~0 ~-4 ~-5 slot.container 10 golden_apple 2
replaceitem block ~0 ~-4 ~-5 slot.container 11 leather_boots 1
replaceitem block ~0 ~-4 ~-5 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-5 slot.container 13 crossbow 1
replaceitem block ~0 ~-4 ~-5 slot.container 14 campfire 6
loot insert ~0 ~-4 ~-5 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~7 ~7 deepslate_bricks []
fill ~-5 ~1 ~0 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 polished_deepslate []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 polished_deepslate []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 polished_deepslate []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 polished_deepslate []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 polished_deepslate []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 polished_deepslate []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 polished_deepslate []
fill ~-6 ~7 ~-7 ~6 ~7 ~-1 snow []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-8 ~-7 ~8 ~8 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-8 ~7 ~8 ~8 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-7 ~-6 ~9 ~7 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-7 ~6 ~9 ~7 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-7 ~5 ~9 ~7 deepslate_brick_slab []
fill ~0 ~10 ~-8 ~0 ~10 ~8 snow []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 snow []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~-7 ~0 ~-2 ~-7 ~9 ~-2 deepslate_bricks []
setblock ~-7 ~10 ~-2 packed_ice []
setblock ~-7 ~11 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 blue_ice []
setblock ~0 ~1 ~0 iron_block []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 11
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 4 goat_horn 6
replaceitem block ~5 ~1 ~6 slot.container 5 leather 12
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 10 coal 18
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_mutton 11
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 6
replaceitem block ~5 ~1 ~6 slot.container 13 leather_boots 1
replaceitem block ~5 ~1 ~6 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~-4 ~0
