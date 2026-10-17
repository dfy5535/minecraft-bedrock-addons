# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1447/4224 | 主题内编号: b039/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·永恒圣火图腾方尖塔 (mesa_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 9x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 hardened_clay [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 hardened_clay [] replace water
fill ~-4 ~1 ~-5 ~4 ~11 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 red_sandstone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 hardened_clay []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 spider_eye 8
replaceitem block ~1 ~-3 ~2 slot.container 1 gunpowder 11
replaceitem block ~1 ~-3 ~2 slot.container 2 gold_nugget 18
replaceitem block ~1 ~-3 ~2 slot.container 3 arrow 19
replaceitem block ~1 ~-3 ~2 slot.container 4 ender_pearl 6
replaceitem block ~1 ~-3 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~1 ~-3 ~2 slot.container 9 iron_pickaxe 1
replaceitem block ~1 ~-3 ~2 slot.container 10 minecart 1
replaceitem block ~1 ~-3 ~2 slot.container 11 lantern 10
replaceitem block ~1 ~-3 ~2 slot.container 12 gold_ingot 10
replaceitem block ~1 ~-3 ~2 slot.container 13 raw_gold 9
replaceitem block ~1 ~-3 ~2 slot.container 14 iron_ingot 8
loot insert ~1 ~-3 ~2 loot "rsf/mesa"
loot insert ~1 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~9 ~4 hardened_clay []
fill ~-2 ~1 ~-3 ~2 ~8 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 dark_oak_log []
fill ~3 ~1 ~4 ~3 ~9 ~4 dark_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 dark_oak_fence []
setblock ~3 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 orange_terracotta []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 hardened_clay []
fill ~0 ~15 ~0 ~0 ~15 ~0 raw_gold_block []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 dark_oak_log []
setblock ~0 ~4 ~-6 gold_block []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 dark_oak_log []
setblock ~0 ~4 ~6 gold_block []
setblock ~0 ~5 ~6 lantern []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 dark_oak_log []
setblock ~-5 ~4 ~0 gold_block []
setblock ~-5 ~5 ~0 lantern []
fill ~5 ~0 ~0 ~5 ~3 ~0 dark_oak_log []
setblock ~5 ~4 ~0 gold_block []
setblock ~5 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 4x5x3) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 red_sandstone []
fill ~-2 ~1 ~-5 ~2 ~1 ~-5 rail []
setblock ~-1 ~1 ~-6 gold_block []
setblock ~-2 ~3 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-3 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~2 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 2 bone 11
replaceitem block ~2 ~1 ~3 slot.container 3 string 14
replaceitem block ~2 ~1 ~3 slot.container 4 spider_eye 11
replaceitem block ~2 ~1 ~3 slot.container 5 gunpowder 14
replaceitem block ~2 ~1 ~3 slot.container 9 raw_gold 13
replaceitem block ~2 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~2 ~1 ~3 slot.container 11 rail 16
replaceitem block ~2 ~1 ~3 slot.container 12 golden_apple 3
replaceitem block ~2 ~1 ~3 slot.container 13 cooked_beef 10
replaceitem block ~2 ~1 ~3 slot.container 14 tnt 7
loot insert ~2 ~1 ~3 loot "rsf/mesa"
summon cave_spider ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
