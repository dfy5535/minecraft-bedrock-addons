# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3070/4224 | 主题内编号: b126/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双子主塔天桥宫殿与暗牢 (mushroom_island_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~12 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~12 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~12 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~12 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 red_mushroom_block [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 red_mushroom_block [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 red_mushroom_block []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 lantern []
setblock ~4 ~-5 ~-4 lantern []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~4 slot.container 1 bone 18
replaceitem block ~4 ~-3 ~4 slot.container 2 gunpowder 17
replaceitem block ~4 ~-3 ~4 slot.container 3 string 10
replaceitem block ~4 ~-3 ~4 slot.container 4 spider_eye 9
replaceitem block ~4 ~-3 ~4 slot.container 5 slime_ball 10
replaceitem block ~4 ~-3 ~4 slot.container 9 mycelium 14
replaceitem block ~4 ~-3 ~4 slot.container 10 red_mushroom 12
replaceitem block ~4 ~-3 ~4 slot.container 11 brown_mushroom 13
replaceitem block ~4 ~-3 ~4 slot.container 12 golden_apple 4
replaceitem block ~4 ~-3 ~4 slot.container 13 diamond 5
replaceitem block ~4 ~-3 ~4 slot.container 14 iron_ingot 12
loot insert ~4 ~-3 ~4 loot "rsf/mushroom_island"
loot insert ~4 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~9 ~6 red_mushroom_block []
fill ~2 ~1 ~-6 ~6 ~9 ~6 red_mushroom_block []
fill ~-5 ~1 ~-5 ~-3 ~8 ~5 air []
fill ~3 ~1 ~-5 ~5 ~8 ~5 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mushroom_stem []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 mushroom_stem []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 red_mushroom_block []
fill ~0 ~14 ~0 ~0 ~14 ~0 shroomlight []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 mushroom_stem []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~-3 ~7 ~4 ~-3 mushroom_stem []
fill ~6 ~5 ~-4 ~8 ~5 ~-2 red_mushroom_block []
setblock ~7 ~4 ~-2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 ender_pearl 10
replaceitem block ~-5 ~1 ~5 slot.container 1 blaze_rod 9
replaceitem block ~-5 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~5 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~5 slot.container 5 string 13
replaceitem block ~-5 ~1 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~-5 ~1 ~5 slot.container 10 suspicious_stew 1
replaceitem block ~-5 ~1 ~5 slot.container 11 mycelium 14
replaceitem block ~-5 ~1 ~5 slot.container 12 red_mushroom 12
replaceitem block ~-5 ~1 ~5 slot.container 13 brown_mushroom 13
replaceitem block ~-5 ~1 ~5 slot.container 14 golden_apple 4
loot insert ~-5 ~1 ~5 loot "rsf/mushroom_island"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~5 slot.container 1 bone 16
replaceitem block ~5 ~1 ~5 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~5 slot.container 3 string 16
replaceitem block ~5 ~1 ~5 slot.container 4 spider_eye 15
replaceitem block ~5 ~1 ~5 slot.container 5 slime_ball 8
replaceitem block ~5 ~1 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~5 ~1 ~5 slot.container 10 suspicious_stew 1
replaceitem block ~5 ~1 ~5 slot.container 11 mycelium 12
replaceitem block ~5 ~1 ~5 slot.container 12 red_mushroom 17
replaceitem block ~5 ~1 ~5 slot.container 13 brown_mushroom 18
replaceitem block ~5 ~1 ~5 slot.container 14 golden_apple 2
loot insert ~5 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1
