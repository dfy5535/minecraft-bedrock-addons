# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1431/4224 | 主题内编号: b023/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双层露台阁楼宝室 (mesa_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 hardened_clay [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 hardened_clay [] replace water
fill ~-5 ~1 ~-7 ~5 ~9 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 red_sandstone []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 orange_terracotta []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~3 ~6 hardened_clay []
fill ~-3 ~1 ~-5 ~3 ~2 ~5 air []
fill ~-5 ~3 ~-7 ~5 ~3 ~7 red_sandstone_slab []
fill ~-3 ~4 ~-5 ~3 ~7 ~5 red_terracotta []
fill ~-2 ~4 ~-4 ~2 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 red_sandstone_slab []
fill ~-3 ~8 ~-5 ~3 ~9 ~5 red_terracotta []
fill ~-4 ~10 ~-6 ~4 ~10 ~6 red_sandstone_slab []
setblock ~0 ~11 ~0 raw_gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~9 ~2 red_terracotta []
fill ~5 ~1 ~-1 ~6 ~8 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x9x2) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~1 ~1 ~-10 gold_block []
setblock ~-2 ~2 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 2 bone 11
replaceitem block ~3 ~1 ~5 slot.container 3 string 14
replaceitem block ~3 ~1 ~5 slot.container 4 spider_eye 11
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 14
replaceitem block ~3 ~1 ~5 slot.container 9 rail 19
replaceitem block ~3 ~1 ~5 slot.container 10 golden_apple 6
replaceitem block ~3 ~1 ~5 slot.container 11 cooked_beef 13
replaceitem block ~3 ~1 ~5 slot.container 12 tnt 10
replaceitem block ~3 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~5 slot.container 14 minecart 1
loot insert ~3 ~1 ~5 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
