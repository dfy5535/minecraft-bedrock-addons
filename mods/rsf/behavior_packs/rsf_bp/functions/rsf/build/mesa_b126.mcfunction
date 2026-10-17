# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1534/4224 | 主题内编号: b126/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双子主塔天桥宫殿与暗牢 (mesa_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 red_sandstone [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 red_sandstone [] replace water
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 red_sandstone_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 smooth_red_sandstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 red_sandstone []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 torch []
setblock ~4 ~-5 ~-4 torch []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~4 slot.container 1 bone 16
replaceitem block ~4 ~-3 ~4 slot.container 2 string 19
replaceitem block ~4 ~-3 ~4 slot.container 3 spider_eye 8
replaceitem block ~4 ~-3 ~4 slot.container 4 gunpowder 11
replaceitem block ~4 ~-3 ~4 slot.container 5 gold_nugget 18
replaceitem block ~4 ~-3 ~4 slot.container 9 golden_apple 5
replaceitem block ~4 ~-3 ~4 slot.container 10 cooked_beef 12
replaceitem block ~4 ~-3 ~4 slot.container 11 tnt 9
replaceitem block ~4 ~-3 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~-3 ~4 slot.container 13 minecart 1
replaceitem block ~4 ~-3 ~4 slot.container 14 lantern 5
loot insert ~4 ~-3 ~4 loot "rsf/mesa"
loot insert ~4 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~9 ~6 red_sandstone []
fill ~2 ~1 ~-6 ~6 ~9 ~6 red_sandstone []
fill ~-5 ~1 ~-5 ~-3 ~8 ~5 air []
fill ~3 ~1 ~-5 ~5 ~8 ~5 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 cut_red_sandstone []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 cut_red_sandstone []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 red_sandstone []
fill ~0 ~14 ~0 ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 cut_red_sandstone []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 torch []
setblock ~2 ~4 ~-9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 red_sandstone []
fill ~-2 ~1 ~-7 ~2 ~1 ~-7 rail []
setblock ~-3 ~1 ~-8 gold_block []
setblock ~-2 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 arrow 22
replaceitem block ~-5 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~5 slot.container 4 string 14
replaceitem block ~-5 ~1 ~5 slot.container 5 spider_eye 11
replaceitem block ~-5 ~1 ~5 slot.container 9 iron_ingot 7
replaceitem block ~-5 ~1 ~5 slot.container 10 rail 18
replaceitem block ~-5 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~-5 ~1 ~5 slot.container 12 cooked_beef 12
replaceitem block ~-5 ~1 ~5 slot.container 13 tnt 9
replaceitem block ~-5 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~-5 ~1 ~5 loot "rsf/mesa"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~5 slot.container 1 bone 14
replaceitem block ~5 ~1 ~5 slot.container 2 string 17
replaceitem block ~5 ~1 ~5 slot.container 3 spider_eye 14
replaceitem block ~5 ~1 ~5 slot.container 4 gunpowder 17
replaceitem block ~5 ~1 ~5 slot.container 5 gold_nugget 16
replaceitem block ~5 ~1 ~5 slot.container 9 iron_ingot 12
replaceitem block ~5 ~1 ~5 slot.container 10 rail 16
replaceitem block ~5 ~1 ~5 slot.container 11 golden_apple 3
replaceitem block ~5 ~1 ~5 slot.container 12 cooked_beef 10
replaceitem block ~5 ~1 ~5 slot.container 13 tnt 7
replaceitem block ~5 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~5 loot "rsf/mesa"
loot insert ~5 ~1 ~5 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
