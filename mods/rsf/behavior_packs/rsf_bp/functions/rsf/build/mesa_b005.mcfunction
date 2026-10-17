# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1413/4224 | 主题内编号: b005/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·下沉圣泉秘宝祭坛 (mesa_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x13 | 地上高度 4格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cut_red_sandstone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cut_red_sandstone [] replace water
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 hardened_clay []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 bone 16
replaceitem block ~-2 ~-4 ~3 slot.container 3 string 19
replaceitem block ~-2 ~-4 ~3 slot.container 4 spider_eye 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 gunpowder 11
replaceitem block ~-2 ~-4 ~3 slot.container 9 cooked_beef 8
replaceitem block ~-2 ~-4 ~3 slot.container 10 tnt 5
replaceitem block ~-2 ~-4 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~-2 ~-4 ~3 slot.container 12 minecart 1
replaceitem block ~-2 ~-4 ~3 slot.container 13 lantern 8
replaceitem block ~-2 ~-4 ~3 slot.container 14 gold_ingot 15
loot insert ~-2 ~-4 ~3 loot "rsf/mesa"
loot insert ~-2 ~-4 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 cut_red_sandstone []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 hardened_clay []
fill ~0 ~1 ~-5 ~0 ~2 ~5 hardened_clay []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~4 ~-6 ~5 ~4 ~6 hardened_clay []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 dark_oak_fence []
fill ~-4 ~5 ~-5 ~4 ~5 ~5 air []
setblock ~-5 ~5 ~-6 dark_oak_log []
setblock ~-5 ~6 ~-6 torch []
setblock ~-5 ~5 ~6 dark_oak_log []
setblock ~-5 ~6 ~6 torch []
setblock ~5 ~5 ~-6 dark_oak_log []
setblock ~5 ~6 ~-6 torch []
setblock ~5 ~5 ~6 dark_oak_log []
setblock ~5 ~6 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 dark_oak_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x8x4) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~-1 ~1 ~-9 gold_block []
setblock ~-2 ~4 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gold_nugget 21
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 bone 11
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 10
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 11 raw_gold 9
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 13 rail 19
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~3 ~1 ~4 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
