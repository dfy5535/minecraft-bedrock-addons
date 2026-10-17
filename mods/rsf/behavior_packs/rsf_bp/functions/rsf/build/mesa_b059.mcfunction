# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1467/4224 | 主题内编号: b059/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·阶梯金字塔法老墓室 (mesa_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 hardened_clay [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 hardened_clay [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_red_sandstone []
setblock ~0 ~0 ~0 raw_gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_terracotta []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 orange_terracotta []
setblock ~0 ~-7 ~0 gold_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 gold_nugget 18
replaceitem block ~0 ~-4 ~-5 slot.container 1 arrow 19
replaceitem block ~0 ~-4 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~-5 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~-5 slot.container 5 string 19
replaceitem block ~0 ~-4 ~-5 slot.container 9 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-5 slot.container 10 minecart 1
replaceitem block ~0 ~-4 ~-5 slot.container 11 lantern 6
replaceitem block ~0 ~-4 ~-5 slot.container 12 gold_ingot 13
replaceitem block ~0 ~-4 ~-5 slot.container 13 raw_gold 12
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_ingot 11
loot insert ~0 ~-4 ~-5 loot "rsf/mesa"
loot insert ~0 ~-4 ~-5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 hardened_clay []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 orange_terracotta []
fill ~-4 ~5 ~-5 ~4 ~6 ~5 red_terracotta []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 red_sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 orange_terracotta []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 red_terracotta []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 raw_gold_block []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 dark_oak_log []
setblock ~-8 ~4 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 dark_oak_log []
setblock ~-8 ~4 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 dark_oak_log []
setblock ~8 ~4 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~3 ~9 dark_oak_log []
setblock ~8 ~4 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x10x3) ---
fill ~-2 ~0 ~-11 ~2 ~0 ~-10 red_sandstone []
fill ~-2 ~1 ~-10 ~2 ~1 ~-10 rail []
setblock ~2 ~1 ~-11 gold_block []
setblock ~-2 ~3 ~-11 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 14
replaceitem block ~5 ~1 ~6 slot.container 2 gold_nugget 21
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 raw_gold 12
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 11 rail 22
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_beef 9
replaceitem block ~5 ~1 ~6 slot.container 14 tnt 6
loot insert ~5 ~1 ~6 loot "rsf/mesa"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
