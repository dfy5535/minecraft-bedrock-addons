# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1509/4224 | 主题内编号: b101/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·L型驻军兵营军械所 (mesa_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
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
replaceitem block ~3 ~-3 ~4 slot.container 9 raw_gold 8
replaceitem block ~3 ~-3 ~4 slot.container 10 iron_ingot 7
replaceitem block ~3 ~-3 ~4 slot.container 11 rail 18
replaceitem block ~3 ~-3 ~4 slot.container 12 golden_apple 5
replaceitem block ~3 ~-3 ~4 slot.container 13 cooked_beef 12
replaceitem block ~3 ~-3 ~4 slot.container 14 tnt 9
loot insert ~3 ~-3 ~4 loot "rsf/mesa"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 cut_red_sandstone []
fill ~-5 ~1 ~0 ~5 ~5 ~6 red_sandstone []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 red_sandstone_slab []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 hardened_clay []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 red_sandstone_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 red_sandstone []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x9x5) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~0 ~1 ~-10 gold_block []
setblock ~-2 ~5 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 21
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 10 minecart 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 13 raw_gold 9
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 8
loot insert ~4 ~1 ~5 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
