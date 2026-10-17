# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1494/4224 | 主题内编号: b086/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·重装矿石金库碉堡 (mesa_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_sandstone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 raw_gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 spider_eye 8
replaceitem block ~0 ~-4 ~4 slot.container 1 gunpowder 11
replaceitem block ~0 ~-4 ~4 slot.container 2 gold_nugget 18
replaceitem block ~0 ~-4 ~4 slot.container 3 arrow 19
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 9 lantern 6
replaceitem block ~0 ~-4 ~4 slot.container 10 gold_ingot 13
replaceitem block ~0 ~-4 ~4 slot.container 11 raw_gold 12
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_ingot 11
replaceitem block ~0 ~-4 ~4 slot.container 13 rail 22
replaceitem block ~0 ~-4 ~4 slot.container 14 golden_apple 2
loot insert ~0 ~-4 ~4 loot "rsf/mesa"
loot insert ~0 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 red_sandstone []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~7 ~-5 cut_red_sandstone []
setblock ~-5 ~8 ~-6 torch []
fill ~-5 ~1 ~5 ~-4 ~7 ~6 cut_red_sandstone []
setblock ~-5 ~8 ~5 torch []
fill ~4 ~1 ~-6 ~5 ~7 ~-5 cut_red_sandstone []
setblock ~4 ~8 ~-6 torch []
fill ~4 ~1 ~5 ~5 ~7 ~6 cut_red_sandstone []
setblock ~4 ~8 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 cut_red_sandstone []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 dark_oak_fence []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 air []
setblock ~-5 ~6 ~-6 chiseled_red_sandstone []
setblock ~-5 ~7 ~-6 torch []
setblock ~-5 ~6 ~6 chiseled_red_sandstone []
setblock ~-5 ~7 ~6 torch []
setblock ~5 ~6 ~-6 chiseled_red_sandstone []
setblock ~5 ~7 ~-6 torch []
setblock ~5 ~6 ~6 chiseled_red_sandstone []
setblock ~5 ~7 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 dark_oak_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x9x5) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~0 ~1 ~-10 gold_block []
setblock ~-2 ~5 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 string 14
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 11
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 10 rail 20
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_apple 7
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_beef 14
replaceitem block ~-4 ~1 ~5 slot.container 13 tnt 4
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~-4 ~1 ~5 loot "rsf/mesa"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 string 17
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 14
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 5 gold_nugget 16
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 10 rail 18
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_beef 12
replaceitem block ~4 ~1 ~5 slot.container 13 tnt 9
replaceitem block ~4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~5 loot "rsf/mesa"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon husk ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
