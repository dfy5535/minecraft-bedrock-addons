# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1552/4224 | 主题内编号: b016/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·要塞地底重装暗牢 (swampland_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 soul_lantern []
setblock ~5 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 bone 13
replaceitem block ~0 ~-4 ~4 slot.container 1 rotten_flesh 14
replaceitem block ~0 ~-4 ~4 slot.container 2 slime_ball 17
replaceitem block ~0 ~-4 ~4 slot.container 3 spider_eye 14
replaceitem block ~0 ~-4 ~4 slot.container 4 fermented_spider_eye 10
replaceitem block ~0 ~-4 ~4 slot.container 5 gunpowder 8
replaceitem block ~0 ~-4 ~4 slot.container 9 cauldron 5
replaceitem block ~0 ~-4 ~4 slot.container 10 lantern 9
replaceitem block ~0 ~-4 ~4 slot.container 11 glass_bottle 12
replaceitem block ~0 ~-4 ~4 slot.container 12 golden_apple 1
replaceitem block ~0 ~-4 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~0 ~-4 ~4 slot.container 14 cooked_cod 10
loot insert ~0 ~-4 ~4 loot "rsf/swampland"
loot insert ~0 ~-4 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 bone 11
replaceitem block ~0 ~-4 ~-4 slot.container 1 rotten_flesh 12
replaceitem block ~0 ~-4 ~-4 slot.container 2 slime_ball 15
replaceitem block ~0 ~-4 ~-4 slot.container 3 spider_eye 12
replaceitem block ~0 ~-4 ~-4 slot.container 4 fermented_spider_eye 8
replaceitem block ~0 ~-4 ~-4 slot.container 5 gunpowder 14
replaceitem block ~0 ~-4 ~-4 slot.container 9 cauldron 4
replaceitem block ~0 ~-4 ~-4 slot.container 10 lantern 8
replaceitem block ~0 ~-4 ~-4 slot.container 11 glass_bottle 11
replaceitem block ~0 ~-4 ~-4 slot.container 12 golden_apple 7
replaceitem block ~0 ~-4 ~-4 slot.container 13 mushroom_stew 1
replaceitem block ~0 ~-4 ~-4 slot.container 14 cooked_cod 9
loot insert ~0 ~-4 ~-4 loot "rsf/swampland"
loot insert ~0 ~-4 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 cobblestone []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 spruce_planks []
setblock ~-7 ~9 ~-6 soul_lantern []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 spruce_planks []
setblock ~-7 ~9 ~5 soul_lantern []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 spruce_planks []
setblock ~6 ~9 ~-6 soul_lantern []
fill ~6 ~1 ~5 ~7 ~8 ~6 spruce_planks []
setblock ~6 ~9 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 spruce_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 spruce_fence []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x9x6) ---
fill ~-7 ~-7 ~-6 ~-7 ~0 ~-6 oak_log []
fill ~-7 ~-7 ~6 ~-7 ~0 ~6 oak_log []
fill ~7 ~-7 ~-6 ~7 ~0 ~-6 oak_log []
fill ~7 ~-7 ~6 ~7 ~0 ~6 oak_log []
setblock ~3 ~1 ~-7 cauldron []
setblock ~-3 ~6 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 slime_ball 12
replaceitem block ~-6 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 2 fermented_spider_eye 5
replaceitem block ~-6 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-6 ~1 ~4 slot.container 4 redstone 14
replaceitem block ~-6 ~1 ~4 slot.container 5 glowstone_dust 13
replaceitem block ~-6 ~1 ~4 slot.container 9 name_tag 1
replaceitem block ~-6 ~1 ~4 slot.container 10 brewing_stand 7
replaceitem block ~-6 ~1 ~4 slot.container 11 cauldron 1
replaceitem block ~-6 ~1 ~4 slot.container 12 lantern 5
replaceitem block ~-6 ~1 ~4 slot.container 13 glass_bottle 8
replaceitem block ~-6 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-6 ~1 ~4 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
