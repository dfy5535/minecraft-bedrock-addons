# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1649/4224 | 主题内编号: b113/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·八角全采光生态温室 (swampland_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

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

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 oak_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 oak_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 spruce_planks []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 spruce_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 spruce_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~-5 ~-5 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-5 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-5 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-5 ~4 ~5 ~0 ~4 oak_log []
setblock ~0 ~1 ~-5 cauldron []
setblock ~0 ~3 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 1 fermented_spider_eye 5
replaceitem block ~4 ~1 ~2 slot.container 2 gunpowder 11
replaceitem block ~4 ~1 ~2 slot.container 3 redstone 14
replaceitem block ~4 ~1 ~2 slot.container 4 glowstone_dust 13
replaceitem block ~4 ~1 ~2 slot.container 5 bone 16
replaceitem block ~4 ~1 ~2 slot.container 9 brewing_stand 5
replaceitem block ~4 ~1 ~2 slot.container 10 cauldron 6
replaceitem block ~4 ~1 ~2 slot.container 11 lantern 10
replaceitem block ~4 ~1 ~2 slot.container 12 glass_bottle 6
replaceitem block ~4 ~1 ~2 slot.container 13 golden_apple 2
replaceitem block ~4 ~1 ~2 slot.container 14 mushroom_stew 1
loot insert ~4 ~1 ~2 loot "rsf/swampland"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 gunpowder 14
replaceitem block ~-4 ~1 ~3 slot.container 1 redstone 17
replaceitem block ~-4 ~1 ~3 slot.container 2 glowstone_dust 8
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~3 slot.container 5 slime_ball 15
replaceitem block ~-4 ~1 ~3 slot.container 9 brewing_stand 3
replaceitem block ~-4 ~1 ~3 slot.container 10 cauldron 4
replaceitem block ~-4 ~1 ~3 slot.container 11 lantern 8
replaceitem block ~-4 ~1 ~3 slot.container 12 glass_bottle 11
replaceitem block ~-4 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~-4 ~1 ~3 slot.container 14 mushroom_stew 1
loot insert ~-4 ~1 ~3 loot "rsf/swampland"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-2 ~0
