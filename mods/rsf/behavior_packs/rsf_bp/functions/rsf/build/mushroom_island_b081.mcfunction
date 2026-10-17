# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3025/4224 | 主题内编号: b081/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双高炉重工冶炼密室 (mushroom_island_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace log2
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 quartz_block [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 quartz_block [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 quartz_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 brown_mushroom_block []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 quartz_block []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
setblock ~-2 ~-6 ~0 blast_furnace []
setblock ~2 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-4 ~4 slot.container 0 slime_ball 10
replaceitem block ~2 ~-4 ~4 slot.container 1 ender_pearl 7
replaceitem block ~2 ~-4 ~4 slot.container 2 blaze_rod 6
replaceitem block ~2 ~-4 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-4 ~4 slot.container 4 bone 18
replaceitem block ~2 ~-4 ~4 slot.container 5 gunpowder 17
replaceitem block ~2 ~-4 ~4 slot.container 9 suspicious_stew 1
replaceitem block ~2 ~-4 ~4 slot.container 10 mycelium 9
replaceitem block ~2 ~-4 ~4 slot.container 11 red_mushroom 14
replaceitem block ~2 ~-4 ~4 slot.container 12 brown_mushroom 15
replaceitem block ~2 ~-4 ~4 slot.container 13 golden_apple 6
replaceitem block ~2 ~-4 ~4 slot.container 14 diamond 7
loot insert ~2 ~-4 ~4 loot "rsf/mushroom_island"
loot insert ~2 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-4 ~1 ~-6 ~4 ~5 ~6 quartz_block []
fill ~-3 ~1 ~-5 ~3 ~4 ~5 air []
fill ~-4 ~1 ~6 ~-5 ~8 ~6 red_mushroom_block []
setblock ~-4 ~9 ~6 shroomlight []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-7 ~-5 ~6 ~7 quartz_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-7 ~5 ~6 ~7 quartz_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~-4 ~7 ~6 quartz_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-6 ~4 ~7 ~6 quartz_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-6 ~3 ~7 ~6 quartz_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 red_mushroom_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_mushroom_block []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 mushroom_stem []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 mushroom_stem []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 quartz_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x7x2) ---
fill ~5 ~0 ~0 ~5 ~4 ~0 mushroom_stem []
fill ~4 ~5 ~-1 ~6 ~5 ~1 red_mushroom_block []
setblock ~5 ~4 ~1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 bone 13
replaceitem block ~3 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 2 string 13
replaceitem block ~3 ~1 ~5 slot.container 3 spider_eye 12
replaceitem block ~3 ~1 ~5 slot.container 4 slime_ball 13
replaceitem block ~3 ~1 ~5 slot.container 5 ender_pearl 10
replaceitem block ~3 ~1 ~5 slot.container 9 golden_apple 3
replaceitem block ~3 ~1 ~5 slot.container 10 diamond 4
replaceitem block ~3 ~1 ~5 slot.container 11 iron_ingot 11
replaceitem block ~3 ~1 ~5 slot.container 12 bowl 10
replaceitem block ~3 ~1 ~5 slot.container 13 shroomlight 9
replaceitem block ~3 ~1 ~5 slot.container 14 mushroom_stew 1
loot insert ~3 ~1 ~5 loot "rsf/mushroom_island"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
