# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1515/4224 | 主题内编号: b107/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·观星高塔与秘术地宫 (mesa_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 hardened_clay [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 hardened_clay [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 red_terracotta []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 raw_gold_block []
setblock ~0 ~-7 ~0 lantern []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-4 ~0 slot.container 0 spider_eye 8
replaceitem block ~2 ~-4 ~0 slot.container 1 gunpowder 11
replaceitem block ~2 ~-4 ~0 slot.container 2 gold_nugget 18
replaceitem block ~2 ~-4 ~0 slot.container 3 arrow 19
replaceitem block ~2 ~-4 ~0 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-4 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~2 ~-4 ~0 slot.container 9 raw_gold 9
replaceitem block ~2 ~-4 ~0 slot.container 10 iron_ingot 8
replaceitem block ~2 ~-4 ~0 slot.container 11 rail 19
replaceitem block ~2 ~-4 ~0 slot.container 12 golden_apple 6
replaceitem block ~2 ~-4 ~0 slot.container 13 cooked_beef 13
replaceitem block ~2 ~-4 ~0 slot.container 14 tnt 10
loot insert ~2 ~-4 ~0 loot "rsf/mesa"
loot insert ~2 ~-4 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 hardened_clay []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 red_sandstone_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~8 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 orange_terracotta []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 dark_oak_log []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 dark_oak_log []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 dark_oak_log []
fill ~5 ~0 ~2 ~5 ~7 ~2 dark_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x8x6) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~1 ~1 ~-9 gold_block []
setblock ~-2 ~6 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 2 gold_nugget 21
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_beef 11
replaceitem block ~3 ~1 ~4 slot.container 10 tnt 8
replaceitem block ~3 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 12 minecart 1
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 4
replaceitem block ~3 ~1 ~4 slot.container 14 gold_ingot 11
loot insert ~3 ~1 ~4 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
