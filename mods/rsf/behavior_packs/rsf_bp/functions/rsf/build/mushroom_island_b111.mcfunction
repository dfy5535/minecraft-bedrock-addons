# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3055/4224 | 主题内编号: b111/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·地下禁忌书库与炼药室 (mushroom_island_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 brown_mushroom_block [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 brown_mushroom_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 brown_mushroom_block []
fill ~-4 ~-6 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-6 ~0 shroomlight []
setblock ~3 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 slime_ball 10
replaceitem block ~0 ~-4 ~4 slot.container 1 ender_pearl 7
replaceitem block ~0 ~-4 ~4 slot.container 2 blaze_rod 6
replaceitem block ~0 ~-4 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 4 bone 18
replaceitem block ~0 ~-4 ~4 slot.container 5 gunpowder 17
replaceitem block ~0 ~-4 ~4 slot.container 9 iron_ingot 10
replaceitem block ~0 ~-4 ~4 slot.container 10 bowl 9
replaceitem block ~0 ~-4 ~4 slot.container 11 shroomlight 8
replaceitem block ~0 ~-4 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~0 ~-4 ~4 slot.container 13 suspicious_stew 1
replaceitem block ~0 ~-4 ~4 slot.container 14 mycelium 8
loot insert ~0 ~-4 ~4 loot "rsf/mushroom_island"
loot insert ~0 ~-4 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 slime_ball 8
replaceitem block ~0 ~-4 ~-4 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-4 ~-4 slot.container 2 blaze_rod 4
replaceitem block ~0 ~-4 ~-4 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-4 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~-4 slot.container 5 gunpowder 15
replaceitem block ~0 ~-4 ~-4 slot.container 9 iron_ingot 9
replaceitem block ~0 ~-4 ~-4 slot.container 10 bowl 8
replaceitem block ~0 ~-4 ~-4 slot.container 11 shroomlight 7
replaceitem block ~0 ~-4 ~-4 slot.container 12 mushroom_stew 1
replaceitem block ~0 ~-4 ~-4 slot.container 13 suspicious_stew 1
replaceitem block ~0 ~-4 ~-4 slot.container 14 mycelium 14
loot insert ~0 ~-4 ~-4 loot "rsf/mushroom_island"
loot insert ~0 ~-4 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 brown_mushroom_block []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mushroom_stem []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mushroom_stem []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 mushroom_stem []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 stone_bricks []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 gold_block []
setblock ~0 ~9 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~6 ~0 ~0 ~6 ~4 ~0 mushroom_stem []
fill ~5 ~5 ~-1 ~7 ~5 ~1 red_mushroom_block []
setblock ~6 ~4 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 bone 13
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 13
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 10 diamond 6
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 12 bowl 12
replaceitem block ~4 ~1 ~5 slot.container 13 shroomlight 4
replaceitem block ~4 ~1 ~5 slot.container 14 mushroom_stew 1
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
