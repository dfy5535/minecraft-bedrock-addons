# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1499/4224 | 主题内编号: b091/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·跨水拱桥水神小祠 (mesa_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 hardened_clay [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 hardened_clay [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 orange_terracotta []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 gold_nugget 18
replaceitem block ~-3 ~-3 ~2 slot.container 1 arrow 19
replaceitem block ~-3 ~-3 ~2 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 16
replaceitem block ~-3 ~-3 ~2 slot.container 5 string 19
replaceitem block ~-3 ~-3 ~2 slot.container 9 rail 18
replaceitem block ~-3 ~-3 ~2 slot.container 10 golden_apple 5
replaceitem block ~-3 ~-3 ~2 slot.container 11 cooked_beef 12
replaceitem block ~-3 ~-3 ~2 slot.container 12 tnt 9
replaceitem block ~-3 ~-3 ~2 slot.container 13 iron_pickaxe 1
replaceitem block ~-3 ~-3 ~2 slot.container 14 minecart 1
loot insert ~-3 ~-3 ~2 loot "rsf/mesa"
loot insert ~-3 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 hardened_clay []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 red_sandstone_slab []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 red_terracotta []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 red_sandstone_slab []
setblock ~0 ~10 ~0 raw_gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 orange_terracotta []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_sandstone []
fill ~-2 ~1 ~-6 ~2 ~1 ~-6 rail []
setblock ~0 ~1 ~-7 gold_block []
setblock ~-2 ~5 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~3 slot.container 2 gold_nugget 21
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~3 slot.container 10 minecart 1
replaceitem block ~4 ~1 ~3 slot.container 11 lantern 7
replaceitem block ~4 ~1 ~3 slot.container 12 gold_ingot 14
replaceitem block ~4 ~1 ~3 slot.container 13 raw_gold 13
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~4 ~1 ~3 loot "rsf/mesa"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon spider ~0 ~-3 ~0
