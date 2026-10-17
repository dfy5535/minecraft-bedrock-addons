# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1449/4224 | 主题内编号: b041/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·八角看台古罗马斗技场 (mesa_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cut_red_sandstone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cut_red_sandstone [] replace water
fill ~-7 ~1 ~-8 ~7 ~7 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cut_red_sandstone []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~-4 ~-5 ~-5 torch []
setblock ~4 ~-5 ~5 torch []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 bone 16
replaceitem block ~0 ~-3 ~5 slot.container 1 string 19
replaceitem block ~0 ~-3 ~5 slot.container 2 spider_eye 8
replaceitem block ~0 ~-3 ~5 slot.container 3 gunpowder 11
replaceitem block ~0 ~-3 ~5 slot.container 4 gold_nugget 18
replaceitem block ~0 ~-3 ~5 slot.container 5 arrow 19
replaceitem block ~0 ~-3 ~5 slot.container 9 lantern 8
replaceitem block ~0 ~-3 ~5 slot.container 10 gold_ingot 15
replaceitem block ~0 ~-3 ~5 slot.container 11 raw_gold 14
replaceitem block ~0 ~-3 ~5 slot.container 12 iron_ingot 6
replaceitem block ~0 ~-3 ~5 slot.container 13 rail 17
replaceitem block ~0 ~-3 ~5 slot.container 14 golden_apple 4
loot insert ~0 ~-3 ~5 loot "rsf/mesa"
loot insert ~0 ~-3 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-7 ~6 ~5 ~7 cut_red_sandstone []
fill ~-5 ~1 ~-6 ~5 ~4 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 air []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 air []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 air []
fill ~6 ~1 ~7 ~6 ~6 ~7 air []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 dark_oak_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 dark_oak_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 dark_oak_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 dark_oak_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-7 ~-6 ~7 ~-7 dark_oak_log []
setblock ~-6 ~8 ~-7 torch []
fill ~-6 ~5 ~7 ~-6 ~7 ~7 dark_oak_log []
setblock ~-6 ~8 ~7 torch []
fill ~6 ~5 ~-7 ~6 ~7 ~-7 dark_oak_log []
setblock ~6 ~8 ~-7 torch []
fill ~6 ~5 ~7 ~6 ~7 ~7 dark_oak_log []
setblock ~6 ~8 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 dark_oak_log []
setblock ~-8 ~4 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 dark_oak_log []
setblock ~-8 ~4 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 dark_oak_log []
setblock ~8 ~4 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~3 ~9 dark_oak_log []
setblock ~8 ~4 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x10x5) ---
fill ~-2 ~0 ~-11 ~2 ~0 ~-10 red_sandstone []
fill ~-2 ~1 ~-10 ~2 ~1 ~-10 rail []
setblock ~2 ~1 ~-11 gold_block []
setblock ~-2 ~5 ~-11 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 11
replaceitem block ~5 ~1 ~6 slot.container 1 string 14
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 14
replaceitem block ~5 ~1 ~6 slot.container 4 gold_nugget 21
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 10 minecart 1
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 6
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 13 raw_gold 12
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 11
loot insert ~5 ~1 ~6 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
