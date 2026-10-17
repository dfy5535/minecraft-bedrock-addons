# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1492/4224 | 主题内编号: b084/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·露天采石场与矿道库 (mesa_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 4格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_terracotta [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_terracotta [] replace water
fill ~-6 ~1 ~-7 ~6 ~6 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cut_red_sandstone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 1 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 2 string 19
replaceitem block ~3 ~-3 ~4 slot.container 3 spider_eye 8
replaceitem block ~3 ~-3 ~4 slot.container 4 gunpowder 11
replaceitem block ~3 ~-3 ~4 slot.container 5 gold_nugget 18
replaceitem block ~3 ~-3 ~4 slot.container 9 gold_ingot 14
replaceitem block ~3 ~-3 ~4 slot.container 10 raw_gold 13
replaceitem block ~3 ~-3 ~4 slot.container 11 iron_ingot 12
replaceitem block ~3 ~-3 ~4 slot.container 12 rail 16
replaceitem block ~3 ~-3 ~4 slot.container 13 golden_apple 3
replaceitem block ~3 ~-3 ~4 slot.container 14 cooked_beef 10
loot insert ~3 ~-3 ~4 loot "rsf/mesa"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 red_terracotta []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 yellow_terracotta []
fill ~0 ~1 ~-6 ~0 ~2 ~6 yellow_terracotta []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~4 ~-6 ~-5 ~6 ~-6 chiseled_red_sandstone []
setblock ~-5 ~7 ~-6 campfire []
fill ~-5 ~4 ~6 ~-5 ~6 ~6 chiseled_red_sandstone []
setblock ~-5 ~7 ~6 campfire []
fill ~5 ~4 ~-6 ~5 ~6 ~-6 chiseled_red_sandstone []
setblock ~5 ~7 ~-6 campfire []
fill ~5 ~4 ~6 ~5 ~6 ~6 chiseled_red_sandstone []
setblock ~5 ~7 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 yellow_terracotta []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~-2 ~1 ~-8 gold_block []
setblock ~-2 ~3 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~3 ~0 lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 14
replaceitem block ~-4 ~1 ~5 slot.container 1 gold_nugget 21
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 tnt 5
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 11 minecart 1
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 8
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 15
replaceitem block ~-4 ~1 ~5 slot.container 14 raw_gold 14
loot insert ~-4 ~1 ~5 loot "rsf/mesa"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 17
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 14
replaceitem block ~4 ~1 ~5 slot.container 9 tnt 10
replaceitem block ~4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 11 minecart 1
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 14 raw_gold 12
loot insert ~4 ~1 ~5 loot "rsf/mesa"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
