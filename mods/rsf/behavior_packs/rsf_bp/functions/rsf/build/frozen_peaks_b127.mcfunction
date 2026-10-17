# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2303/4224 | 主题内编号: b127/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·万神殿巨型穹顶与试炼宫 (frozen_peaks_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobblestone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 snow []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
setblock ~-4 ~-6 ~-5 torch []
setblock ~4 ~-6 ~5 torch []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 17
replaceitem block ~0 ~-4 ~5 slot.container 2 arrow 26
replaceitem block ~0 ~-4 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 4 string 8
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 9 iron_ingot 12
replaceitem block ~0 ~-4 ~5 slot.container 10 coal 21
replaceitem block ~0 ~-4 ~5 slot.container 11 cooked_mutton 14
replaceitem block ~0 ~-4 ~5 slot.container 12 golden_apple 2
replaceitem block ~0 ~-4 ~5 slot.container 13 leather_boots 1
replaceitem block ~0 ~-4 ~5 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-4 ~5 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 stone_bricks []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 spruce_log []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 spruce_log []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 spruce_log []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 spruce_log []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 spruce_log []
fill ~-2 ~1 ~7 ~-2 ~6 ~7 spruce_log []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 spruce_log []
fill ~0 ~1 ~7 ~0 ~6 ~7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 spruce_log []
fill ~2 ~1 ~7 ~2 ~6 ~7 spruce_log []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 spruce_log []
fill ~4 ~1 ~7 ~4 ~6 ~7 spruce_log []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 spruce_log []
fill ~6 ~1 ~7 ~6 ~6 ~7 spruce_log []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 spruce_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 stone_bricks []
fill ~-5 ~8 ~-6 ~5 ~9 ~6 glass []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 spruce_log []
setblock ~0 ~4 ~-9 emerald_block []
setblock ~0 ~5 ~-9 torch []
fill ~0 ~0 ~9 ~0 ~3 ~9 spruce_log []
setblock ~0 ~4 ~9 emerald_block []
setblock ~0 ~5 ~9 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 spruce_log []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 spruce_log []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~-7 ~0 ~-3 ~-7 ~5 ~-3 deepslate_bricks []
setblock ~-7 ~6 ~-3 packed_ice []
setblock ~-7 ~7 ~-3 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 1 bone 12
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 string 11
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 4
replaceitem block ~5 ~1 ~6 slot.container 10 emerald 7
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 12 coal 19
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_mutton 12
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 7
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~-4 ~0
