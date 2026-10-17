# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1456/4224 | 主题内编号: b048/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·阶梯王座巅峰试炼台 (mesa_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 red_terracotta [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 red_terracotta [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 smooth_red_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 cut_red_sandstone []

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 red_terracotta []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 yellow_terracotta []
fill ~-4 ~5 ~-5 ~4 ~6 ~5 cut_red_sandstone []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 smooth_red_sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 chiseled_red_sandstone []
setblock ~-6 ~9 ~-7 campfire []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 chiseled_red_sandstone []
setblock ~-6 ~9 ~7 campfire []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 chiseled_red_sandstone []
setblock ~6 ~9 ~-7 campfire []
fill ~6 ~6 ~7 ~6 ~8 ~7 chiseled_red_sandstone []
setblock ~6 ~9 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 chiseled_red_sandstone []
setblock ~0 ~4 ~-9 emerald_block []
setblock ~0 ~5 ~-9 campfire []
fill ~0 ~0 ~9 ~0 ~3 ~9 chiseled_red_sandstone []
setblock ~0 ~4 ~9 emerald_block []
setblock ~0 ~5 ~9 campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_red_sandstone []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_red_sandstone []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~-3 ~1 ~-9 gold_block []
setblock ~-2 ~2 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 string 14
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 11
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 14
replaceitem block ~-5 ~1 ~6 slot.container 5 gold_nugget 21
replaceitem block ~-5 ~1 ~6 slot.container 9 minecart 1
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 5
replaceitem block ~-5 ~1 ~6 slot.container 11 gold_ingot 12
replaceitem block ~-5 ~1 ~6 slot.container 12 raw_gold 11
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_ingot 10
replaceitem block ~-5 ~1 ~6 slot.container 14 rail 21
loot insert ~-5 ~1 ~6 loot "rsf/mesa"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 17
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 17
replaceitem block ~5 ~1 ~6 slot.container 3 gold_nugget 16
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 minecart 1
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 12 raw_gold 9
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 14 rail 19
loot insert ~5 ~1 ~6 loot "rsf/mesa"
loot insert ~5 ~1 ~6 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
