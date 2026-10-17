# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1440/4224 | 主题内编号: b032/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·断顶残垣古哨塔 (mesa_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 9x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 red_terracotta [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 red_terracotta [] replace water
fill ~-4 ~1 ~-6 ~4 ~10 ~6 air []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 red_sandstone_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 smooth_red_sandstone []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 cut_red_sandstone []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 yellow_terracotta []
setblock ~0 ~-5 ~0 emerald_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 string 19
replaceitem block ~0 ~-2 ~-3 slot.container 1 spider_eye 8
replaceitem block ~0 ~-2 ~-3 slot.container 2 gunpowder 11
replaceitem block ~0 ~-2 ~-3 slot.container 3 gold_nugget 18
replaceitem block ~0 ~-2 ~-3 slot.container 4 arrow 19
replaceitem block ~0 ~-2 ~-3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 9 tnt 5
replaceitem block ~0 ~-2 ~-3 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-2 ~-3 slot.container 11 minecart 1
replaceitem block ~0 ~-2 ~-3 slot.container 12 lantern 8
replaceitem block ~0 ~-2 ~-3 slot.container 13 gold_ingot 15
replaceitem block ~0 ~-2 ~-3 slot.container 14 raw_gold 14
loot insert ~0 ~-2 ~-3 loot "rsf/mesa"
loot insert ~0 ~-2 ~-3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~8 ~5 red_terracotta []
fill ~-2 ~1 ~-4 ~2 ~7 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~8 ~-5 chiseled_red_sandstone []
fill ~-3 ~1 ~5 ~-3 ~8 ~5 chiseled_red_sandstone []
fill ~3 ~1 ~-5 ~3 ~8 ~-5 chiseled_red_sandstone []
fill ~3 ~1 ~5 ~3 ~8 ~5 chiseled_red_sandstone []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~8 ~-5 ~3 ~8 ~5 red_sandstone_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-3 ~7 ~-1 ~-3 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~7 ~-2 chiseled_red_sandstone []
fill ~-4 ~0 ~2 ~-4 ~7 ~2 chiseled_red_sandstone []
fill ~4 ~0 ~-2 ~4 ~7 ~-2 chiseled_red_sandstone []
fill ~4 ~0 ~2 ~4 ~7 ~2 chiseled_red_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 4x8x6) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~1 ~1 ~-9 gold_block []
setblock ~-2 ~6 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-3 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-2 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-2 ~1 ~4 slot.container 2 string 14
replaceitem block ~-2 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~-2 ~1 ~4 slot.container 4 gunpowder 14
replaceitem block ~-2 ~1 ~4 slot.container 5 gold_nugget 21
replaceitem block ~-2 ~1 ~4 slot.container 9 gold_ingot 15
replaceitem block ~-2 ~1 ~4 slot.container 10 raw_gold 14
replaceitem block ~-2 ~1 ~4 slot.container 11 iron_ingot 6
replaceitem block ~-2 ~1 ~4 slot.container 12 rail 17
replaceitem block ~-2 ~1 ~4 slot.container 13 golden_apple 4
replaceitem block ~-2 ~1 ~4 slot.container 14 cooked_beef 11
loot insert ~-2 ~1 ~4 loot "rsf/mesa"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 string 17
replaceitem block ~2 ~1 ~4 slot.container 1 spider_eye 14
replaceitem block ~2 ~1 ~4 slot.container 2 gunpowder 17
replaceitem block ~2 ~1 ~4 slot.container 3 gold_nugget 16
replaceitem block ~2 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~2 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~2 ~1 ~4 slot.container 9 gold_ingot 13
replaceitem block ~2 ~1 ~4 slot.container 10 raw_gold 12
replaceitem block ~2 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~2 ~1 ~4 slot.container 12 rail 22
replaceitem block ~2 ~1 ~4 slot.container 13 golden_apple 2
replaceitem block ~2 ~1 ~4 slot.container 14 cooked_beef 9
loot insert ~2 ~1 ~4 loot "rsf/mesa"
loot insert ~2 ~1 ~4 loot "chests/abandoned_mineshaft"
summon husk ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
