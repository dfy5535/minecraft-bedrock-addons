# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1619/4224 | 主题内编号: b083/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·铁砧锻造与模具工坊 (swampland_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mud_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mud_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_mud []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
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

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~6 ~5 mud_bricks []
fill ~-6 ~1 ~0 ~6 ~5 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~-1 ~5 ~4 air []
fill ~-1 ~1 ~1 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 mud_brick_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 mud_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 mud_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 mud_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 mud_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 mossy_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 oak_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 oak_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 oak_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-6 ~-5 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-5 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-5 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-5 ~5 ~6 ~0 ~5 oak_log []
setblock ~-1 ~1 ~-6 cauldron []
setblock ~1 ~3 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 gunpowder 11
replaceitem block ~5 ~1 ~3 slot.container 1 redstone 14
replaceitem block ~5 ~1 ~3 slot.container 2 glowstone_dust 13
replaceitem block ~5 ~1 ~3 slot.container 3 bone 16
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~1 ~3 slot.container 5 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 9 brewing_stand 3
replaceitem block ~5 ~1 ~3 slot.container 10 cauldron 4
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 8
replaceitem block ~5 ~1 ~3 slot.container 12 glass_bottle 11
replaceitem block ~5 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~5 ~1 ~3 slot.container 14 mushroom_stew 1
loot insert ~5 ~1 ~3 loot "rsf/swampland"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 glowstone_dust 8
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 3 slime_ball 15
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 5 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 9 brewing_stand 1
replaceitem block ~-5 ~1 ~4 slot.container 10 cauldron 2
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 12 glass_bottle 9
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~-5 ~1 ~4 loot "rsf/swampland"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-2 ~0
