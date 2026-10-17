# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1479/4224 | 主题内编号: b071/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·残破双子哨所遗迹 (mesa_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 hardened_clay [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 hardened_clay [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 red_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 orange_terracotta []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~7 ~5 hardened_clay []
fill ~2 ~1 ~-5 ~5 ~7 ~5 hardened_clay []
fill ~-4 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 orange_terracotta []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 red_sandstone_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 smooth_red_sandstone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~0 ~1 ~-9 gold_block []
setblock ~-2 ~5 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 2 bone 11
replaceitem block ~4 ~1 ~4 slot.container 3 string 14
replaceitem block ~4 ~1 ~4 slot.container 4 spider_eye 11
replaceitem block ~4 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~4 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~4 slot.container 10 minecart 1
replaceitem block ~4 ~1 ~4 slot.container 11 lantern 8
replaceitem block ~4 ~1 ~4 slot.container 12 gold_ingot 15
replaceitem block ~4 ~1 ~4 slot.container 13 raw_gold 14
replaceitem block ~4 ~1 ~4 slot.container 14 iron_ingot 6
loot insert ~4 ~1 ~4 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
