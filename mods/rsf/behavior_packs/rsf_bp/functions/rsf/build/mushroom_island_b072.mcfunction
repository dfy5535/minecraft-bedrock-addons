# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3016/4224 | 主题内编号: b072/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·L型古商会废墟暗窖 (mushroom_island_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mycelium []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 quartz_block []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 spider_eye 9
replaceitem block ~3 ~-2 ~4 slot.container 1 slime_ball 10
replaceitem block ~3 ~-2 ~4 slot.container 2 ender_pearl 7
replaceitem block ~3 ~-2 ~4 slot.container 3 blaze_rod 6
replaceitem block ~3 ~-2 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-2 ~4 slot.container 5 bone 18
replaceitem block ~3 ~-2 ~4 slot.container 9 mycelium 10
replaceitem block ~3 ~-2 ~4 slot.container 10 red_mushroom 15
replaceitem block ~3 ~-2 ~4 slot.container 11 brown_mushroom 16
replaceitem block ~3 ~-2 ~4 slot.container 12 golden_apple 7
replaceitem block ~3 ~-2 ~4 slot.container 13 diamond 8
replaceitem block ~3 ~-2 ~4 slot.container 14 iron_ingot 8
loot insert ~3 ~-2 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~5 ~6 stone_bricks []
fill ~-5 ~1 ~0 ~5 ~4 ~6 quartz_block []
fill ~-4 ~1 ~-5 ~-1 ~4 ~5 air []
fill ~-1 ~1 ~1 ~4 ~3 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 stone_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_mushroom_block []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 mushroom_stem []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 mushroom_stem []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~6 ~0 ~-3 ~6 ~5 ~-3 mushroom_stem []
fill ~5 ~6 ~-4 ~7 ~6 ~-2 red_mushroom_block []
setblock ~6 ~5 ~-2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 13
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 string 13
replaceitem block ~-4 ~1 ~5 slot.container 4 spider_eye 12
replaceitem block ~-4 ~1 ~5 slot.container 5 slime_ball 13
replaceitem block ~-4 ~1 ~5 slot.container 9 bowl 12
replaceitem block ~-4 ~1 ~5 slot.container 10 shroomlight 4
replaceitem block ~-4 ~1 ~5 slot.container 11 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 12 suspicious_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 13 mycelium 11
replaceitem block ~-4 ~1 ~5 slot.container 14 red_mushroom 16
loot insert ~-4 ~1 ~5 loot "rsf/mushroom_island"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 string 16
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 15
replaceitem block ~4 ~1 ~5 slot.container 3 slime_ball 8
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 4
replaceitem block ~4 ~1 ~5 slot.container 9 bowl 10
replaceitem block ~4 ~1 ~5 slot.container 10 shroomlight 9
replaceitem block ~4 ~1 ~5 slot.container 11 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 12 suspicious_stew 1
replaceitem block ~4 ~1 ~5 slot.container 13 mycelium 9
replaceitem block ~4 ~1 ~5 slot.container 14 red_mushroom 14
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1
