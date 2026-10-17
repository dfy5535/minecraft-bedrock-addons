# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1507/4224 | 主题内编号: b099/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·铁闸门瓮城防御堡 (mesa_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 hardened_clay [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 hardened_clay [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 red_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 red_terracotta []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~3 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~3 slot.container 3 string 19
replaceitem block ~3 ~-3 ~3 slot.container 4 spider_eye 8
replaceitem block ~3 ~-3 ~3 slot.container 5 gunpowder 11
replaceitem block ~3 ~-3 ~3 slot.container 9 cooked_beef 13
replaceitem block ~3 ~-3 ~3 slot.container 10 tnt 10
replaceitem block ~3 ~-3 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-3 ~3 slot.container 12 minecart 1
replaceitem block ~3 ~-3 ~3 slot.container 13 lantern 6
replaceitem block ~3 ~-3 ~3 slot.container 14 gold_ingot 13
loot insert ~3 ~-3 ~3 loot "rsf/mesa"
loot insert ~3 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 hardened_clay []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 orange_terracotta []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 dark_oak_fence []
fill ~-4 ~7 ~-4 ~4 ~7 ~4 air []
setblock ~-5 ~7 ~-5 dark_oak_log []
setblock ~-5 ~8 ~-5 lantern []
setblock ~-5 ~7 ~5 dark_oak_log []
setblock ~-5 ~8 ~5 lantern []
setblock ~5 ~7 ~-5 dark_oak_log []
setblock ~5 ~8 ~-5 lantern []
setblock ~5 ~7 ~5 dark_oak_log []
setblock ~5 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 cut_red_sandstone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 chiseled_red_sandstone []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 chiseled_red_sandstone []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 red_sandstone_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_sandstone []
fill ~-2 ~1 ~-6 ~2 ~1 ~-6 rail []
setblock ~-2 ~1 ~-7 gold_block []
setblock ~-2 ~3 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~4 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~4 slot.container 2 gold_nugget 21
replaceitem block ~4 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 9 raw_gold 10
replaceitem block ~4 ~1 ~4 slot.container 10 iron_ingot 9
replaceitem block ~4 ~1 ~4 slot.container 11 rail 20
replaceitem block ~4 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~4 ~1 ~4 slot.container 13 cooked_beef 14
replaceitem block ~4 ~1 ~4 slot.container 14 tnt 4
loot insert ~4 ~1 ~4 loot "rsf/mesa"
summon cave_spider ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
