# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1450/4224 | 主题内编号: b042/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·地底铁栏死斗深坑 (mesa_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 4格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_sandstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~6 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_sandstone []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~4 torch []
setblock ~3 ~-5 ~-4 torch []
setblock ~3 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~4 slot.container 0 gunpowder 11
replaceitem block ~3 ~-3 ~4 slot.container 1 gold_nugget 18
replaceitem block ~3 ~-3 ~4 slot.container 2 arrow 19
replaceitem block ~3 ~-3 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 5 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 9 iron_ingot 9
replaceitem block ~3 ~-3 ~4 slot.container 10 rail 20
replaceitem block ~3 ~-3 ~4 slot.container 11 golden_apple 7
replaceitem block ~3 ~-3 ~4 slot.container 12 cooked_beef 14
replaceitem block ~3 ~-3 ~4 slot.container 13 tnt 4
replaceitem block ~3 ~-3 ~4 slot.container 14 iron_pickaxe 1
loot insert ~3 ~-3 ~4 loot "rsf/mesa"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 red_sandstone []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 cut_red_sandstone []
fill ~0 ~1 ~-6 ~0 ~2 ~6 cut_red_sandstone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~4 ~-6 ~-5 ~6 ~-6 chiseled_red_sandstone []
setblock ~-5 ~7 ~-6 torch []
fill ~-5 ~4 ~6 ~-5 ~6 ~6 chiseled_red_sandstone []
setblock ~-5 ~7 ~6 torch []
fill ~5 ~4 ~-6 ~5 ~6 ~-6 chiseled_red_sandstone []
setblock ~5 ~7 ~-6 torch []
fill ~5 ~4 ~6 ~5 ~6 ~6 chiseled_red_sandstone []
setblock ~5 ~7 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 dark_oak_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~1 ~1 ~-8 gold_block []
setblock ~-2 ~6 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 14
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 14
replaceitem block ~-4 ~1 ~5 slot.container 3 gold_nugget 21
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 10 raw_gold 10
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 12 rail 20
replaceitem block ~-4 ~1 ~5 slot.container 13 golden_apple 7
replaceitem block ~-4 ~1 ~5 slot.container 14 cooked_beef 14
loot insert ~-4 ~1 ~5 loot "rsf/mesa"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 1 gold_nugget 16
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 10 raw_gold 8
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 12 rail 18
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_beef 12
loot insert ~4 ~1 ~5 loot "rsf/mesa"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
