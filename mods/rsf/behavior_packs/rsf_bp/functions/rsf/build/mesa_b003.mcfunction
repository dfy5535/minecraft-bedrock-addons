# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1411/4224 | 主题内编号: b003/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·环柱巨石方尖祭坛 (mesa_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_terracotta []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 orange_terracotta []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 gold_nugget 18
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 19
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 19
replaceitem block ~0 ~-3 ~-4 slot.container 9 lantern 4
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 11 raw_gold 10
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_ingot 9
replaceitem block ~0 ~-3 ~-4 slot.container 13 rail 20
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_apple 7
loot insert ~0 ~-3 ~-4 loot "rsf/mesa"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 orange_terracotta []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 dark_oak_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 dark_oak_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 dark_oak_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 dark_oak_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 dark_oak_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 dark_oak_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 dark_oak_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 dark_oak_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 dark_oak_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 dark_oak_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 dark_oak_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 dark_oak_log []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 dark_oak_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 dark_oak_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 dark_oak_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 dark_oak_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 dark_oak_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 dark_oak_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 dark_oak_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 dark_oak_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 dark_oak_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 dark_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 orange_terracotta []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 hardened_clay []
fill ~0 ~14 ~0 ~0 ~14 ~0 raw_gold_block []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 dark_oak_log []
setblock ~0 ~4 ~-8 gold_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 dark_oak_log []
setblock ~0 ~4 ~8 gold_block []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 dark_oak_log []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 dark_oak_log []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~2 ~1 ~-8 gold_block []
setblock ~-2 ~2 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 2 gold_nugget 21
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 rail 20
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_beef 14
replaceitem block ~4 ~1 ~5 slot.container 12 tnt 4
replaceitem block ~4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 14 minecart 1
loot insert ~4 ~1 ~5 loot "rsf/mesa"
summon cave_spider ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
