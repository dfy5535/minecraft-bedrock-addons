# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1664/4224 | 主题内编号: b128/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·U型紫禁朝堂大殿与地底金库 (swampland_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 spruce_planks []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 torch []
setblock ~5 ~-7 ~0 torch []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 slime_ball 17
replaceitem block ~0 ~-5 ~4 slot.container 1 spider_eye 14
replaceitem block ~0 ~-5 ~4 slot.container 2 fermented_spider_eye 10
replaceitem block ~0 ~-5 ~4 slot.container 3 gunpowder 8
replaceitem block ~0 ~-5 ~4 slot.container 4 redstone 11
replaceitem block ~0 ~-5 ~4 slot.container 5 glowstone_dust 10
replaceitem block ~0 ~-5 ~4 slot.container 9 glass_bottle 11
replaceitem block ~0 ~-5 ~4 slot.container 10 golden_apple 7
replaceitem block ~0 ~-5 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~0 ~-5 ~4 slot.container 12 cooked_cod 9
replaceitem block ~0 ~-5 ~4 slot.container 13 iron_ingot 8
replaceitem block ~0 ~-5 ~4 slot.container 14 lead 5
loot insert ~0 ~-5 ~4 loot "rsf/swampland"
loot insert ~0 ~-5 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 slime_ball 15
replaceitem block ~0 ~-5 ~-4 slot.container 1 spider_eye 12
replaceitem block ~0 ~-5 ~-4 slot.container 2 fermented_spider_eye 8
replaceitem block ~0 ~-5 ~-4 slot.container 3 gunpowder 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 redstone 17
replaceitem block ~0 ~-5 ~-4 slot.container 5 glowstone_dust 8
replaceitem block ~0 ~-5 ~-4 slot.container 9 glass_bottle 10
replaceitem block ~0 ~-5 ~-4 slot.container 10 golden_apple 6
replaceitem block ~0 ~-5 ~-4 slot.container 11 mushroom_stew 1
replaceitem block ~0 ~-5 ~-4 slot.container 12 cooked_cod 8
replaceitem block ~0 ~-5 ~-4 slot.container 13 iron_ingot 7
replaceitem block ~0 ~-5 ~-4 slot.container 14 lead 4
loot insert ~0 ~-5 ~-4 loot "rsf/swampland"
loot insert ~0 ~-5 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 cobblestone []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mossy_cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~8 ~-7 ~8 ~8 ~7 spruce_slab []
fill ~-6 ~9 ~-5 ~6 ~10 ~5 mossy_stone_bricks []
fill ~-7 ~11 ~-6 ~7 ~11 ~6 spruce_slab []
setblock ~0 ~12 ~0 bookshelf []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 spruce_fence []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-7 ~-7 ~-6 ~-7 ~0 ~-6 oak_log []
fill ~-7 ~-7 ~6 ~-7 ~0 ~6 oak_log []
fill ~7 ~-7 ~-6 ~7 ~0 ~-6 oak_log []
fill ~7 ~-7 ~6 ~7 ~0 ~6 oak_log []
setblock ~3 ~1 ~-7 cauldron []
setblock ~-3 ~3 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-6 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 slime_ball 12
replaceitem block ~-6 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 2 fermented_spider_eye 5
replaceitem block ~-6 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-6 ~1 ~4 slot.container 4 redstone 14
replaceitem block ~-6 ~1 ~4 slot.container 5 glowstone_dust 13
replaceitem block ~-6 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~-6 ~1 ~4 slot.container 10 cooked_cod 14
replaceitem block ~-6 ~1 ~4 slot.container 11 iron_ingot 6
replaceitem block ~-6 ~1 ~4 slot.container 12 lead 3
replaceitem block ~-6 ~1 ~4 slot.container 13 name_tag 1
replaceitem block ~-6 ~1 ~4 slot.container 14 brewing_stand 4
loot insert ~-6 ~1 ~4 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~-4 ~0
