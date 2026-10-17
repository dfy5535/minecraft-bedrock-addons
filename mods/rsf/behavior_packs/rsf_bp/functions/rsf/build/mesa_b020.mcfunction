# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1428/4224 | 主题内编号: b020/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·重甲防爆金库房间 (mesa_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_terracotta [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_terracotta [] replace water
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 raw_gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 spider_eye 8
replaceitem block ~0 ~-4 ~4 slot.container 1 gunpowder 11
replaceitem block ~0 ~-4 ~4 slot.container 2 gold_nugget 18
replaceitem block ~0 ~-4 ~4 slot.container 3 arrow 19
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 9 lantern 6
replaceitem block ~0 ~-4 ~4 slot.container 10 gold_ingot 13
replaceitem block ~0 ~-4 ~4 slot.container 11 raw_gold 12
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_ingot 11
replaceitem block ~0 ~-4 ~4 slot.container 13 rail 22
replaceitem block ~0 ~-4 ~4 slot.container 14 golden_apple 2
loot insert ~0 ~-4 ~4 loot "rsf/mesa"
loot insert ~0 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 red_terracotta []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-4 ~1 ~-5 ~-3 ~7 ~-4 yellow_terracotta []
setblock ~-4 ~8 ~-5 campfire []
fill ~-4 ~1 ~4 ~-3 ~7 ~5 yellow_terracotta []
setblock ~-4 ~8 ~4 campfire []
fill ~3 ~1 ~-5 ~4 ~7 ~-4 yellow_terracotta []
setblock ~3 ~8 ~-5 campfire []
fill ~3 ~1 ~4 ~4 ~7 ~5 yellow_terracotta []
setblock ~3 ~8 ~4 campfire []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~5 ~-5 ~4 ~5 ~5 yellow_terracotta []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 cobblestone_wall []
fill ~-3 ~6 ~-4 ~3 ~6 ~4 air []
setblock ~-4 ~6 ~-5 chiseled_red_sandstone []
setblock ~-4 ~7 ~-5 campfire []
setblock ~-4 ~6 ~5 chiseled_red_sandstone []
setblock ~-4 ~7 ~5 campfire []
setblock ~4 ~6 ~-5 chiseled_red_sandstone []
setblock ~4 ~7 ~-5 campfire []
setblock ~4 ~6 ~5 chiseled_red_sandstone []
setblock ~4 ~7 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~4 ~-2 chiseled_red_sandstone []
fill ~-5 ~0 ~2 ~-5 ~4 ~2 chiseled_red_sandstone []
fill ~5 ~0 ~-2 ~5 ~4 ~-2 chiseled_red_sandstone []
fill ~5 ~0 ~2 ~5 ~4 ~2 chiseled_red_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x8x4) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~-2 ~1 ~-9 gold_block []
setblock ~-2 ~4 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 14
replaceitem block ~-3 ~1 ~4 slot.container 1 gold_nugget 21
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 golden_apple 2
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_beef 9
replaceitem block ~-3 ~1 ~4 slot.container 11 tnt 6
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 13 minecart 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 9
loot insert ~-3 ~1 ~4 loot "rsf/mesa"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 17
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 14
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 7
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_beef 14
replaceitem block ~3 ~1 ~4 slot.container 11 tnt 4
replaceitem block ~3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 13 minecart 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 7
loot insert ~3 ~1 ~4 loot "rsf/mesa"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon husk ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
