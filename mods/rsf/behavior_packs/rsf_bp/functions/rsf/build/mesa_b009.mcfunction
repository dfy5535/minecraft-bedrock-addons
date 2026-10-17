# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1417/4224 | 主题内编号: b009/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·铁栏双室地下死牢 (mesa_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cut_red_sandstone [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cut_red_sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~6 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cut_red_sandstone []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 torch []
setblock ~3 ~-6 ~-4 torch []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 spider_eye 8
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 11
replaceitem block ~3 ~-4 ~4 slot.container 2 gold_nugget 18
replaceitem block ~3 ~-4 ~4 slot.container 3 arrow 19
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-4 ~4 slot.container 9 rail 21
replaceitem block ~3 ~-4 ~4 slot.container 10 golden_apple 8
replaceitem block ~3 ~-4 ~4 slot.container 11 cooked_beef 8
replaceitem block ~3 ~-4 ~4 slot.container 12 tnt 5
replaceitem block ~3 ~-4 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~-4 ~4 slot.container 14 minecart 1
loot insert ~3 ~-4 ~4 loot "rsf/mesa"
loot insert ~3 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 cut_red_sandstone []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 hardened_clay []
fill ~0 ~1 ~-6 ~0 ~2 ~6 hardened_clay []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~4 ~-6 ~5 ~4 ~6 hardened_clay []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 dark_oak_fence []
fill ~-4 ~5 ~-5 ~4 ~5 ~5 air []
setblock ~-5 ~5 ~-6 dark_oak_log []
setblock ~-5 ~6 ~-6 torch []
setblock ~-5 ~5 ~6 dark_oak_log []
setblock ~-5 ~6 ~6 torch []
setblock ~5 ~5 ~-6 dark_oak_log []
setblock ~5 ~6 ~-6 torch []
setblock ~5 ~5 ~6 dark_oak_log []
setblock ~5 ~6 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 hardened_clay []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 dark_oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 dark_oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 red_sandstone_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~-2 ~1 ~-8 gold_block []
setblock ~-2 ~3 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 11
replaceitem block ~4 ~1 ~5 slot.container 1 string 14
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 4 gold_nugget 21
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 9 raw_gold 11
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 11 rail 21
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 8
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_beef 8
replaceitem block ~4 ~1 ~5 slot.container 14 tnt 5
loot insert ~4 ~1 ~5 loot "rsf/mesa"
summon cave_spider ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
