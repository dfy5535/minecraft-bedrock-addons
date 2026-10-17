# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1418/4224 | 主题内编号: b010/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·十字交叉深层地牢 (mesa_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x17 | 地上高度 4格 | 地下深度 5格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 red_sandstone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 red_sandstone [] replace water
fill ~-7 ~1 ~-8 ~7 ~6 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 smooth_red_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone []
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

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~4 ~7 red_sandstone []
fill ~-6 ~1 ~-2 ~6 ~4 ~2 red_sandstone []
fill ~-1 ~1 ~-6 ~1 ~3 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~3 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 dark_oak_fence []
setblock ~6 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-7 ~6 ~4 ~7 red_sandstone_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 chiseled_red_sandstone []
setblock ~-8 ~4 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 chiseled_red_sandstone []
setblock ~-8 ~4 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 chiseled_red_sandstone []
setblock ~8 ~4 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~3 ~9 chiseled_red_sandstone []
setblock ~8 ~4 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~-2 ~0 ~-10 ~2 ~0 ~-9 red_sandstone []
fill ~-2 ~1 ~-9 ~2 ~1 ~-9 rail []
setblock ~1 ~1 ~-10 gold_block []
setblock ~-2 ~4 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-3 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 string 14
replaceitem block ~-5 ~1 ~6 slot.container 1 spider_eye 11
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 14
replaceitem block ~-5 ~1 ~6 slot.container 3 gold_nugget 21
replaceitem block ~-5 ~1 ~6 slot.container 4 arrow 22
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 golden_apple 6
replaceitem block ~-5 ~1 ~6 slot.container 10 cooked_beef 13
replaceitem block ~-5 ~1 ~6 slot.container 11 tnt 10
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 13 minecart 1
replaceitem block ~-5 ~1 ~6 slot.container 14 lantern 6
loot insert ~-5 ~1 ~6 loot "rsf/mesa"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 17
replaceitem block ~5 ~1 ~6 slot.container 1 gold_nugget 16
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_beef 11
replaceitem block ~5 ~1 ~6 slot.container 11 tnt 8
replaceitem block ~5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 13 minecart 1
replaceitem block ~5 ~1 ~6 slot.container 14 lantern 4
loot insert ~5 ~1 ~6 loot "rsf/mesa"
loot insert ~5 ~1 ~6 loot "chests/abandoned_mineshaft"
summon spider ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon pillager ~0 ~-4 ~0
