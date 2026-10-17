# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1491/4224 | 主题内编号: b083/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·铁砧锻造与模具工坊 (mesa_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 hardened_clay []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 3 string 19
replaceitem block ~3 ~-3 ~4 slot.container 4 spider_eye 8
replaceitem block ~3 ~-3 ~4 slot.container 5 gunpowder 11
replaceitem block ~3 ~-3 ~4 slot.container 9 lantern 10
replaceitem block ~3 ~-3 ~4 slot.container 10 gold_ingot 10
replaceitem block ~3 ~-3 ~4 slot.container 11 raw_gold 9
replaceitem block ~3 ~-3 ~4 slot.container 12 iron_ingot 8
replaceitem block ~3 ~-3 ~4 slot.container 13 rail 19
replaceitem block ~3 ~-3 ~4 slot.container 14 golden_apple 6
loot insert ~3 ~-3 ~4 loot "rsf/mesa"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~5 ~6 hardened_clay []
fill ~-5 ~1 ~0 ~5 ~4 ~6 red_terracotta []
fill ~-4 ~1 ~-5 ~-1 ~4 ~5 air []
fill ~-1 ~1 ~1 ~4 ~3 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 red_sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 red_sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 red_sandstone_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 red_sandstone_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 red_sandstone_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 orange_terracotta []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~4 ~-2 dark_oak_log []
fill ~-6 ~0 ~2 ~-6 ~4 ~2 dark_oak_log []
fill ~6 ~0 ~-2 ~6 ~4 ~-2 dark_oak_log []
fill ~6 ~0 ~2 ~6 ~4 ~2 dark_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x9x2) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~2 ~1 ~-10 gold_block []
setblock ~-2 ~2 ~-10 lantern []

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
replaceitem block ~4 ~1 ~5 slot.container 9 rail 16
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_beef 10
replaceitem block ~4 ~1 ~5 slot.container 12 tnt 7
replaceitem block ~4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 14 minecart 1
loot insert ~4 ~1 ~5 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
