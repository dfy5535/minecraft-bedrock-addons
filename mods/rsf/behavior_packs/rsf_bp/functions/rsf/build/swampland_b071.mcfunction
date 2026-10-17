# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1607/4224 | 主题内编号: b071/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·残破双子哨所遗迹 (swampland_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[portal_chamber] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log2
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 mud_bricks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 mud_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 mud_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 packed_mud []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 slime []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 rotten_flesh 14
replaceitem block ~4 ~-2 ~0 slot.container 1 slime_ball 17
replaceitem block ~4 ~-2 ~0 slot.container 2 spider_eye 14
replaceitem block ~4 ~-2 ~0 slot.container 3 fermented_spider_eye 10
replaceitem block ~4 ~-2 ~0 slot.container 4 gunpowder 8
replaceitem block ~4 ~-2 ~0 slot.container 5 redstone 11
replaceitem block ~4 ~-2 ~0 slot.container 9 lead 3
replaceitem block ~4 ~-2 ~0 slot.container 10 name_tag 1
replaceitem block ~4 ~-2 ~0 slot.container 11 brewing_stand 4
replaceitem block ~4 ~-2 ~0 slot.container 12 cauldron 5
replaceitem block ~4 ~-2 ~0 slot.container 13 lantern 9
replaceitem block ~4 ~-2 ~0 slot.container 14 glass_bottle 12
loot insert ~4 ~-2 ~0 loot "rsf/swampland"
loot insert ~4 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 mud_bricks []
fill ~2 ~1 ~-4 ~6 ~8 ~4 mud_bricks []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 mossy_stone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 mud_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 mossy_stone_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x5x6) ---
fill ~-6 ~-4 ~-4 ~-6 ~0 ~-4 oak_log []
fill ~-6 ~-4 ~4 ~-6 ~0 ~4 oak_log []
fill ~6 ~-4 ~-4 ~6 ~0 ~-4 oak_log []
fill ~6 ~-4 ~4 ~6 ~0 ~4 oak_log []
setblock ~-1 ~1 ~-5 cauldron []
setblock ~1 ~6 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~1 ~2 slot.container 1 slime_ball 12
replaceitem block ~5 ~1 ~2 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~2 slot.container 3 fermented_spider_eye 5
replaceitem block ~5 ~1 ~2 slot.container 4 gunpowder 11
replaceitem block ~5 ~1 ~2 slot.container 5 redstone 14
replaceitem block ~5 ~1 ~2 slot.container 9 golden_apple 5
replaceitem block ~5 ~1 ~2 slot.container 10 mushroom_stew 1
replaceitem block ~5 ~1 ~2 slot.container 11 cooked_cod 14
replaceitem block ~5 ~1 ~2 slot.container 12 iron_ingot 6
replaceitem block ~5 ~1 ~2 slot.container 13 lead 3
replaceitem block ~5 ~1 ~2 slot.container 14 name_tag 1
loot insert ~5 ~1 ~2 loot "rsf/swampland"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 1 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 3 redstone 17
replaceitem block ~-5 ~1 ~3 slot.container 4 glowstone_dust 8
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 10 mushroom_stew 1
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_cod 12
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 13 lead 8
replaceitem block ~-5 ~1 ~3 slot.container 14 name_tag 1
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
loot insert ~-5 ~1 ~3 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~2 ~0
