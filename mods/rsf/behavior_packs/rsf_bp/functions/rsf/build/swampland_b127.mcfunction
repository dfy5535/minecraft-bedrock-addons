# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1663/4224 | 主题内编号: b127/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·万神殿巨型穹顶与试炼宫 (swampland_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mud_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mud_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 mud_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 packed_mud []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mud_bricks []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 slime []
setblock ~-5 ~-5 ~-4 campfire []
setblock ~5 ~-5 ~4 campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 rotten_flesh 14
replaceitem block ~0 ~-3 ~4 slot.container 1 slime_ball 17
replaceitem block ~0 ~-3 ~4 slot.container 2 spider_eye 14
replaceitem block ~0 ~-3 ~4 slot.container 3 fermented_spider_eye 10
replaceitem block ~0 ~-3 ~4 slot.container 4 gunpowder 8
replaceitem block ~0 ~-3 ~4 slot.container 5 redstone 11
replaceitem block ~0 ~-3 ~4 slot.container 9 golden_apple 2
replaceitem block ~0 ~-3 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~0 ~-3 ~4 slot.container 11 cooked_cod 11
replaceitem block ~0 ~-3 ~4 slot.container 12 iron_ingot 10
replaceitem block ~0 ~-3 ~4 slot.container 13 lead 7
replaceitem block ~0 ~-3 ~4 slot.container 14 name_tag 1
loot insert ~0 ~-3 ~4 loot "rsf/swampland"
loot insert ~0 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 mossy_stone_bricks []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 oak_log []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 oak_log []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 oak_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 oak_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 oak_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 oak_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 oak_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 oak_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 oak_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 oak_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 oak_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 oak_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 oak_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 oak_log []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 oak_log []
fill ~7 ~1 ~6 ~7 ~7 ~6 oak_log []
fill ~-7 ~1 ~-4 ~-7 ~7 ~-4 oak_log []
fill ~7 ~1 ~-4 ~7 ~7 ~-4 oak_log []
fill ~-7 ~1 ~-2 ~-7 ~7 ~-2 oak_log []
fill ~7 ~1 ~-2 ~7 ~7 ~-2 oak_log []
fill ~-7 ~1 ~0 ~-7 ~7 ~0 oak_log []
fill ~7 ~1 ~0 ~7 ~7 ~0 oak_log []
fill ~-7 ~1 ~2 ~-7 ~7 ~2 oak_log []
fill ~7 ~1 ~2 ~7 ~7 ~2 oak_log []
fill ~-7 ~1 ~4 ~-7 ~7 ~4 oak_log []
fill ~7 ~1 ~4 ~7 ~7 ~4 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 spruce_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 oak_log []
setblock ~0 ~4 ~-8 bookshelf []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 oak_log []
setblock ~0 ~4 ~8 bookshelf []
setblock ~0 ~5 ~8 campfire []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 oak_log []
setblock ~-9 ~4 ~0 bookshelf []
setblock ~-9 ~5 ~0 campfire []
fill ~9 ~0 ~0 ~9 ~3 ~0 oak_log []
setblock ~9 ~4 ~0 bookshelf []
setblock ~9 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~-7 ~-6 ~-6 ~-7 ~0 ~-6 oak_log []
fill ~-7 ~-6 ~6 ~-7 ~0 ~6 oak_log []
fill ~7 ~-6 ~-6 ~7 ~0 ~-6 oak_log []
fill ~7 ~-6 ~6 ~7 ~0 ~6 oak_log []
setblock ~2 ~1 ~-7 cauldron []
setblock ~-2 ~2 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 slime []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~6 ~1 ~4 slot.container 1 slime_ball 12
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 3 fermented_spider_eye 5
replaceitem block ~6 ~1 ~4 slot.container 4 gunpowder 11
replaceitem block ~6 ~1 ~4 slot.container 5 redstone 14
replaceitem block ~6 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~6 ~1 ~4 slot.container 10 glass_bottle 11
replaceitem block ~6 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~6 ~1 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~6 ~1 ~4 slot.container 13 cooked_cod 9
replaceitem block ~6 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~6 ~1 ~4 loot "rsf/swampland"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-6 ~1 ~5 slot.container 1 fermented_spider_eye 8
replaceitem block ~-6 ~1 ~5 slot.container 2 gunpowder 14
replaceitem block ~-6 ~1 ~5 slot.container 3 redstone 17
replaceitem block ~-6 ~1 ~5 slot.container 4 glowstone_dust 8
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-6 ~1 ~5 slot.container 9 lantern 6
replaceitem block ~-6 ~1 ~5 slot.container 10 glass_bottle 9
replaceitem block ~-6 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~-6 ~1 ~5 slot.container 12 mushroom_stew 1
replaceitem block ~-6 ~1 ~5 slot.container 13 cooked_cod 14
replaceitem block ~-6 ~1 ~5 slot.container 14 iron_ingot 6
loot insert ~-6 ~1 ~5 loot "rsf/swampland"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
