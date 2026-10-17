# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1469/4224 | 主题内编号: b061/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双子封土古墓地宫 (mesa_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cut_red_sandstone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cut_red_sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 red_sandstone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 hardened_clay []
setblock ~0 ~-7 ~0 gold_block []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~-3 slot.container 3 string 19
replaceitem block ~0 ~-4 ~-3 slot.container 4 spider_eye 8
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 11
replaceitem block ~0 ~-4 ~-3 slot.container 9 rail 18
replaceitem block ~0 ~-4 ~-3 slot.container 10 golden_apple 5
replaceitem block ~0 ~-4 ~-3 slot.container 11 cooked_beef 12
replaceitem block ~0 ~-4 ~-3 slot.container 12 tnt 9
replaceitem block ~0 ~-4 ~-3 slot.container 13 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-3 slot.container 14 minecart 1
loot insert ~0 ~-4 ~-3 loot "rsf/mesa"
loot insert ~0 ~-4 ~-3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~6 ~5 cut_red_sandstone []
fill ~2 ~1 ~-5 ~6 ~6 ~5 cut_red_sandstone []
fill ~-5 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 hardened_clay []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 hardened_clay []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 red_sandstone []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 emerald_block []
setblock ~0 ~9 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 chiseled_red_sandstone []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 chiseled_red_sandstone []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 chiseled_red_sandstone []
fill ~7 ~0 ~2 ~7 ~4 ~2 chiseled_red_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~-2 ~1 ~-8 gold_block []
setblock ~-2 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gold_nugget 21
replaceitem block ~5 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 4 bone 11
replaceitem block ~5 ~1 ~4 slot.container 5 string 14
replaceitem block ~5 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 10 minecart 1
replaceitem block ~5 ~1 ~4 slot.container 11 lantern 5
replaceitem block ~5 ~1 ~4 slot.container 12 gold_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 13 raw_gold 11
replaceitem block ~5 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~5 ~1 ~4 loot "rsf/mesa"
summon pillager ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon spider ~0 ~-4 ~0
