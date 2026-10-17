# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3029/4224 | 主题内编号: b085/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双子烟囱砖石窑厂 (mushroom_island_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 quartz_block [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 quartz_block [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 quartz_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 brown_mushroom_block []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 quartz_block []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 bone 18
replaceitem block ~3 ~-3 ~3 slot.container 1 gunpowder 17
replaceitem block ~3 ~-3 ~3 slot.container 2 string 10
replaceitem block ~3 ~-3 ~3 slot.container 3 spider_eye 9
replaceitem block ~3 ~-3 ~3 slot.container 4 slime_ball 10
replaceitem block ~3 ~-3 ~3 slot.container 5 ender_pearl 7
replaceitem block ~3 ~-3 ~3 slot.container 9 red_mushroom 16
replaceitem block ~3 ~-3 ~3 slot.container 10 brown_mushroom 17
replaceitem block ~3 ~-3 ~3 slot.container 11 golden_apple 8
replaceitem block ~3 ~-3 ~3 slot.container 12 diamond 2
replaceitem block ~3 ~-3 ~3 slot.container 13 iron_ingot 9
replaceitem block ~3 ~-3 ~3 slot.container 14 bowl 8
loot insert ~3 ~-3 ~3 loot "rsf/mushroom_island"
loot insert ~3 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~8 ~5 quartz_block []
fill ~2 ~1 ~-5 ~5 ~8 ~5 quartz_block []
fill ~-4 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 red_mushroom_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 red_mushroom_block []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 quartz_block []
fill ~0 ~13 ~0 ~0 ~13 ~0 diamond_block []
setblock ~0 ~14 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_mushroom_block []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 mushroom_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 mushroom_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 quartz_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~6 ~0 ~-2 ~6 ~8 ~-2 mushroom_stem []
fill ~5 ~9 ~-3 ~7 ~9 ~-1 red_mushroom_block []
setblock ~6 ~8 ~-1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 slime_ball 13
replaceitem block ~4 ~1 ~4 slot.container 1 ender_pearl 10
replaceitem block ~4 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 4 bone 13
replaceitem block ~4 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~4 slot.container 9 iron_ingot 13
replaceitem block ~4 ~1 ~4 slot.container 10 bowl 12
replaceitem block ~4 ~1 ~4 slot.container 11 shroomlight 4
replaceitem block ~4 ~1 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~4 ~1 ~4 slot.container 13 suspicious_stew 1
replaceitem block ~4 ~1 ~4 slot.container 14 mycelium 11
loot insert ~4 ~1 ~4 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-3 ~0
