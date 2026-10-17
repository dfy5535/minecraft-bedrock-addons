# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1525/4224 | 主题内编号: b117/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·环柱生态标本采集馆 (mesa_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cut_red_sandstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cut_red_sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 red_sandstone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 1 string 19
replaceitem block ~3 ~-3 ~4 slot.container 2 spider_eye 8
replaceitem block ~3 ~-3 ~4 slot.container 3 gunpowder 11
replaceitem block ~3 ~-3 ~4 slot.container 4 gold_nugget 18
replaceitem block ~3 ~-3 ~4 slot.container 5 arrow 19
replaceitem block ~3 ~-3 ~4 slot.container 9 lantern 6
replaceitem block ~3 ~-3 ~4 slot.container 10 gold_ingot 13
replaceitem block ~3 ~-3 ~4 slot.container 11 raw_gold 12
replaceitem block ~3 ~-3 ~4 slot.container 12 iron_ingot 11
replaceitem block ~3 ~-3 ~4 slot.container 13 rail 22
replaceitem block ~3 ~-3 ~4 slot.container 14 golden_apple 2
loot insert ~3 ~-3 ~4 loot "rsf/mesa"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 hardened_clay []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 dark_oak_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 dark_oak_log []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 dark_oak_log []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 dark_oak_log []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 dark_oak_log []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 dark_oak_log []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 dark_oak_log []
fill ~1 ~1 ~6 ~1 ~5 ~6 dark_oak_log []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 dark_oak_log []
fill ~3 ~1 ~6 ~3 ~5 ~6 dark_oak_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 dark_oak_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 dark_oak_log []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 dark_oak_log []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 dark_oak_log []
fill ~-5 ~1 ~-2 ~-5 ~5 ~-2 dark_oak_log []
fill ~5 ~1 ~-2 ~5 ~5 ~-2 dark_oak_log []
fill ~-5 ~1 ~0 ~-5 ~5 ~0 dark_oak_log []
fill ~5 ~1 ~0 ~5 ~5 ~0 dark_oak_log []
fill ~-5 ~1 ~2 ~-5 ~5 ~2 dark_oak_log []
fill ~5 ~1 ~2 ~5 ~5 ~2 dark_oak_log []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 dark_oak_log []
fill ~5 ~1 ~4 ~5 ~5 ~4 dark_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 hardened_clay []
fill ~-4 ~7 ~-5 ~4 ~8 ~5 glass []
fill ~-3 ~7 ~-4 ~3 ~7 ~4 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~3 ~-8 dark_oak_log []
setblock ~-7 ~4 ~-8 torch []
fill ~-7 ~0 ~8 ~-7 ~3 ~8 dark_oak_log []
setblock ~-7 ~4 ~8 torch []
fill ~7 ~0 ~-8 ~7 ~3 ~-8 dark_oak_log []
setblock ~7 ~4 ~-8 torch []
fill ~7 ~0 ~8 ~7 ~3 ~8 dark_oak_log []
setblock ~7 ~4 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~1 ~1 ~-8 gold_block []
setblock ~-2 ~6 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 21
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_beef 14
replaceitem block ~4 ~1 ~5 slot.container 10 tnt 4
replaceitem block ~4 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 12 minecart 1
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 14
loot insert ~4 ~1 ~5 loot "rsf/mesa"
summon cave_spider ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
