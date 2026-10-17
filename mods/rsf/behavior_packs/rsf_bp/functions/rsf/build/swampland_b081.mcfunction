# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1617/4224 | 主题内编号: b081/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双高炉重工冶炼密室 (swampland_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

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

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-5 ~1 ~5 ~-6 ~9 ~5 spruce_planks []
setblock ~-5 ~10 ~5 lantern []
fill ~-1 ~1 ~-5 ~1 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 spruce_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 spruce_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 spruce_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-5 ~-6 ~-5 ~-5 ~0 ~-5 oak_log []
fill ~-5 ~-6 ~5 ~-5 ~0 ~5 oak_log []
fill ~5 ~-6 ~-5 ~5 ~0 ~-5 oak_log []
fill ~5 ~-6 ~5 ~5 ~0 ~5 oak_log []
setblock ~-2 ~1 ~-6 cauldron []
setblock ~2 ~6 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 1 fermented_spider_eye 5
replaceitem block ~4 ~1 ~3 slot.container 2 gunpowder 11
replaceitem block ~4 ~1 ~3 slot.container 3 redstone 14
replaceitem block ~4 ~1 ~3 slot.container 4 glowstone_dust 13
replaceitem block ~4 ~1 ~3 slot.container 5 bone 16
replaceitem block ~4 ~1 ~3 slot.container 9 golden_apple 1
replaceitem block ~4 ~1 ~3 slot.container 10 mushroom_stew 1
replaceitem block ~4 ~1 ~3 slot.container 11 cooked_cod 10
replaceitem block ~4 ~1 ~3 slot.container 12 iron_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 13 lead 6
replaceitem block ~4 ~1 ~3 slot.container 14 name_tag 1
loot insert ~4 ~1 ~3 loot "rsf/swampland"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 gunpowder 14
replaceitem block ~-4 ~1 ~4 slot.container 1 redstone 17
replaceitem block ~-4 ~1 ~4 slot.container 2 glowstone_dust 8
replaceitem block ~-4 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 5 slime_ball 15
replaceitem block ~-4 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~-4 ~1 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~-4 ~1 ~4 slot.container 11 cooked_cod 8
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~-4 ~1 ~4 slot.container 13 lead 4
replaceitem block ~-4 ~1 ~4 slot.container 14 name_tag 1
loot insert ~-4 ~1 ~4 loot "rsf/swampland"
loot insert ~-4 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
