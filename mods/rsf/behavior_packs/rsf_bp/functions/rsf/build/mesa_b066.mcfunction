# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1474/4224 | 主题内编号: b066/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·崩塌角楼古堡残垣 (mesa_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_sandstone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 red_sandstone []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-4 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-4 ~4 torch []
setblock ~3 ~-4 ~-4 torch []
setblock ~3 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-2 ~4 slot.container 0 gunpowder 11
replaceitem block ~3 ~-2 ~4 slot.container 1 gold_nugget 18
replaceitem block ~3 ~-2 ~4 slot.container 2 arrow 19
replaceitem block ~3 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-2 ~4 slot.container 5 bone 16
replaceitem block ~3 ~-2 ~4 slot.container 9 golden_apple 8
replaceitem block ~3 ~-2 ~4 slot.container 10 cooked_beef 8
replaceitem block ~3 ~-2 ~4 slot.container 11 tnt 5
replaceitem block ~3 ~-2 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~-2 ~4 slot.container 13 minecart 1
replaceitem block ~3 ~-2 ~4 slot.container 14 lantern 8
loot insert ~3 ~-2 ~4 loot "rsf/mesa"
loot insert ~3 ~-2 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 red_sandstone []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~8 ~-5 cut_red_sandstone []
setblock ~-5 ~9 ~-6 torch []
fill ~-5 ~1 ~5 ~-4 ~8 ~6 cut_red_sandstone []
setblock ~-5 ~9 ~5 torch []
fill ~4 ~1 ~-6 ~5 ~8 ~-5 cut_red_sandstone []
setblock ~4 ~9 ~-6 torch []
fill ~4 ~1 ~5 ~5 ~8 ~6 cut_red_sandstone []
setblock ~4 ~9 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 red_sandstone_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 chiseled_red_sandstone []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 chiseled_red_sandstone []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 chiseled_red_sandstone []
fill ~6 ~0 ~2 ~6 ~5 ~2 chiseled_red_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~0 ~1 ~-8 gold_block []
setblock ~-2 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 14
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 14
replaceitem block ~-4 ~1 ~5 slot.container 3 gold_nugget 21
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 10 rail 21
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_apple 8
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_beef 8
replaceitem block ~-4 ~1 ~5 slot.container 13 tnt 5
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~-4 ~1 ~5 loot "rsf/mesa"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 1 gold_nugget 16
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 10 rail 19
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_beef 13
replaceitem block ~4 ~1 ~5 slot.container 13 tnt 10
replaceitem block ~4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~5 loot "rsf/mesa"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
