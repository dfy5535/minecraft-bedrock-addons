# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3064/4224 | 主题内编号: b120/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·引水渠跨桥水培温室 (mushroom_island_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mycelium []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 red_mushroom_block []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~3 slot.container 0 gunpowder 17
replaceitem block ~-3 ~-2 ~3 slot.container 1 string 10
replaceitem block ~-3 ~-2 ~3 slot.container 2 spider_eye 9
replaceitem block ~-3 ~-2 ~3 slot.container 3 slime_ball 10
replaceitem block ~-3 ~-2 ~3 slot.container 4 ender_pearl 7
replaceitem block ~-3 ~-2 ~3 slot.container 5 blaze_rod 6
replaceitem block ~-3 ~-2 ~3 slot.container 9 bowl 12
replaceitem block ~-3 ~-2 ~3 slot.container 10 shroomlight 4
replaceitem block ~-3 ~-2 ~3 slot.container 11 mushroom_stew 1
replaceitem block ~-3 ~-2 ~3 slot.container 12 suspicious_stew 1
replaceitem block ~-3 ~-2 ~3 slot.container 13 mycelium 11
replaceitem block ~-3 ~-2 ~3 slot.container 14 red_mushroom 16
loot insert ~-3 ~-2 ~3 loot "rsf/mushroom_island"
loot insert ~-3 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~5 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~4 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-5 ~5 ~5 ~5 red_mushroom_block []
fill ~-4 ~6 ~-4 ~4 ~7 ~4 glass []
fill ~-3 ~6 ~-3 ~3 ~6 ~3 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 red_mushroom_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~6 ~0 ~-2 ~6 ~8 ~-2 mushroom_stem []
fill ~5 ~9 ~-3 ~7 ~9 ~-1 red_mushroom_block []
setblock ~6 ~8 ~-1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 13
replaceitem block ~-4 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 3 string 13
replaceitem block ~-4 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-4 ~1 ~4 slot.container 5 slime_ball 13
replaceitem block ~-4 ~1 ~4 slot.container 9 mycelium 13
replaceitem block ~-4 ~1 ~4 slot.container 10 red_mushroom 18
replaceitem block ~-4 ~1 ~4 slot.container 11 brown_mushroom 12
replaceitem block ~-4 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~-4 ~1 ~4 slot.container 13 diamond 4
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~-4 ~1 ~4 loot "rsf/mushroom_island"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~4 slot.container 1 string 16
replaceitem block ~4 ~1 ~4 slot.container 2 spider_eye 15
replaceitem block ~4 ~1 ~4 slot.container 3 slime_ball 8
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 5
replaceitem block ~4 ~1 ~4 slot.container 5 blaze_rod 4
replaceitem block ~4 ~1 ~4 slot.container 9 mycelium 11
replaceitem block ~4 ~1 ~4 slot.container 10 red_mushroom 16
replaceitem block ~4 ~1 ~4 slot.container 11 brown_mushroom 17
replaceitem block ~4 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~4 ~1 ~4 slot.container 13 diamond 2
replaceitem block ~4 ~1 ~4 slot.container 14 iron_ingot 9
loot insert ~4 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1
