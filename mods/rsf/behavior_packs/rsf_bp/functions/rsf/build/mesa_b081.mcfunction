# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1489/4224 | 主题内编号: b081/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双高炉重工冶炼密室 (mesa_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 cut_red_sandstone [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 cut_red_sandstone [] replace water
fill ~-5 ~1 ~-7 ~5 ~7 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 red_sandstone []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 smooth_red_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 cut_red_sandstone []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
setblock ~-2 ~-6 ~0 blast_furnace []
setblock ~2 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-4 ~4 slot.container 0 gold_nugget 18
replaceitem block ~2 ~-4 ~4 slot.container 1 arrow 19
replaceitem block ~2 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-4 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-4 ~4 slot.container 4 bone 16
replaceitem block ~2 ~-4 ~4 slot.container 5 string 19
replaceitem block ~2 ~-4 ~4 slot.container 9 rail 20
replaceitem block ~2 ~-4 ~4 slot.container 10 golden_apple 7
replaceitem block ~2 ~-4 ~4 slot.container 11 cooked_beef 14
replaceitem block ~2 ~-4 ~4 slot.container 12 tnt 4
replaceitem block ~2 ~-4 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~2 ~-4 ~4 slot.container 14 minecart 1
loot insert ~2 ~-4 ~4 loot "rsf/mesa"
loot insert ~2 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-4 ~1 ~-6 ~4 ~5 ~6 cut_red_sandstone []
fill ~-3 ~1 ~-5 ~3 ~4 ~5 air []
fill ~-4 ~1 ~6 ~-5 ~8 ~6 hardened_clay []
setblock ~-4 ~9 ~6 torch []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-7 ~-5 ~6 ~7 dark_oak_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-7 ~5 ~6 ~7 dark_oak_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~-4 ~7 ~6 dark_oak_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-6 ~4 ~7 ~6 dark_oak_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-6 ~3 ~7 ~6 red_sandstone_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 hardened_clay []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 hardened_clay []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 dark_oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 dark_oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 red_sandstone_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x7x5) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~-1 ~1 ~-8 gold_block []
setblock ~-2 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 bone 11
replaceitem block ~3 ~1 ~5 slot.container 1 string 14
replaceitem block ~3 ~1 ~5 slot.container 2 spider_eye 11
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 14
replaceitem block ~3 ~1 ~5 slot.container 4 gold_nugget 21
replaceitem block ~3 ~1 ~5 slot.container 5 arrow 22
replaceitem block ~3 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~1 ~5 slot.container 10 minecart 1
replaceitem block ~3 ~1 ~5 slot.container 11 lantern 4
replaceitem block ~3 ~1 ~5 slot.container 12 gold_ingot 11
replaceitem block ~3 ~1 ~5 slot.container 13 raw_gold 10
replaceitem block ~3 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~3 ~1 ~5 loot "rsf/mesa"
summon cave_spider ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
