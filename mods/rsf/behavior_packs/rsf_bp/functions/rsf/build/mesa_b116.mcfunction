# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1524/4224 | 主题内编号: b116/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·U型围合秘密花园驿站 (mesa_conservatory_u_garden)
# 建筑构造: 主体[u_courtyard] + 屋顶[dome_glass] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 2格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 red_terracotta [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 red_terracotta [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 yellow_terracotta []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 red_terracotta []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 red_sandstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 yellow_terracotta []
fill ~-4 ~6 ~-5 ~4 ~7 ~5 glass []
fill ~-3 ~6 ~-4 ~3 ~6 ~4 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 yellow_terracotta []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 campfire []
setblock ~2 ~4 ~-9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x9x5) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~0 ~1 ~-10 gold_block []
setblock ~-2 ~5 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 14
replaceitem block ~-4 ~1 ~5 slot.container 1 gold_nugget 21
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 10 rail 22
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_apple 2
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_beef 9
replaceitem block ~-4 ~1 ~5 slot.container 13 tnt 6
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~-4 ~1 ~5 loot "rsf/mesa"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 17
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 14
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 10 rail 20
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_beef 14
replaceitem block ~4 ~1 ~5 slot.container 13 tnt 4
replaceitem block ~4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~5 loot "rsf/mesa"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon husk ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
