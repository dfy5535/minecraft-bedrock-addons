# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3071/4224 | 主题内编号: b127/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·万神殿巨型穹顶与试炼宫 (mushroom_island_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 brown_mushroom_block [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 brown_mushroom_block [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 brown_mushroom_block []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-4 ~-6 ~-5 shroomlight []
setblock ~4 ~-6 ~5 shroomlight []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 blaze_rod 6
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 18
replaceitem block ~0 ~-4 ~5 slot.container 3 gunpowder 17
replaceitem block ~0 ~-4 ~5 slot.container 4 string 10
replaceitem block ~0 ~-4 ~5 slot.container 5 spider_eye 9
replaceitem block ~0 ~-4 ~5 slot.container 9 golden_apple 4
replaceitem block ~0 ~-4 ~5 slot.container 10 diamond 5
replaceitem block ~0 ~-4 ~5 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-4 ~5 slot.container 12 bowl 11
replaceitem block ~0 ~-4 ~5 slot.container 13 shroomlight 10
replaceitem block ~0 ~-4 ~5 slot.container 14 mushroom_stew 1
loot insert ~0 ~-4 ~5 loot "rsf/mushroom_island"
loot insert ~0 ~-4 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 mushroom_stem []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 mushroom_stem []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 mushroom_stem []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 mushroom_stem []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 mushroom_stem []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 mushroom_stem []
fill ~-2 ~1 ~7 ~-2 ~6 ~7 mushroom_stem []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 mushroom_stem []
fill ~0 ~1 ~7 ~0 ~6 ~7 mushroom_stem []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 mushroom_stem []
fill ~2 ~1 ~7 ~2 ~6 ~7 mushroom_stem []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 mushroom_stem []
fill ~4 ~1 ~7 ~4 ~6 ~7 mushroom_stem []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 mushroom_stem []
fill ~6 ~1 ~7 ~6 ~6 ~7 mushroom_stem []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 mushroom_stem []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 mushroom_stem []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 mushroom_stem []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 mushroom_stem []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 mushroom_stem []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 mushroom_stem []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 mushroom_stem []
fill ~6 ~1 ~1 ~6 ~6 ~1 mushroom_stem []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 mushroom_stem []
fill ~6 ~1 ~3 ~6 ~6 ~3 mushroom_stem []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 mushroom_stem []
fill ~6 ~1 ~5 ~6 ~6 ~5 mushroom_stem []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 mushroom_stem []
fill ~-5 ~8 ~-6 ~5 ~9 ~6 glass []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 mushroom_stem []
setblock ~0 ~4 ~-9 emerald_block []
setblock ~0 ~5 ~-9 shroomlight []
fill ~0 ~0 ~9 ~0 ~3 ~9 mushroom_stem []
setblock ~0 ~4 ~9 emerald_block []
setblock ~0 ~5 ~9 shroomlight []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 mushroom_stem []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 shroomlight []
fill ~8 ~0 ~0 ~8 ~3 ~0 mushroom_stem []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~7 ~0 ~-1 ~7 ~5 ~-1 mushroom_stem []
fill ~6 ~6 ~-2 ~8 ~6 ~0 red_mushroom_block []
setblock ~7 ~5 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 blaze_rod 9
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 2 bone 13
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 4 string 13
replaceitem block ~5 ~1 ~6 slot.container 5 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 9 red_mushroom 17
replaceitem block ~5 ~1 ~6 slot.container 10 brown_mushroom 18
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 12 diamond 3
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 14 bowl 9
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-4 ~0
