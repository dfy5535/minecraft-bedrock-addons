# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1420/4224 | 主题内编号: b012/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双子暗门地底宝库 (mesa_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 red_terracotta [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 red_terracotta [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
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
fill ~-6 ~1 ~-5 ~-2 ~6 ~5 red_terracotta []
fill ~2 ~1 ~-5 ~6 ~6 ~5 red_terracotta []
fill ~-5 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 yellow_terracotta []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 smooth_red_sandstone_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 smooth_red_sandstone_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 smooth_red_sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 smooth_red_sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 red_sandstone_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 yellow_terracotta []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 chiseled_red_sandstone []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 chiseled_red_sandstone []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 chiseled_red_sandstone []
fill ~7 ~0 ~2 ~7 ~4 ~2 chiseled_red_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_sandstone []
fill ~-2 ~1 ~-6 ~2 ~1 ~-6 rail []
setblock ~-3 ~1 ~-7 gold_block []
setblock ~-2 ~6 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 14
replaceitem block ~-5 ~1 ~4 slot.container 1 gold_nugget 21
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 16
replaceitem block ~-5 ~1 ~4 slot.container 10 raw_gold 8
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 12 rail 18
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_beef 12
loot insert ~-5 ~1 ~4 loot "rsf/mesa"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 bone 14
replaceitem block ~5 ~1 ~4 slot.container 4 string 17
replaceitem block ~5 ~1 ~4 slot.container 5 spider_eye 14
replaceitem block ~5 ~1 ~4 slot.container 9 gold_ingot 14
replaceitem block ~5 ~1 ~4 slot.container 10 raw_gold 13
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 12 rail 16
replaceitem block ~5 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~5 ~1 ~4 slot.container 14 cooked_beef 10
loot insert ~5 ~1 ~4 loot "rsf/mesa"
loot insert ~5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
