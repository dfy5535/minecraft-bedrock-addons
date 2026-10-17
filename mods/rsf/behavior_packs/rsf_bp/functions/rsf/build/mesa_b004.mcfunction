# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1412/4224 | 主题内编号: b004/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双子火盆高台神坛 (mesa_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 red_terracotta [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 red_terracotta [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_red_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 yellow_terracotta []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 red_terracotta []
fill ~2 ~1 ~-5 ~6 ~7 ~5 red_terracotta []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 yellow_terracotta []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 chiseled_red_sandstone []
setblock ~-6 ~9 ~-5 campfire []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 chiseled_red_sandstone []
setblock ~-6 ~9 ~5 campfire []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 chiseled_red_sandstone []
setblock ~6 ~9 ~-5 campfire []
fill ~6 ~6 ~5 ~6 ~8 ~5 chiseled_red_sandstone []
setblock ~6 ~9 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 yellow_terracotta []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_red_sandstone []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_red_sandstone []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 red_sandstone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~1 ~1 ~-8 gold_block []
setblock ~-2 ~3 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 14
replaceitem block ~-5 ~1 ~4 slot.container 1 gold_nugget 21
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 9 tnt 9
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 11 minecart 1
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 5
replaceitem block ~-5 ~1 ~4 slot.container 13 gold_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 14 raw_gold 11
loot insert ~-5 ~1 ~4 loot "rsf/mesa"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 bone 14
replaceitem block ~5 ~1 ~4 slot.container 4 string 17
replaceitem block ~5 ~1 ~4 slot.container 5 spider_eye 14
replaceitem block ~5 ~1 ~4 slot.container 9 tnt 7
replaceitem block ~5 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 11 minecart 1
replaceitem block ~5 ~1 ~4 slot.container 12 lantern 10
replaceitem block ~5 ~1 ~4 slot.container 13 gold_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 14 raw_gold 9
loot insert ~5 ~1 ~4 loot "rsf/mesa"
loot insert ~5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon spider ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon pillager ~0 ~2 ~0
