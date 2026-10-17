# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2233/4224 | 主题内编号: b057/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·中央石棺帝王地下陵寝 (frozen_peaks_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 4格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 deepslate_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 deepslate_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~6 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 packed_ice []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 calcite []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 snow []
setblock ~0 ~-7 ~0 iron_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 soul_lantern []
setblock ~2 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 string 8
replaceitem block ~0 ~-4 ~-5 slot.container 1 gunpowder 9
replaceitem block ~0 ~-4 ~-5 slot.container 2 goat_horn 3
replaceitem block ~0 ~-4 ~-5 slot.container 3 leather 9
replaceitem block ~0 ~-4 ~-5 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 5 bone 17
replaceitem block ~0 ~-4 ~-5 slot.container 9 leather_boots 1
replaceitem block ~0 ~-4 ~-5 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-5 slot.container 11 crossbow 1
replaceitem block ~0 ~-4 ~-5 slot.container 12 campfire 8
replaceitem block ~0 ~-4 ~-5 slot.container 13 lantern 4
replaceitem block ~0 ~-4 ~-5 slot.container 14 emerald 7
loot insert ~0 ~-4 ~-5 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 deepslate_bricks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 snow []
fill ~0 ~1 ~-7 ~0 ~2 ~7 snow []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 snow []
fill ~-4 ~6 ~-6 ~4 ~6 ~6 calcite []
fill ~-1 ~7 ~-1 ~1 ~7 ~1 blue_ice []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 packed_ice []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-6 ~0 ~-3 ~-6 ~5 ~-3 deepslate_bricks []
setblock ~-6 ~6 ~-3 packed_ice []
setblock ~-6 ~7 ~-3 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~6 slot.container 2 string 11
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~6 slot.container 4 goat_horn 6
replaceitem block ~4 ~1 ~6 slot.container 5 leather 12
replaceitem block ~4 ~1 ~6 slot.container 9 lantern 4
replaceitem block ~4 ~1 ~6 slot.container 10 emerald 7
replaceitem block ~4 ~1 ~6 slot.container 11 iron_ingot 10
replaceitem block ~4 ~1 ~6 slot.container 12 coal 19
replaceitem block ~4 ~1 ~6 slot.container 13 cooked_mutton 12
replaceitem block ~4 ~1 ~6 slot.container 14 golden_apple 7
loot insert ~4 ~1 ~6 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
