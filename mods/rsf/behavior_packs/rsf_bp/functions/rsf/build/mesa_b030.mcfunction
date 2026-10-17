# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1438/4224 | 主题内编号: b030/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·双坡顶驻军卫戍塔 (mesa_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_sandstone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_sandstone [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_red_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 red_sandstone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-4 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-4 ~3 torch []
setblock ~2 ~-4 ~-3 torch []
setblock ~2 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~2 ~-2 ~3 slot.container 2 string 19
replaceitem block ~2 ~-2 ~3 slot.container 3 spider_eye 8
replaceitem block ~2 ~-2 ~3 slot.container 4 gunpowder 11
replaceitem block ~2 ~-2 ~3 slot.container 5 gold_nugget 18
replaceitem block ~2 ~-2 ~3 slot.container 9 tnt 9
replaceitem block ~2 ~-2 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~-2 ~3 slot.container 11 minecart 1
replaceitem block ~2 ~-2 ~3 slot.container 12 lantern 5
replaceitem block ~2 ~-2 ~3 slot.container 13 gold_ingot 12
replaceitem block ~2 ~-2 ~3 slot.container 14 raw_gold 11
loot insert ~2 ~-2 ~3 loot "rsf/mesa"
loot insert ~2 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~8 ~5 red_sandstone []
fill ~-4 ~1 ~0 ~4 ~7 ~5 hardened_clay []
fill ~-3 ~1 ~-4 ~-1 ~7 ~4 air []
fill ~-1 ~1 ~1 ~3 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 red_sandstone_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 red_sandstone_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-5 ~-4 ~10 ~5 red_sandstone_stairs ["weirdo_direction"=0]
fill ~4 ~10 ~-5 ~4 ~10 ~5 red_sandstone_stairs ["weirdo_direction"=1]
fill ~-3 ~10 ~-5 ~3 ~10 ~5 red_sandstone_slab []
fill ~0 ~11 ~-6 ~0 ~11 ~6 cut_red_sandstone []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~10 ~2 hardened_clay []
fill ~5 ~1 ~-1 ~6 ~9 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~11 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 5x6x4) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_sandstone []
fill ~-2 ~1 ~-6 ~2 ~1 ~-6 rail []
setblock ~0 ~1 ~-7 gold_block []
setblock ~-2 ~4 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 string 14
replaceitem block ~-3 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-3 ~1 ~4 slot.container 9 golden_apple 5
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_beef 12
replaceitem block ~-3 ~1 ~4 slot.container 11 tnt 9
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 13 minecart 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 5
loot insert ~-3 ~1 ~4 loot "rsf/mesa"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 string 17
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 17
replaceitem block ~3 ~1 ~4 slot.container 5 gold_nugget 16
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_beef 10
replaceitem block ~3 ~1 ~4 slot.container 11 tnt 7
replaceitem block ~3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 13 minecart 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 10
loot insert ~3 ~1 ~4 loot "rsf/mesa"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
