# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1516/4224 | 主题内编号: b108/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·十字四相元素秘法殿 (mesa_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_terracotta [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_terracotta [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 hardened_clay []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 cut_red_sandstone []
setblock ~0 ~-5 ~0 raw_gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 1 bone 16
replaceitem block ~0 ~-2 ~-3 slot.container 2 string 19
replaceitem block ~0 ~-2 ~-3 slot.container 3 spider_eye 8
replaceitem block ~0 ~-2 ~-3 slot.container 4 gunpowder 11
replaceitem block ~0 ~-2 ~-3 slot.container 5 gold_nugget 18
replaceitem block ~0 ~-2 ~-3 slot.container 9 golden_apple 2
replaceitem block ~0 ~-2 ~-3 slot.container 10 cooked_beef 9
replaceitem block ~0 ~-2 ~-3 slot.container 11 tnt 6
replaceitem block ~0 ~-2 ~-3 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-2 ~-3 slot.container 13 minecart 1
replaceitem block ~0 ~-2 ~-3 slot.container 14 lantern 9
loot insert ~0 ~-2 ~-3 loot "rsf/mesa"
loot insert ~0 ~-2 ~-3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 red_terracotta []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 red_terracotta []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 yellow_terracotta []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 cut_red_sandstone []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gold_block []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 chiseled_red_sandstone []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 chiseled_red_sandstone []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_red_sandstone []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_red_sandstone []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~2 ~1 ~-8 gold_block []
setblock ~-2 ~2 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 14
replaceitem block ~-4 ~1 ~5 slot.container 1 gold_nugget 21
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 minecart 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 9
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 16
replaceitem block ~-4 ~1 ~5 slot.container 12 raw_gold 8
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 7
replaceitem block ~-4 ~1 ~5 slot.container 14 rail 18
loot insert ~-4 ~1 ~5 loot "rsf/mesa"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 17
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 14
replaceitem block ~4 ~1 ~5 slot.container 9 minecart 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 12 raw_gold 13
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 14 rail 16
loot insert ~4 ~1 ~5 loot "rsf/mesa"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
