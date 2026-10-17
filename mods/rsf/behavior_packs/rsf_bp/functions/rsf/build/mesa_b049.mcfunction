# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1457/4224 | 主题内编号: b049/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双坡顶林间猎人木屋 (mesa_outpost_hunter_cabin)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 cut_red_sandstone [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 cut_red_sandstone [] replace water
fill ~-5 ~1 ~-7 ~5 ~7 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 red_sandstone []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 red_sandstone []
fill ~-2 ~-5 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~4 slot.container 0 gold_nugget 18
replaceitem block ~2 ~-3 ~4 slot.container 1 arrow 19
replaceitem block ~2 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-3 ~4 slot.container 4 bone 16
replaceitem block ~2 ~-3 ~4 slot.container 5 string 19
replaceitem block ~2 ~-3 ~4 slot.container 9 cooked_beef 12
replaceitem block ~2 ~-3 ~4 slot.container 10 tnt 9
replaceitem block ~2 ~-3 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~2 ~-3 ~4 slot.container 12 minecart 1
replaceitem block ~2 ~-3 ~4 slot.container 13 lantern 5
replaceitem block ~2 ~-3 ~4 slot.container 14 gold_ingot 12
loot insert ~2 ~-3 ~4 loot "rsf/mesa"
loot insert ~2 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~5 ~6 cut_red_sandstone []
fill ~-3 ~1 ~-5 ~3 ~4 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~5 ~-6 dark_oak_log []
fill ~-4 ~1 ~6 ~-4 ~5 ~6 dark_oak_log []
fill ~4 ~1 ~-6 ~4 ~5 ~-6 dark_oak_log []
fill ~4 ~1 ~6 ~4 ~5 ~6 dark_oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 dark_oak_fence []
setblock ~4 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-7 ~5 ~5 ~7 hardened_clay []
fill ~-5 ~6 ~-7 ~5 ~6 ~7 dark_oak_fence []
fill ~-4 ~6 ~-6 ~4 ~6 ~6 air []
setblock ~-5 ~6 ~-7 dark_oak_log []
setblock ~-5 ~7 ~-7 torch []
setblock ~-5 ~6 ~7 dark_oak_log []
setblock ~-5 ~7 ~7 torch []
setblock ~5 ~6 ~-7 dark_oak_log []
setblock ~5 ~7 ~-7 torch []
setblock ~5 ~6 ~7 dark_oak_log []
setblock ~5 ~7 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 smooth_red_sandstone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x8x3) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~-1 ~1 ~-9 gold_block []
setblock ~-2 ~3 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 bone 11
replaceitem block ~3 ~1 ~5 slot.container 1 string 14
replaceitem block ~3 ~1 ~5 slot.container 2 spider_eye 11
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 14
replaceitem block ~3 ~1 ~5 slot.container 4 gold_nugget 21
replaceitem block ~3 ~1 ~5 slot.container 5 arrow 22
replaceitem block ~3 ~1 ~5 slot.container 9 raw_gold 9
replaceitem block ~3 ~1 ~5 slot.container 10 iron_ingot 8
replaceitem block ~3 ~1 ~5 slot.container 11 rail 19
replaceitem block ~3 ~1 ~5 slot.container 12 golden_apple 6
replaceitem block ~3 ~1 ~5 slot.container 13 cooked_beef 13
replaceitem block ~3 ~1 ~5 slot.container 14 tnt 10
loot insert ~3 ~1 ~5 loot "rsf/mesa"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon spider ~0 ~-3 ~0
