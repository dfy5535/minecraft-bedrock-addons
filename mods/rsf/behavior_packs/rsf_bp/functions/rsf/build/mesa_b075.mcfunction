# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1483/4224 | 主题内编号: b075/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·远古巨石环廊法阵 (mesa_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 hardened_clay [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 hardened_clay [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_terracotta []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 campfire []
setblock ~3 ~-5 ~0 campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 string 19
replaceitem block ~0 ~-3 ~4 slot.container 1 spider_eye 8
replaceitem block ~0 ~-3 ~4 slot.container 2 gunpowder 11
replaceitem block ~0 ~-3 ~4 slot.container 3 gold_nugget 18
replaceitem block ~0 ~-3 ~4 slot.container 4 arrow 19
replaceitem block ~0 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 9 tnt 8
replaceitem block ~0 ~-3 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-3 ~4 slot.container 11 minecart 1
replaceitem block ~0 ~-3 ~4 slot.container 12 lantern 4
replaceitem block ~0 ~-3 ~4 slot.container 13 gold_ingot 11
replaceitem block ~0 ~-3 ~4 slot.container 14 raw_gold 10
loot insert ~0 ~-3 ~4 loot "rsf/mesa"
loot insert ~0 ~-3 ~4 loot "chests/abandoned_mineshaft"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 spider_eye 14
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 17
replaceitem block ~0 ~-3 ~-4 slot.container 3 gold_nugget 16
replaceitem block ~0 ~-3 ~-4 slot.container 4 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 9 tnt 7
replaceitem block ~0 ~-3 ~-4 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 minecart 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 gold_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 raw_gold 9
loot insert ~0 ~-3 ~-4 loot "rsf/mesa"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 orange_terracotta []
fill ~-6 ~1 ~-7 ~-6 ~5 ~-7 dark_oak_log []
fill ~-6 ~1 ~7 ~-6 ~5 ~7 dark_oak_log []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 dark_oak_log []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 dark_oak_log []
fill ~-2 ~1 ~-7 ~-2 ~5 ~-7 dark_oak_log []
fill ~-2 ~1 ~7 ~-2 ~5 ~7 dark_oak_log []
fill ~0 ~1 ~-7 ~0 ~5 ~-7 dark_oak_log []
fill ~0 ~1 ~7 ~0 ~5 ~7 dark_oak_log []
fill ~2 ~1 ~-7 ~2 ~5 ~-7 dark_oak_log []
fill ~2 ~1 ~7 ~2 ~5 ~7 dark_oak_log []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 dark_oak_log []
fill ~4 ~1 ~7 ~4 ~5 ~7 dark_oak_log []
fill ~6 ~1 ~-7 ~6 ~5 ~-7 dark_oak_log []
fill ~6 ~1 ~7 ~6 ~5 ~7 dark_oak_log []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 dark_oak_log []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 dark_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 dark_oak_log []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 dark_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 dark_oak_log []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 dark_oak_log []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 dark_oak_log []
fill ~6 ~1 ~1 ~6 ~5 ~1 dark_oak_log []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 dark_oak_log []
fill ~6 ~1 ~3 ~6 ~5 ~3 dark_oak_log []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 dark_oak_log []
fill ~6 ~1 ~5 ~6 ~5 ~5 dark_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 dark_oak_log []
setblock ~-6 ~9 ~-7 lantern []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 dark_oak_log []
setblock ~-6 ~9 ~7 lantern []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 dark_oak_log []
setblock ~6 ~9 ~-7 lantern []
fill ~6 ~6 ~7 ~6 ~8 ~7 dark_oak_log []
setblock ~6 ~9 ~7 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~0 ~1 ~-9 gold_block []
setblock ~-2 ~4 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 14
replaceitem block ~5 ~1 ~6 slot.container 2 gold_nugget 21
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 10 gold_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 11 raw_gold 9
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 13 rail 19
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 6
loot insert ~5 ~1 ~6 loot "rsf/mesa"
summon cave_spider ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
