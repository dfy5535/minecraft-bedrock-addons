# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1536/4224 | 主题内编号: b128/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·U型紫禁朝堂大殿与地底金库 (mesa_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_terracotta [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_terracotta [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 smooth_red_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_terracotta []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 gunpowder 11
replaceitem block ~4 ~-3 ~5 slot.container 1 gold_nugget 18
replaceitem block ~4 ~-3 ~5 slot.container 2 arrow 19
replaceitem block ~4 ~-3 ~5 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-3 ~5 slot.container 5 bone 16
replaceitem block ~4 ~-3 ~5 slot.container 9 golden_apple 4
replaceitem block ~4 ~-3 ~5 slot.container 10 cooked_beef 11
replaceitem block ~4 ~-3 ~5 slot.container 11 tnt 8
replaceitem block ~4 ~-3 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~-3 ~5 slot.container 13 minecart 1
replaceitem block ~4 ~-3 ~5 slot.container 14 lantern 4
loot insert ~4 ~-3 ~5 loot "rsf/mesa"
loot insert ~4 ~-3 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 red_terracotta []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 red_sandstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-8 ~7 ~7 ~8 red_sandstone_slab []
fill ~-5 ~8 ~-6 ~5 ~9 ~6 cut_red_sandstone []
fill ~-6 ~10 ~-7 ~6 ~10 ~7 red_sandstone_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 cobblestone_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x10x2) ---
fill ~-2 ~0 ~-11 ~2 ~0 ~-10 red_sandstone []
fill ~-2 ~1 ~-10 ~2 ~1 ~-10 rail []
setblock ~-1 ~1 ~-11 gold_block []
setblock ~-2 ~2 ~-11 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 raw_gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 string 14
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 11
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 14
replaceitem block ~-5 ~1 ~6 slot.container 5 gold_nugget 21
replaceitem block ~-5 ~1 ~6 slot.container 9 minecart 1
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 8
replaceitem block ~-5 ~1 ~6 slot.container 11 gold_ingot 15
replaceitem block ~-5 ~1 ~6 slot.container 12 raw_gold 14
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_ingot 6
replaceitem block ~-5 ~1 ~6 slot.container 14 rail 17
loot insert ~-5 ~1 ~6 loot "rsf/mesa"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 17
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 17
replaceitem block ~5 ~1 ~6 slot.container 3 gold_nugget 16
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 minecart 1
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 6
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 12 raw_gold 12
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 14 rail 22
loot insert ~5 ~1 ~6 loot "rsf/mesa"
loot insert ~5 ~1 ~6 loot "chests/abandoned_mineshaft"
summon husk ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
