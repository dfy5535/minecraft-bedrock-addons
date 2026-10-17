# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1455/4224 | 主题内编号: b047/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·深渊跨桥决斗长台 (mesa_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 hardened_clay [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 hardened_clay [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_red_sandstone []
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

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 hardened_clay []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 dark_oak_log []
setblock ~-6 ~8 ~-5 lantern []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 dark_oak_log []
setblock ~-6 ~8 ~5 lantern []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 dark_oak_log []
setblock ~6 ~8 ~-5 lantern []
fill ~6 ~5 ~5 ~6 ~7 ~5 dark_oak_log []
setblock ~6 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 dark_oak_log []
setblock ~-8 ~4 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 dark_oak_log []
setblock ~-8 ~4 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 dark_oak_log []
setblock ~8 ~4 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 dark_oak_log []
setblock ~8 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~2 ~1 ~-9 gold_block []
setblock ~-2 ~6 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 bone 11
replaceitem block ~5 ~1 ~4 slot.container 3 string 14
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 11
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~5 ~1 ~4 slot.container 9 cooked_beef 14
replaceitem block ~5 ~1 ~4 slot.container 10 tnt 4
replaceitem block ~5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 12 minecart 1
replaceitem block ~5 ~1 ~4 slot.container 13 lantern 7
replaceitem block ~5 ~1 ~4 slot.container 14 gold_ingot 14
loot insert ~5 ~1 ~4 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
