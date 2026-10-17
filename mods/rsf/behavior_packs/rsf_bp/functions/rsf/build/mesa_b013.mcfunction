# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1421/4224 | 主题内编号: b013/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·地底熔炉苦工地牢 (mesa_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x17 | 地上高度 5格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 cut_red_sandstone [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 cut_red_sandstone [] replace water
fill ~-6 ~1 ~-8 ~6 ~7 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 red_sandstone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 cut_red_sandstone []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 bone 16
replaceitem block ~3 ~-4 ~5 slot.container 1 string 19
replaceitem block ~3 ~-4 ~5 slot.container 2 spider_eye 8
replaceitem block ~3 ~-4 ~5 slot.container 3 gunpowder 11
replaceitem block ~3 ~-4 ~5 slot.container 4 gold_nugget 18
replaceitem block ~3 ~-4 ~5 slot.container 5 arrow 19
replaceitem block ~3 ~-4 ~5 slot.container 9 lantern 10
replaceitem block ~3 ~-4 ~5 slot.container 10 gold_ingot 10
replaceitem block ~3 ~-4 ~5 slot.container 11 raw_gold 9
replaceitem block ~3 ~-4 ~5 slot.container 12 iron_ingot 8
replaceitem block ~3 ~-4 ~5 slot.container 13 rail 19
replaceitem block ~3 ~-4 ~5 slot.container 14 golden_apple 6
loot insert ~3 ~-4 ~5 loot "rsf/mesa"
loot insert ~3 ~-4 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 cut_red_sandstone []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~5 ~-7 dark_oak_log []
fill ~-5 ~1 ~7 ~-5 ~5 ~7 dark_oak_log []
fill ~5 ~1 ~-7 ~5 ~5 ~-7 dark_oak_log []
fill ~5 ~1 ~7 ~5 ~5 ~7 dark_oak_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 dark_oak_fence []
setblock ~5 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 hardened_clay []
fill ~-5 ~6 ~-7 ~5 ~6 ~7 dark_oak_fence []
fill ~-4 ~6 ~-6 ~4 ~6 ~6 air []
setblock ~-5 ~6 ~-7 dark_oak_log []
setblock ~-5 ~7 ~-7 torch []
setblock ~-5 ~6 ~7 dark_oak_log []
setblock ~-5 ~7 ~7 torch []
setblock ~5 ~6 ~-7 dark_oak_log []
setblock ~5 ~7 ~-7 torch []
setblock ~5 ~6 ~7 dark_oak_log []
setblock ~5 ~7 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~7 ~2 red_sandstone []
fill ~6 ~1 ~-1 ~7 ~6 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~8 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x9x2) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~2 ~1 ~-10 gold_block []
setblock ~-2 ~2 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-3 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 gold_nugget 21
replaceitem block ~4 ~1 ~6 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~6 slot.container 4 bone 11
replaceitem block ~4 ~1 ~6 slot.container 5 string 14
replaceitem block ~4 ~1 ~6 slot.container 9 rail 16
replaceitem block ~4 ~1 ~6 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~6 slot.container 11 cooked_beef 10
replaceitem block ~4 ~1 ~6 slot.container 12 tnt 7
replaceitem block ~4 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~6 slot.container 14 minecart 1
loot insert ~4 ~1 ~6 loot "rsf/mesa"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon spider ~0 ~-4 ~0
