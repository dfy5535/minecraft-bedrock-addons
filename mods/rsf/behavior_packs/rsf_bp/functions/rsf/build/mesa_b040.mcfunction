# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1448/4224 | 主题内编号: b040/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·崩裂远古符文石碑 (mesa_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_terracotta [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_terracotta [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 cut_red_sandstone []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 gunpowder 11
replaceitem block ~2 ~-2 ~3 slot.container 1 gold_nugget 18
replaceitem block ~2 ~-2 ~3 slot.container 2 arrow 19
replaceitem block ~2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 5 bone 16
replaceitem block ~2 ~-2 ~3 slot.container 9 minecart 1
replaceitem block ~2 ~-2 ~3 slot.container 10 lantern 7
replaceitem block ~2 ~-2 ~3 slot.container 11 gold_ingot 14
replaceitem block ~2 ~-2 ~3 slot.container 12 raw_gold 13
replaceitem block ~2 ~-2 ~3 slot.container 13 iron_ingot 12
replaceitem block ~2 ~-2 ~3 slot.container 14 rail 16
loot insert ~2 ~-2 ~3 loot "rsf/mesa"
loot insert ~2 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 red_terracotta []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 yellow_terracotta []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 cut_red_sandstone []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 smooth_red_sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 red_sandstone_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-4 ~6 ~-1 ~-4 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~6 ~-2 chiseled_red_sandstone []
fill ~-5 ~0 ~2 ~-5 ~6 ~2 chiseled_red_sandstone []
fill ~5 ~0 ~-2 ~5 ~6 ~-2 chiseled_red_sandstone []
fill ~5 ~0 ~2 ~5 ~6 ~2 chiseled_red_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x7x4) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~-2 ~1 ~-8 gold_block []
setblock ~-2 ~4 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-5 ~1 ~6 ~-1 ~2 ~6 barrel ["facing_direction"=2]
setblock ~0 ~1 ~6 crafting_table []
setblock ~0 ~1 ~0 raw_gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 2 string 14
replaceitem block ~-3 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 14
replaceitem block ~-3 ~1 ~4 slot.container 5 gold_nugget 21
replaceitem block ~-3 ~1 ~4 slot.container 9 golden_apple 8
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_beef 8
replaceitem block ~-3 ~1 ~4 slot.container 11 tnt 5
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 13 minecart 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 8
loot insert ~-3 ~1 ~4 loot "rsf/mesa"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 17
replaceitem block ~3 ~1 ~4 slot.container 1 spider_eye 14
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 17
replaceitem block ~3 ~1 ~4 slot.container 3 gold_nugget 16
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_beef 13
replaceitem block ~3 ~1 ~4 slot.container 11 tnt 10
replaceitem block ~3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 13 minecart 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 6
loot insert ~3 ~1 ~4 loot "rsf/mesa"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon spider ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon pillager ~0 ~-2 ~0
