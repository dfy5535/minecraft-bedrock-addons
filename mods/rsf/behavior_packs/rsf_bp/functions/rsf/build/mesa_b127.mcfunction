# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1535/4224 | 主题内编号: b127/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·万神殿巨型穹顶与试炼宫 (mesa_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 hardened_clay [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 hardened_clay [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 raw_gold_block []
setblock ~-4 ~-6 ~-5 lantern []
setblock ~4 ~-6 ~5 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 3 string 19
replaceitem block ~0 ~-4 ~5 slot.container 4 spider_eye 8
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 11
replaceitem block ~0 ~-4 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~0 ~-4 ~5 slot.container 10 minecart 1
replaceitem block ~0 ~-4 ~5 slot.container 11 lantern 5
replaceitem block ~0 ~-4 ~5 slot.container 12 gold_ingot 12
replaceitem block ~0 ~-4 ~5 slot.container 13 raw_gold 11
replaceitem block ~0 ~-4 ~5 slot.container 14 iron_ingot 10
loot insert ~0 ~-4 ~5 loot "rsf/mesa"
loot insert ~0 ~-4 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 orange_terracotta []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 dark_oak_log []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 dark_oak_log []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 dark_oak_log []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 dark_oak_log []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 dark_oak_log []
fill ~-2 ~1 ~7 ~-2 ~6 ~7 dark_oak_log []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 dark_oak_log []
fill ~0 ~1 ~7 ~0 ~6 ~7 dark_oak_log []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 dark_oak_log []
fill ~2 ~1 ~7 ~2 ~6 ~7 dark_oak_log []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 dark_oak_log []
fill ~4 ~1 ~7 ~4 ~6 ~7 dark_oak_log []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 dark_oak_log []
fill ~6 ~1 ~7 ~6 ~6 ~7 dark_oak_log []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 dark_oak_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 dark_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 dark_oak_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 dark_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 dark_oak_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 dark_oak_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 dark_oak_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 dark_oak_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 dark_oak_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 dark_oak_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 dark_oak_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 dark_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 orange_terracotta []
fill ~-5 ~8 ~-6 ~5 ~9 ~6 glass []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 dark_oak_log []
setblock ~0 ~4 ~-9 gold_block []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 dark_oak_log []
setblock ~0 ~4 ~9 gold_block []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 dark_oak_log []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 dark_oak_log []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~-2 ~1 ~-10 gold_block []
setblock ~-2 ~6 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 2 bone 11
replaceitem block ~5 ~1 ~6 slot.container 3 string 14
replaceitem block ~5 ~1 ~6 slot.container 4 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 14
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_beef 10
replaceitem block ~5 ~1 ~6 slot.container 10 tnt 7
replaceitem block ~5 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 12 minecart 1
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 14 gold_ingot 10
loot insert ~5 ~1 ~6 loot "rsf/mesa"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon spider ~0 ~-4 ~0
