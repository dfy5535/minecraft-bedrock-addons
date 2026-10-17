# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1442/4224 | 主题内编号: b034/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双子对称铭文方尖碑 (mesa_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 red_sandstone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 red_sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_red_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 hardened_clay []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 arrow 19
replaceitem block ~3 ~-2 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-2 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~3 ~-2 ~2 slot.container 3 bone 16
replaceitem block ~3 ~-2 ~2 slot.container 4 string 19
replaceitem block ~3 ~-2 ~2 slot.container 5 spider_eye 8
replaceitem block ~3 ~-2 ~2 slot.container 9 gold_ingot 13
replaceitem block ~3 ~-2 ~2 slot.container 10 raw_gold 12
replaceitem block ~3 ~-2 ~2 slot.container 11 iron_ingot 11
replaceitem block ~3 ~-2 ~2 slot.container 12 rail 22
replaceitem block ~3 ~-2 ~2 slot.container 13 golden_apple 2
replaceitem block ~3 ~-2 ~2 slot.container 14 cooked_beef 9
loot insert ~3 ~-2 ~2 loot "rsf/mesa"
loot insert ~3 ~-2 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~10 ~4 red_sandstone []
fill ~2 ~1 ~-4 ~5 ~10 ~4 red_sandstone []
fill ~-4 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 cut_red_sandstone []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 cut_red_sandstone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 red_sandstone []
fill ~0 ~15 ~0 ~0 ~15 ~0 gold_block []
setblock ~0 ~16 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 cut_red_sandstone []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_sandstone []
fill ~-2 ~1 ~-6 ~2 ~1 ~-6 rail []
setblock ~-2 ~1 ~-7 gold_block []
setblock ~-2 ~3 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 string 14
replaceitem block ~-4 ~1 ~3 slot.container 1 spider_eye 11
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 14
replaceitem block ~-4 ~1 ~3 slot.container 3 gold_nugget 21
replaceitem block ~-4 ~1 ~3 slot.container 4 arrow 22
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~3 slot.container 9 tnt 4
replaceitem block ~-4 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~-4 ~1 ~3 slot.container 11 minecart 1
replaceitem block ~-4 ~1 ~3 slot.container 12 lantern 7
replaceitem block ~-4 ~1 ~3 slot.container 13 gold_ingot 14
replaceitem block ~-4 ~1 ~3 slot.container 14 raw_gold 13
loot insert ~-4 ~1 ~3 loot "rsf/mesa"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 17
replaceitem block ~4 ~1 ~3 slot.container 1 gold_nugget 16
replaceitem block ~4 ~1 ~3 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~3 slot.container 5 bone 14
replaceitem block ~4 ~1 ~3 slot.container 9 tnt 9
replaceitem block ~4 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~3 slot.container 11 minecart 1
replaceitem block ~4 ~1 ~3 slot.container 12 lantern 5
replaceitem block ~4 ~1 ~3 slot.container 13 gold_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 14 raw_gold 11
loot insert ~4 ~1 ~3 loot "rsf/mesa"
loot insert ~4 ~1 ~3 loot "chests/abandoned_mineshaft"
summon spider ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon pillager ~0 ~-2 ~0
