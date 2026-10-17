# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1416/4224 | 主题内编号: b008/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·凯旋双拱圣物祭坛 (mesa_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 red_terracotta [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 red_terracotta [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 smooth_red_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 yellow_terracotta []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 red_terracotta []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 yellow_terracotta []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 cobblestone_wall []
fill ~-4 ~7 ~-4 ~4 ~7 ~4 air []
setblock ~-5 ~7 ~-5 chiseled_red_sandstone []
setblock ~-5 ~8 ~-5 campfire []
setblock ~-5 ~7 ~5 chiseled_red_sandstone []
setblock ~-5 ~8 ~5 campfire []
setblock ~5 ~7 ~-5 chiseled_red_sandstone []
setblock ~5 ~8 ~-5 campfire []
setblock ~5 ~7 ~5 chiseled_red_sandstone []
setblock ~5 ~8 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 chiseled_red_sandstone []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 chiseled_red_sandstone []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 chiseled_red_sandstone []
fill ~7 ~0 ~2 ~7 ~4 ~2 chiseled_red_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~2 ~1 ~-9 gold_block []
setblock ~-2 ~2 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 14
replaceitem block ~-4 ~1 ~4 slot.container 5 gold_nugget 21
replaceitem block ~-4 ~1 ~4 slot.container 9 minecart 1
replaceitem block ~-4 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~-4 ~1 ~4 slot.container 11 gold_ingot 14
replaceitem block ~-4 ~1 ~4 slot.container 12 raw_gold 13
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~-4 ~1 ~4 slot.container 14 rail 16
loot insert ~-4 ~1 ~4 loot "rsf/mesa"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 17
replaceitem block ~4 ~1 ~4 slot.container 1 spider_eye 14
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 17
replaceitem block ~4 ~1 ~4 slot.container 3 gold_nugget 16
replaceitem block ~4 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 minecart 1
replaceitem block ~4 ~1 ~4 slot.container 10 lantern 5
replaceitem block ~4 ~1 ~4 slot.container 11 gold_ingot 12
replaceitem block ~4 ~1 ~4 slot.container 12 raw_gold 11
replaceitem block ~4 ~1 ~4 slot.container 13 iron_ingot 10
replaceitem block ~4 ~1 ~4 slot.container 14 rail 21
loot insert ~4 ~1 ~4 loot "rsf/mesa"
loot insert ~4 ~1 ~4 loot "chests/abandoned_mineshaft"
summon husk ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
