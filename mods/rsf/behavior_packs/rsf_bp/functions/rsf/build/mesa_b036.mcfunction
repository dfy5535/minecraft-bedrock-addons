# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1444/4224 | 主题内编号: b036/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·下沉碑林地宫方尖碑 (mesa_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 red_terracotta [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 red_terracotta [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 red_terracotta []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-5 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-5 ~3 campfire []
setblock ~2 ~-5 ~-3 campfire []
setblock ~2 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-3 ~3 slot.container 0 arrow 19
replaceitem block ~2 ~-3 ~3 slot.container 1 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 3 bone 16
replaceitem block ~2 ~-3 ~3 slot.container 4 string 19
replaceitem block ~2 ~-3 ~3 slot.container 5 spider_eye 8
replaceitem block ~2 ~-3 ~3 slot.container 9 golden_apple 6
replaceitem block ~2 ~-3 ~3 slot.container 10 cooked_beef 13
replaceitem block ~2 ~-3 ~3 slot.container 11 tnt 10
replaceitem block ~2 ~-3 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~2 ~-3 ~3 slot.container 13 minecart 1
replaceitem block ~2 ~-3 ~3 slot.container 14 lantern 6
loot insert ~2 ~-3 ~3 loot "rsf/mesa"
loot insert ~2 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 red_terracotta []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 yellow_terracotta []
fill ~0 ~1 ~-5 ~0 ~2 ~5 yellow_terracotta []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 yellow_terracotta []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 red_terracotta []
fill ~0 ~14 ~0 ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x6x5) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_sandstone []
fill ~-2 ~1 ~-6 ~2 ~1 ~-6 rail []
setblock ~-2 ~1 ~-7 gold_block []
setblock ~-2 ~5 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 14
replaceitem block ~-3 ~1 ~4 slot.container 1 gold_nugget 21
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 10 rail 19
replaceitem block ~-3 ~1 ~4 slot.container 11 golden_apple 6
replaceitem block ~-3 ~1 ~4 slot.container 12 cooked_beef 13
replaceitem block ~-3 ~1 ~4 slot.container 13 tnt 10
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~-3 ~1 ~4 loot "rsf/mesa"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 17
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 14
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 10 rail 17
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_beef 11
replaceitem block ~3 ~1 ~4 slot.container 13 tnt 8
replaceitem block ~3 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~3 ~1 ~4 loot "rsf/mesa"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
