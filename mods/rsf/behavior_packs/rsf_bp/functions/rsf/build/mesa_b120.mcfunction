# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1528/4224 | 主题内编号: b120/128
# 地形主题 #12: 恶地与红砂陶瓦高原 (mesa) —— 带红砂岩矿道木架与铁轨矿车栈桥
# 建筑名称: 恶地淘金系·引水渠跨桥水培温室 (mesa_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: mesa, mesa_bryce, mesa_plateau, mesa_plateau_stone, mesa_plateau_mutated, mesa_plateau_stone_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 red_terracotta [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 red_terracotta [] replace water
fill ~-6 ~1 ~-6 ~6 ~7 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 red_sandstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 smooth_red_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 red_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 yellow_terracotta []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~3 slot.container 0 string 19
replaceitem block ~-3 ~-2 ~3 slot.container 1 spider_eye 8
replaceitem block ~-3 ~-2 ~3 slot.container 2 gunpowder 11
replaceitem block ~-3 ~-2 ~3 slot.container 3 gold_nugget 18
replaceitem block ~-3 ~-2 ~3 slot.container 4 arrow 19
replaceitem block ~-3 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~-3 ~-2 ~3 slot.container 9 gold_ingot 13
replaceitem block ~-3 ~-2 ~3 slot.container 10 raw_gold 12
replaceitem block ~-3 ~-2 ~3 slot.container 11 iron_ingot 11
replaceitem block ~-3 ~-2 ~3 slot.container 12 rail 22
replaceitem block ~-3 ~-2 ~3 slot.container 13 golden_apple 2
replaceitem block ~-3 ~-2 ~3 slot.container 14 cooked_beef 9
loot insert ~-3 ~-2 ~3 loot "rsf/mesa"
loot insert ~-3 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~5 ~5 red_terracotta []
fill ~-4 ~1 ~-4 ~4 ~4 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-5 ~5 ~5 ~5 yellow_terracotta []
fill ~-4 ~6 ~-4 ~4 ~7 ~4 glass []
fill ~-3 ~6 ~-3 ~3 ~6 ~3 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 yellow_terracotta []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mesa 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 red_sandstone []
fill ~-2 ~1 ~-6 ~2 ~1 ~-6 rail []
setblock ~-1 ~1 ~-7 gold_block []
setblock ~-2 ~4 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 14
replaceitem block ~-4 ~1 ~4 slot.container 5 gold_nugget 21
replaceitem block ~-4 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~-4 ~1 ~4 slot.container 10 cooked_beef 11
replaceitem block ~-4 ~1 ~4 slot.container 11 tnt 8
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-4 ~1 ~4 slot.container 13 minecart 1
replaceitem block ~-4 ~1 ~4 slot.container 14 lantern 4
loot insert ~-4 ~1 ~4 loot "rsf/mesa"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 17
replaceitem block ~4 ~1 ~4 slot.container 1 spider_eye 14
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 17
replaceitem block ~4 ~1 ~4 slot.container 3 gold_nugget 16
replaceitem block ~4 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 golden_apple 2
replaceitem block ~4 ~1 ~4 slot.container 10 cooked_beef 9
replaceitem block ~4 ~1 ~4 slot.container 11 tnt 6
replaceitem block ~4 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~4 slot.container 13 minecart 1
replaceitem block ~4 ~1 ~4 slot.container 14 lantern 9
loot insert ~4 ~1 ~4 loot "rsf/mesa"
loot insert ~4 ~1 ~4 loot "chests/abandoned_mineshaft"
summon zombie ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon husk ~1 ~1 ~1
