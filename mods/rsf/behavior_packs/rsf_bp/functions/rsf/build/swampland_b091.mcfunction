# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1627/4224 | 主题内编号: b091/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·跨水拱桥水神小祠 (swampland_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x9 | 地上高度 7格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace log2
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 mud_bricks [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 mud_bricks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mud_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 packed_mud []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 lantern []
setblock ~4 ~-5 ~-3 lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 8
replaceitem block ~4 ~-3 ~3 slot.container 1 redstone 11
replaceitem block ~4 ~-3 ~3 slot.container 2 glowstone_dust 10
replaceitem block ~4 ~-3 ~3 slot.container 3 bone 13
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~4 ~-3 ~3 slot.container 5 slime_ball 17
replaceitem block ~4 ~-3 ~3 slot.container 9 brewing_stand 1
replaceitem block ~4 ~-3 ~3 slot.container 10 cauldron 2
replaceitem block ~4 ~-3 ~3 slot.container 11 lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 12 glass_bottle 9
replaceitem block ~4 ~-3 ~3 slot.container 13 golden_apple 5
replaceitem block ~4 ~-3 ~3 slot.container 14 mushroom_stew 1
loot insert ~4 ~-3 ~3 loot "rsf/swampland"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~7 ~3 mud_bricks []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 mud_brick_slab []
fill ~-5 ~8 ~-2 ~5 ~9 ~2 cobblestone []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 spruce_slab []
setblock ~0 ~11 ~0 slime []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 mossy_stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 campfire []
setblock ~2 ~4 ~-6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-6 ~-5 ~-3 ~-6 ~0 ~-3 oak_log []
fill ~-6 ~-5 ~3 ~-6 ~0 ~3 oak_log []
fill ~6 ~-5 ~-3 ~6 ~0 ~-3 oak_log []
fill ~6 ~-5 ~3 ~6 ~0 ~3 oak_log []
setblock ~1 ~1 ~-4 cauldron []
setblock ~-1 ~6 ~-4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 gunpowder 11
replaceitem block ~5 ~1 ~1 slot.container 1 redstone 14
replaceitem block ~5 ~1 ~1 slot.container 2 glowstone_dust 13
replaceitem block ~5 ~1 ~1 slot.container 3 bone 16
replaceitem block ~5 ~1 ~1 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~1 ~1 slot.container 5 slime_ball 12
replaceitem block ~5 ~1 ~1 slot.container 9 golden_apple 4
replaceitem block ~5 ~1 ~1 slot.container 10 mushroom_stew 1
replaceitem block ~5 ~1 ~1 slot.container 11 cooked_cod 13
replaceitem block ~5 ~1 ~1 slot.container 12 iron_ingot 12
replaceitem block ~5 ~1 ~1 slot.container 13 lead 2
replaceitem block ~5 ~1 ~1 slot.container 14 name_tag 1
loot insert ~5 ~1 ~1 loot "rsf/swampland"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 glowstone_dust 8
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~2 slot.container 3 slime_ball 15
replaceitem block ~-5 ~1 ~2 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~2 slot.container 5 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~2 slot.container 9 golden_apple 2
replaceitem block ~-5 ~1 ~2 slot.container 10 mushroom_stew 1
replaceitem block ~-5 ~1 ~2 slot.container 11 cooked_cod 11
replaceitem block ~-5 ~1 ~2 slot.container 12 iron_ingot 10
replaceitem block ~-5 ~1 ~2 slot.container 13 lead 7
replaceitem block ~-5 ~1 ~2 slot.container 14 name_tag 1
loot insert ~-5 ~1 ~2 loot "rsf/swampland"
loot insert ~-5 ~1 ~2 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
