# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1497/4224 | 主题内编号: b089/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·四柱挑檐祈愿凉亭 (mesa_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 9x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cut_red_sandstone [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cut_red_sandstone [] replace water
fill ~-4 ~1 ~-5 ~4 ~8 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 red_sandstone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 hardened_clay []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~6 ~4 cut_red_sandstone []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 dark_oak_log []
fill ~3 ~1 ~4 ~3 ~6 ~4 dark_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 dark_oak_fence []
setblock ~3 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 red_sandstone_slab []
fill ~-2 ~7 ~-3 ~2 ~8 ~3 red_sandstone []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 red_sandstone_slab []
setblock ~0 ~10 ~0 emerald_block []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~7 ~-2 chiseled_red_sandstone []
fill ~-4 ~0 ~2 ~-4 ~7 ~2 chiseled_red_sandstone []
fill ~4 ~0 ~-2 ~4 ~7 ~-2 chiseled_red_sandstone []
fill ~4 ~0 ~2 ~4 ~7 ~2 chiseled_red_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 4x7x3) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~1 ~1 ~-8 gold_block []
setblock ~-2 ~3 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 11
replaceitem block ~2 ~1 ~3 slot.container 1 string 14
replaceitem block ~2 ~1 ~3 slot.container 2 spider_eye 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 14
replaceitem block ~2 ~1 ~3 slot.container 4 gold_nugget 21
replaceitem block ~2 ~1 ~3 slot.container 5 arrow 22
replaceitem block ~2 ~1 ~3 slot.container 9 raw_gold 14
replaceitem block ~2 ~1 ~3 slot.container 10 iron_ingot 6
replaceitem block ~2 ~1 ~3 slot.container 11 rail 17
replaceitem block ~2 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~2 ~1 ~3 slot.container 13 cooked_beef 11
replaceitem block ~2 ~1 ~3 slot.container 14 tnt 8
loot insert ~2 ~1 ~3 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
