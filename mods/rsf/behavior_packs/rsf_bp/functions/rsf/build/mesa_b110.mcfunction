# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1518/4224 | 主题内编号: b110/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双子附魔与酿造实验楼 (mesa_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_sandstone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_red_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_sandstone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 torch []
setblock ~4 ~-6 ~0 torch []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 string 19
replaceitem block ~0 ~-4 ~5 slot.container 3 spider_eye 8
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 11
replaceitem block ~0 ~-4 ~5 slot.container 5 gold_nugget 18
replaceitem block ~0 ~-4 ~5 slot.container 9 tnt 7
replaceitem block ~0 ~-4 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-4 ~5 slot.container 11 minecart 1
replaceitem block ~0 ~-4 ~5 slot.container 12 lantern 10
replaceitem block ~0 ~-4 ~5 slot.container 13 gold_ingot 10
replaceitem block ~0 ~-4 ~5 slot.container 14 raw_gold 9
loot insert ~0 ~-4 ~5 loot "rsf/mesa"
loot insert ~0 ~-4 ~5 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 string 17
replaceitem block ~0 ~-4 ~-5 slot.container 3 spider_eye 14
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 17
replaceitem block ~0 ~-4 ~-5 slot.container 5 gold_nugget 16
replaceitem block ~0 ~-4 ~-5 slot.container 9 tnt 6
replaceitem block ~0 ~-4 ~-5 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-5 slot.container 11 minecart 1
replaceitem block ~0 ~-4 ~-5 slot.container 12 lantern 9
replaceitem block ~0 ~-4 ~-5 slot.container 13 gold_ingot 16
replaceitem block ~0 ~-4 ~-5 slot.container 14 raw_gold 8
loot insert ~0 ~-4 ~-5 loot "rsf/mesa"
loot insert ~0 ~-4 ~-5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 red_sandstone []
fill ~2 ~1 ~-5 ~6 ~7 ~5 red_sandstone []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 cut_red_sandstone []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 red_sandstone_slab []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 hardened_clay []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 red_sandstone_slab []
setblock ~0 ~10 ~0 gold_block []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 cut_red_sandstone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 red_sandstone []
fill ~-2 ~1 ~-8 ~2 ~1 ~-8 rail []
setblock ~-1 ~1 ~-9 gold_block []
setblock ~-2 ~4 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gold_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 8
replaceitem block ~-5 ~1 ~4 slot.container 10 cooked_beef 8
replaceitem block ~-5 ~1 ~4 slot.container 11 tnt 5
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 13 minecart 1
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 8
loot insert ~-5 ~1 ~4 loot "rsf/mesa"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 1 bone 14
replaceitem block ~5 ~1 ~4 slot.container 2 string 17
replaceitem block ~5 ~1 ~4 slot.container 3 spider_eye 14
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 17
replaceitem block ~5 ~1 ~4 slot.container 5 gold_nugget 16
replaceitem block ~5 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~5 ~1 ~4 slot.container 10 cooked_beef 13
replaceitem block ~5 ~1 ~4 slot.container 11 tnt 10
replaceitem block ~5 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 13 minecart 1
replaceitem block ~5 ~1 ~4 slot.container 14 lantern 6
loot insert ~5 ~1 ~4 loot "rsf/mesa"
loot insert ~5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon husk ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
