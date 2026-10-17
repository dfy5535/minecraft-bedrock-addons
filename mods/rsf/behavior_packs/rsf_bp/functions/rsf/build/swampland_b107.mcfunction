# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1643/4224 | 主题内编号: b107/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·观星高塔与秘术地宫 (swampland_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mud_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mud_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_mud []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 mossy_stone_bricks []
setblock ~0 ~-5 ~0 bookshelf []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 glowstone_dust 10
replaceitem block ~0 ~-2 ~-3 slot.container 1 bone 13
replaceitem block ~0 ~-2 ~-3 slot.container 2 rotten_flesh 14
replaceitem block ~0 ~-2 ~-3 slot.container 3 slime_ball 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 spider_eye 14
replaceitem block ~0 ~-2 ~-3 slot.container 5 fermented_spider_eye 10
replaceitem block ~0 ~-2 ~-3 slot.container 9 cooked_cod 10
replaceitem block ~0 ~-2 ~-3 slot.container 10 iron_ingot 9
replaceitem block ~0 ~-2 ~-3 slot.container 11 lead 6
replaceitem block ~0 ~-2 ~-3 slot.container 12 name_tag 1
replaceitem block ~0 ~-2 ~-3 slot.container 13 brewing_stand 7
replaceitem block ~0 ~-2 ~-3 slot.container 14 cauldron 1
loot insert ~0 ~-2 ~-3 loot "rsf/swampland"
loot insert ~0 ~-2 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 mud_bricks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 spruce_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~9 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 mossy_stone_bricks []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 glass []
fill ~-3 ~10 ~-2 ~3 ~10 ~2 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 oak_log []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 oak_log []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 oak_log []
fill ~6 ~0 ~2 ~6 ~8 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~-5 ~-6 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-6 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-6 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-6 ~4 ~5 ~0 ~4 oak_log []
setblock ~-1 ~1 ~-5 cauldron []
setblock ~1 ~2 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 gunpowder 11
replaceitem block ~4 ~1 ~2 slot.container 1 redstone 14
replaceitem block ~4 ~1 ~2 slot.container 2 glowstone_dust 13
replaceitem block ~4 ~1 ~2 slot.container 3 bone 16
replaceitem block ~4 ~1 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~1 ~2 slot.container 5 slime_ball 12
replaceitem block ~4 ~1 ~2 slot.container 9 lantern 9
replaceitem block ~4 ~1 ~2 slot.container 10 glass_bottle 12
replaceitem block ~4 ~1 ~2 slot.container 11 golden_apple 1
replaceitem block ~4 ~1 ~2 slot.container 12 mushroom_stew 1
replaceitem block ~4 ~1 ~2 slot.container 13 cooked_cod 10
replaceitem block ~4 ~1 ~2 slot.container 14 iron_ingot 9
loot insert ~4 ~1 ~2 loot "rsf/swampland"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 glowstone_dust 8
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~3 slot.container 3 slime_ball 15
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 5 fermented_spider_eye 8
replaceitem block ~-4 ~1 ~3 slot.container 9 lantern 7
replaceitem block ~-4 ~1 ~3 slot.container 10 glass_bottle 10
replaceitem block ~-4 ~1 ~3 slot.container 11 golden_apple 6
replaceitem block ~-4 ~1 ~3 slot.container 12 mushroom_stew 1
replaceitem block ~-4 ~1 ~3 slot.container 13 cooked_cod 8
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_ingot 7
loot insert ~-4 ~1 ~3 loot "rsf/swampland"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-3 ~0
