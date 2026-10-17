# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1604/4224 | 主题内编号: b068/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·断裂凯旋高架拱廊 (swampland_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log2
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cobblestone [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cobblestone [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 spruce_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mossy_stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

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
fill ~-7 ~1 ~-4 ~7 ~7 ~4 cobblestone []
fill ~-6 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 spruce_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-7 ~6 ~-1 ~-7 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x5x3) ---
fill ~-7 ~-5 ~-4 ~-7 ~0 ~-4 oak_log []
fill ~-7 ~-5 ~4 ~-7 ~0 ~4 oak_log []
fill ~7 ~-5 ~-4 ~7 ~0 ~-4 oak_log []
fill ~7 ~-5 ~4 ~7 ~0 ~4 oak_log []
setblock ~-1 ~1 ~-5 cauldron []
setblock ~1 ~3 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~6 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 redstone 14
replaceitem block ~-6 ~1 ~2 slot.container 1 glowstone_dust 13
replaceitem block ~-6 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-6 ~1 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-6 ~1 ~2 slot.container 4 slime_ball 12
replaceitem block ~-6 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~2 slot.container 9 mushroom_stew 1
replaceitem block ~-6 ~1 ~2 slot.container 10 cooked_cod 10
replaceitem block ~-6 ~1 ~2 slot.container 11 iron_ingot 9
replaceitem block ~-6 ~1 ~2 slot.container 12 lead 6
replaceitem block ~-6 ~1 ~2 slot.container 13 name_tag 1
replaceitem block ~-6 ~1 ~2 slot.container 14 brewing_stand 7
loot insert ~-6 ~1 ~2 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~2 ~0
