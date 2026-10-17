# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1656/4224 | 主题内编号: b120/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·引水渠跨桥水培温室 (swampland_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log2
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 cobblestone [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 cobblestone [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mud_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 slime []
setblock ~-4 ~-5 ~-3 campfire []
setblock ~4 ~-5 ~3 campfire []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 gunpowder 8
replaceitem block ~0 ~-3 ~3 slot.container 1 redstone 11
replaceitem block ~0 ~-3 ~3 slot.container 2 glowstone_dust 10
replaceitem block ~0 ~-3 ~3 slot.container 3 bone 13
replaceitem block ~0 ~-3 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~0 ~-3 ~3 slot.container 5 slime_ball 17
replaceitem block ~0 ~-3 ~3 slot.container 9 cooked_cod 12
replaceitem block ~0 ~-3 ~3 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-3 ~3 slot.container 11 lead 8
replaceitem block ~0 ~-3 ~3 slot.container 12 name_tag 1
replaceitem block ~0 ~-3 ~3 slot.container 13 brewing_stand 2
replaceitem block ~0 ~-3 ~3 slot.container 14 cauldron 3
loot insert ~0 ~-3 ~3 loot "rsf/swampland"
loot insert ~0 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 cobblestone []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 spruce_planks []
fill ~-5 ~7 ~-3 ~5 ~8 ~3 glass []
fill ~-4 ~7 ~-2 ~4 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~-6 ~-6 ~-4 ~-6 ~0 ~-4 oak_log []
fill ~-6 ~-6 ~4 ~-6 ~0 ~4 oak_log []
fill ~6 ~-6 ~-4 ~6 ~0 ~-4 oak_log []
fill ~6 ~-6 ~4 ~6 ~0 ~4 oak_log []
setblock ~0 ~1 ~-5 cauldron []
setblock ~0 ~5 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 crafting_table []
setblock ~-4 ~1 ~3 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 slime_ball 12
replaceitem block ~-5 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~2 slot.container 2 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~2 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~2 slot.container 4 redstone 14
replaceitem block ~-5 ~1 ~2 slot.container 5 glowstone_dust 13
replaceitem block ~-5 ~1 ~2 slot.container 9 cauldron 5
replaceitem block ~-5 ~1 ~2 slot.container 10 lantern 9
replaceitem block ~-5 ~1 ~2 slot.container 11 glass_bottle 12
replaceitem block ~-5 ~1 ~2 slot.container 12 golden_apple 1
replaceitem block ~-5 ~1 ~2 slot.container 13 mushroom_stew 1
replaceitem block ~-5 ~1 ~2 slot.container 14 cooked_cod 10
loot insert ~-5 ~1 ~2 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
