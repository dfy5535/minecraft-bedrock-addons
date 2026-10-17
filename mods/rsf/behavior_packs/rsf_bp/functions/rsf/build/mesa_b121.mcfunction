# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1529/4224 | 主题内编号: b121/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·卫城廊柱王座大殿与地宫 (mesa_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cut_red_sandstone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cut_red_sandstone [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 cut_red_sandstone []

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~7 ~7 cut_red_sandstone []
fill ~-5 ~1 ~0 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 dark_oak_log []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 dark_oak_log []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 dark_oak_log []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 dark_oak_log []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 dark_oak_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 dark_oak_log []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 dark_oak_log []
fill ~-6 ~7 ~-7 ~6 ~7 ~-1 hardened_clay []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-8 ~-7 ~8 ~8 dark_oak_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-8 ~7 ~8 ~8 dark_oak_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-7 ~-6 ~9 ~7 dark_oak_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-7 ~6 ~9 ~7 dark_oak_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-7 ~5 ~9 ~7 red_sandstone_slab []
fill ~0 ~10 ~-8 ~0 ~10 ~8 hardened_clay []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 dark_oak_log []
setblock ~-8 ~4 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 dark_oak_log []
setblock ~-8 ~4 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 dark_oak_log []
setblock ~8 ~4 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~3 ~9 dark_oak_log []
setblock ~8 ~4 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~-2 ~1 ~-10 gold_block []
setblock ~-2 ~5 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 emerald_block []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 torch []

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
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 9
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 16
replaceitem block ~5 ~1 ~6 slot.container 13 raw_gold 8
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 7
loot insert ~5 ~1 ~6 loot "rsf/mesa"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon spider ~0 ~-4 ~0
