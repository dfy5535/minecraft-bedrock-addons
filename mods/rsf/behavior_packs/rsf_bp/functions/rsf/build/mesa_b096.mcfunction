# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1504/4224 | 主题内编号: b096/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·高台三阶献祭神祠 (mesa_shrine_stepped_offering)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_terracotta [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_terracotta [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

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

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 red_terracotta []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 yellow_terracotta []
fill ~-2 ~5 ~-3 ~2 ~6 ~3 cut_red_sandstone []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 smooth_red_sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 yellow_terracotta []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 cut_red_sandstone []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gold_block []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 yellow_terracotta []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_red_sandstone []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_red_sandstone []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 red_sandstone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x6x5) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_sandstone []
fill ~-2 ~1 ~-6 ~2 ~1 ~-6 rail []
setblock ~-2 ~1 ~-7 gold_block []
setblock ~-2 ~5 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 2 string 14
replaceitem block ~-3 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 14
replaceitem block ~-3 ~1 ~4 slot.container 5 gold_nugget 21
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 10 rail 16
replaceitem block ~-3 ~1 ~4 slot.container 11 golden_apple 3
replaceitem block ~-3 ~1 ~4 slot.container 12 cooked_beef 10
replaceitem block ~-3 ~1 ~4 slot.container 13 tnt 7
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~-3 ~1 ~4 loot "rsf/mesa"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 17
replaceitem block ~3 ~1 ~4 slot.container 1 spider_eye 14
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 17
replaceitem block ~3 ~1 ~4 slot.container 3 gold_nugget 16
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 10 rail 21
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 8
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_beef 8
replaceitem block ~3 ~1 ~4 slot.container 13 tnt 5
replaceitem block ~3 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~3 ~1 ~4 loot "rsf/mesa"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
