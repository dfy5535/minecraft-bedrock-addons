# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1441/4224 | 主题内编号: b033/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·太阳金顶高耸方尖碑 (mesa_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cut_red_sandstone [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cut_red_sandstone [] replace water
fill ~-4 ~1 ~-5 ~4 ~12 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_sandstone_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 red_sandstone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 red_sandstone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 hardened_clay []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 spider_eye 8
replaceitem block ~0 ~-3 ~-2 slot.container 1 gunpowder 11
replaceitem block ~0 ~-3 ~-2 slot.container 2 gold_nugget 18
replaceitem block ~0 ~-3 ~-2 slot.container 3 arrow 19
replaceitem block ~0 ~-3 ~-2 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 lantern 6
replaceitem block ~0 ~-3 ~-2 slot.container 10 gold_ingot 13
replaceitem block ~0 ~-3 ~-2 slot.container 11 raw_gold 12
replaceitem block ~0 ~-3 ~-2 slot.container 12 iron_ingot 11
replaceitem block ~0 ~-3 ~-2 slot.container 13 rail 22
replaceitem block ~0 ~-3 ~-2 slot.container 14 golden_apple 2
loot insert ~0 ~-3 ~-2 loot "rsf/mesa"
loot insert ~0 ~-3 ~-2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 cut_red_sandstone []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 hardened_clay []
fill ~-1 ~5 ~-2 ~1 ~10 ~2 red_sandstone []
fill ~-1 ~1 ~-2 ~1 ~9 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 dark_oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 hardened_clay []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 cut_red_sandstone []
fill ~0 ~16 ~0 ~0 ~16 ~0 emerald_block []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~3 ~-6 dark_oak_log []
setblock ~-5 ~4 ~-6 torch []
fill ~-5 ~0 ~6 ~-5 ~3 ~6 dark_oak_log []
setblock ~-5 ~4 ~6 torch []
fill ~5 ~0 ~-6 ~5 ~3 ~-6 dark_oak_log []
setblock ~5 ~4 ~-6 torch []
fill ~5 ~0 ~6 ~5 ~3 ~6 dark_oak_log []
setblock ~5 ~4 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 4x5x2) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 red_sandstone []
fill ~-2 ~1 ~-5 ~2 ~1 ~-5 rail []
setblock ~-1 ~1 ~-6 gold_block []
setblock ~-2 ~2 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-5 ~1 ~6 ~-1 ~2 ~6 barrel ["facing_direction"=2]
setblock ~0 ~1 ~6 crafting_table []
setblock ~0 ~1 ~0 raw_gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 11
replaceitem block ~2 ~1 ~3 slot.container 1 string 14
replaceitem block ~2 ~1 ~3 slot.container 2 spider_eye 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 14
replaceitem block ~2 ~1 ~3 slot.container 4 gold_nugget 21
replaceitem block ~2 ~1 ~3 slot.container 5 arrow 22
replaceitem block ~2 ~1 ~3 slot.container 9 rail 22
replaceitem block ~2 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~2 ~1 ~3 slot.container 11 cooked_beef 9
replaceitem block ~2 ~1 ~3 slot.container 12 tnt 6
replaceitem block ~2 ~1 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 14 minecart 1
loot insert ~2 ~1 ~3 loot "rsf/mesa"
summon cave_spider ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
