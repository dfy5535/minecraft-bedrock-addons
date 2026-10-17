# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1496/4224 | 主题内编号: b088/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·矿车铁轨转运仓库 (mesa_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x17 | 地上高度 5格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 red_terracotta [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 red_terracotta [] replace water
fill ~-5 ~1 ~-8 ~5 ~7 ~8 air []
fill ~-5 ~0 ~-8 ~5 ~0 ~8 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 smooth_red_sandstone []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-6 ~3 ~-1 ~6 cut_red_sandstone []
fill ~-2 ~-4 ~-5 ~2 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~5 slot.container 0 gunpowder 11
replaceitem block ~2 ~-2 ~5 slot.container 1 gold_nugget 18
replaceitem block ~2 ~-2 ~5 slot.container 2 arrow 19
replaceitem block ~2 ~-2 ~5 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~2 ~-2 ~5 slot.container 5 bone 16
replaceitem block ~2 ~-2 ~5 slot.container 9 iron_ingot 7
replaceitem block ~2 ~-2 ~5 slot.container 10 rail 18
replaceitem block ~2 ~-2 ~5 slot.container 11 golden_apple 5
replaceitem block ~2 ~-2 ~5 slot.container 12 cooked_beef 12
replaceitem block ~2 ~-2 ~5 slot.container 13 tnt 9
replaceitem block ~2 ~-2 ~5 slot.container 14 iron_pickaxe 1
loot insert ~2 ~-2 ~5 loot "rsf/mesa"
loot insert ~2 ~-2 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~5 ~7 red_terracotta []
fill ~-3 ~1 ~-6 ~3 ~4 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 chiseled_red_sandstone []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 chiseled_red_sandstone []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 chiseled_red_sandstone []
fill ~4 ~1 ~7 ~4 ~5 ~7 chiseled_red_sandstone []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-8 ~-5 ~6 ~8 smooth_red_sandstone_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-8 ~5 ~6 ~8 smooth_red_sandstone_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-7 ~-4 ~7 ~7 smooth_red_sandstone_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-7 ~4 ~7 ~7 smooth_red_sandstone_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-7 ~3 ~7 ~7 red_sandstone_slab []
fill ~0 ~8 ~-8 ~0 ~8 ~8 yellow_terracotta []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 dark_oak_log []
setblock ~0 ~4 ~-6 gold_block []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 dark_oak_log []
setblock ~0 ~4 ~6 gold_block []
setblock ~0 ~5 ~6 lantern []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 dark_oak_log []
setblock ~-5 ~4 ~0 gold_block []
setblock ~-5 ~5 ~0 lantern []
fill ~5 ~0 ~0 ~5 ~3 ~0 dark_oak_log []
setblock ~5 ~4 ~0 gold_block []
setblock ~5 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x9x2) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~-2 ~1 ~-10 gold_block []
setblock ~-2 ~2 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-3 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~6 slot.container 2 string 14
replaceitem block ~-3 ~1 ~6 slot.container 3 spider_eye 11
replaceitem block ~-3 ~1 ~6 slot.container 4 gunpowder 14
replaceitem block ~-3 ~1 ~6 slot.container 5 gold_nugget 21
replaceitem block ~-3 ~1 ~6 slot.container 9 minecart 1
replaceitem block ~-3 ~1 ~6 slot.container 10 lantern 10
replaceitem block ~-3 ~1 ~6 slot.container 11 gold_ingot 10
replaceitem block ~-3 ~1 ~6 slot.container 12 raw_gold 9
replaceitem block ~-3 ~1 ~6 slot.container 13 iron_ingot 8
replaceitem block ~-3 ~1 ~6 slot.container 14 rail 19
loot insert ~-3 ~1 ~6 loot "rsf/mesa"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 string 17
replaceitem block ~3 ~1 ~6 slot.container 1 spider_eye 14
replaceitem block ~3 ~1 ~6 slot.container 2 gunpowder 17
replaceitem block ~3 ~1 ~6 slot.container 3 gold_nugget 16
replaceitem block ~3 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~3 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~6 slot.container 9 minecart 1
replaceitem block ~3 ~1 ~6 slot.container 10 lantern 8
replaceitem block ~3 ~1 ~6 slot.container 11 gold_ingot 15
replaceitem block ~3 ~1 ~6 slot.container 12 raw_gold 14
replaceitem block ~3 ~1 ~6 slot.container 13 iron_ingot 6
replaceitem block ~3 ~1 ~6 slot.container 14 rail 17
loot insert ~3 ~1 ~6 loot "rsf/mesa"
loot insert ~3 ~1 ~6 loot "chests/abandoned_mineshaft"
summon spider ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon pillager ~0 ~-2 ~0
