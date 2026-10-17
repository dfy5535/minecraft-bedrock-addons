# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1510/4224 | 主题内编号: b102/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双子箭塔联防碉楼 (mesa_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_sandstone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_red_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 red_sandstone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 torch []
setblock ~4 ~-4 ~-3 torch []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~4 ~-2 ~3 slot.container 2 string 19
replaceitem block ~4 ~-2 ~3 slot.container 3 spider_eye 8
replaceitem block ~4 ~-2 ~3 slot.container 4 gunpowder 11
replaceitem block ~4 ~-2 ~3 slot.container 5 gold_nugget 18
replaceitem block ~4 ~-2 ~3 slot.container 9 iron_ingot 6
replaceitem block ~4 ~-2 ~3 slot.container 10 rail 17
replaceitem block ~4 ~-2 ~3 slot.container 11 golden_apple 4
replaceitem block ~4 ~-2 ~3 slot.container 12 cooked_beef 11
replaceitem block ~4 ~-2 ~3 slot.container 13 tnt 8
replaceitem block ~4 ~-2 ~3 slot.container 14 iron_pickaxe 1
loot insert ~4 ~-2 ~3 loot "rsf/mesa"
loot insert ~4 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 red_sandstone []
fill ~2 ~1 ~-5 ~6 ~8 ~5 red_sandstone []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 cut_red_sandstone []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 cut_red_sandstone []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 dark_oak_fence []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 chiseled_red_sandstone []
setblock ~-6 ~9 ~-5 torch []
setblock ~-6 ~8 ~5 chiseled_red_sandstone []
setblock ~-6 ~9 ~5 torch []
setblock ~6 ~8 ~-5 chiseled_red_sandstone []
setblock ~6 ~9 ~-5 torch []
setblock ~6 ~8 ~5 chiseled_red_sandstone []
setblock ~6 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 chiseled_red_sandstone []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 chiseled_red_sandstone []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 chiseled_red_sandstone []
fill ~7 ~0 ~2 ~7 ~6 ~2 chiseled_red_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_sandstone []
fill ~-2 ~1 ~-6 ~2 ~1 ~-6 rail []
setblock ~-3 ~1 ~-7 gold_block []
setblock ~-2 ~6 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 10 raw_gold 14
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 12 rail 17
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_beef 11
loot insert ~-5 ~1 ~4 loot "rsf/mesa"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 1 bone 14
replaceitem block ~5 ~1 ~4 slot.container 2 string 17
replaceitem block ~5 ~1 ~4 slot.container 3 spider_eye 14
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 17
replaceitem block ~5 ~1 ~4 slot.container 5 gold_nugget 16
replaceitem block ~5 ~1 ~4 slot.container 9 gold_ingot 13
replaceitem block ~5 ~1 ~4 slot.container 10 raw_gold 12
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~5 ~1 ~4 slot.container 12 rail 22
replaceitem block ~5 ~1 ~4 slot.container 13 golden_apple 2
replaceitem block ~5 ~1 ~4 slot.container 14 cooked_beef 9
loot insert ~5 ~1 ~4 loot "rsf/mesa"
loot insert ~5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
