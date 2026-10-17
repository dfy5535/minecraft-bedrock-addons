# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1532/4224 | 主题内编号: b124/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·三层重檐帝王阁楼与秘库 (mesa_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 red_terracotta [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 red_terracotta [] replace water
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 smooth_red_sandstone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 cut_red_sandstone []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-3 ~5 slot.container 1 bone 16
replaceitem block ~3 ~-3 ~5 slot.container 2 string 19
replaceitem block ~3 ~-3 ~5 slot.container 3 spider_eye 8
replaceitem block ~3 ~-3 ~5 slot.container 4 gunpowder 11
replaceitem block ~3 ~-3 ~5 slot.container 5 gold_nugget 18
replaceitem block ~3 ~-3 ~5 slot.container 9 gold_ingot 12
replaceitem block ~3 ~-3 ~5 slot.container 10 raw_gold 11
replaceitem block ~3 ~-3 ~5 slot.container 11 iron_ingot 10
replaceitem block ~3 ~-3 ~5 slot.container 12 rail 21
replaceitem block ~3 ~-3 ~5 slot.container 13 golden_apple 8
replaceitem block ~3 ~-3 ~5 slot.container 14 cooked_beef 8
loot insert ~3 ~-3 ~5 loot "rsf/mesa"
loot insert ~3 ~-3 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~4 ~7 red_terracotta []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-6 ~4 ~-8 ~6 ~4 ~8 red_sandstone_slab []
fill ~-4 ~5 ~-6 ~4 ~9 ~6 cut_red_sandstone []
fill ~-3 ~5 ~-5 ~3 ~8 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~5 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-8 ~6 ~9 ~8 red_sandstone_slab []
fill ~-4 ~10 ~-6 ~4 ~11 ~6 cut_red_sandstone []
fill ~-5 ~12 ~-7 ~5 ~12 ~7 red_sandstone_slab []
setblock ~0 ~13 ~0 gold_block []
setblock ~0 ~14 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 chiseled_red_sandstone []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 chiseled_red_sandstone []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 chiseled_red_sandstone []
fill ~7 ~0 ~2 ~7 ~4 ~2 chiseled_red_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x9x3) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~-2 ~1 ~-10 gold_block []
setblock ~-2 ~3 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 gunpowder 14
replaceitem block ~-4 ~1 ~6 slot.container 1 gold_nugget 21
replaceitem block ~-4 ~1 ~6 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~6 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~6 slot.container 9 tnt 10
replaceitem block ~-4 ~1 ~6 slot.container 10 iron_pickaxe 1
replaceitem block ~-4 ~1 ~6 slot.container 11 minecart 1
replaceitem block ~-4 ~1 ~6 slot.container 12 lantern 6
replaceitem block ~-4 ~1 ~6 slot.container 13 gold_ingot 13
replaceitem block ~-4 ~1 ~6 slot.container 14 raw_gold 12
loot insert ~-4 ~1 ~6 loot "rsf/mesa"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~6 slot.container 3 bone 14
replaceitem block ~4 ~1 ~6 slot.container 4 string 17
replaceitem block ~4 ~1 ~6 slot.container 5 spider_eye 14
replaceitem block ~4 ~1 ~6 slot.container 9 tnt 8
replaceitem block ~4 ~1 ~6 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~6 slot.container 11 minecart 1
replaceitem block ~4 ~1 ~6 slot.container 12 lantern 4
replaceitem block ~4 ~1 ~6 slot.container 13 gold_ingot 11
replaceitem block ~4 ~1 ~6 slot.container 14 raw_gold 10
loot insert ~4 ~1 ~6 loot "rsf/mesa"
loot insert ~4 ~1 ~6 loot "chests/abandoned_mineshaft"
summon spider ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon pillager ~0 ~-3 ~0
