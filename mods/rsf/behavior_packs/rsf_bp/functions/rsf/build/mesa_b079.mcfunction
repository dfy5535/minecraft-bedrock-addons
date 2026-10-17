# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1487/4224 | 主题内编号: b079/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·四角结界守护柱阵 (mesa_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 red_terracotta []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 spider_eye 8
replaceitem block ~3 ~-3 ~4 slot.container 1 gunpowder 11
replaceitem block ~3 ~-3 ~4 slot.container 2 gold_nugget 18
replaceitem block ~3 ~-3 ~4 slot.container 3 arrow 19
replaceitem block ~3 ~-3 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 9 cooked_beef 14
replaceitem block ~3 ~-3 ~4 slot.container 10 tnt 4
replaceitem block ~3 ~-3 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-3 ~4 slot.container 12 minecart 1
replaceitem block ~3 ~-3 ~4 slot.container 13 lantern 7
replaceitem block ~3 ~-3 ~4 slot.container 14 gold_ingot 14
loot insert ~3 ~-3 ~4 loot "rsf/mesa"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 hardened_clay []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~8 ~-5 orange_terracotta []
setblock ~-5 ~9 ~-6 lantern []
fill ~-5 ~1 ~5 ~-4 ~8 ~6 orange_terracotta []
setblock ~-5 ~9 ~5 lantern []
fill ~4 ~1 ~-6 ~5 ~8 ~-5 orange_terracotta []
setblock ~4 ~9 ~-6 lantern []
fill ~4 ~1 ~5 ~5 ~8 ~6 orange_terracotta []
setblock ~4 ~9 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 dark_oak_log []
setblock ~-5 ~9 ~-6 lantern []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 dark_oak_log []
setblock ~-5 ~9 ~6 lantern []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 dark_oak_log []
setblock ~5 ~9 ~-6 lantern []
fill ~5 ~6 ~6 ~5 ~8 ~6 dark_oak_log []
setblock ~5 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 yellow_terracotta []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~-2 ~1 ~-9 gold_block []
setblock ~-2 ~3 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 string 14
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 9 raw_gold 11
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 11 rail 21
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 8
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_beef 8
replaceitem block ~4 ~1 ~5 slot.container 14 tnt 5
loot insert ~4 ~1 ~5 loot "rsf/mesa"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon spider ~0 ~-3 ~0
