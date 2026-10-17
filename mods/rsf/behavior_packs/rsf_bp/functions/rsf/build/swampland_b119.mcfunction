# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1655/4224 | 主题内编号: b119/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·半地下恒温洞穴苗圃 (swampland_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 mud_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 mud_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mud_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 packed_mud []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 redstone 11
replaceitem block ~3 ~-4 ~2 slot.container 1 glowstone_dust 10
replaceitem block ~3 ~-4 ~2 slot.container 2 bone 13
replaceitem block ~3 ~-4 ~2 slot.container 3 rotten_flesh 14
replaceitem block ~3 ~-4 ~2 slot.container 4 slime_ball 17
replaceitem block ~3 ~-4 ~2 slot.container 5 spider_eye 14
replaceitem block ~3 ~-4 ~2 slot.container 9 name_tag 1
replaceitem block ~3 ~-4 ~2 slot.container 10 brewing_stand 7
replaceitem block ~3 ~-4 ~2 slot.container 11 cauldron 1
replaceitem block ~3 ~-4 ~2 slot.container 12 lantern 5
replaceitem block ~3 ~-4 ~2 slot.container 13 glass_bottle 8
replaceitem block ~3 ~-4 ~2 slot.container 14 golden_apple 4
loot insert ~3 ~-4 ~2 loot "rsf/swampland"
loot insert ~3 ~-4 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 mud_bricks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mossy_stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mossy_stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-5 ~5 ~5 ~5 mossy_stone_bricks []
fill ~-4 ~6 ~-4 ~4 ~7 ~4 glass []
fill ~-3 ~6 ~-3 ~3 ~6 ~3 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-7 ~7 ~2 ~7 mud_brick_wall []
fill ~-6 ~1 ~-6 ~6 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-5 ~-6 ~-5 ~-5 ~0 ~-5 oak_log []
fill ~-5 ~-6 ~5 ~-5 ~0 ~5 oak_log []
fill ~5 ~-6 ~-5 ~5 ~0 ~-5 oak_log []
fill ~5 ~-6 ~5 ~5 ~0 ~5 oak_log []
setblock ~1 ~1 ~-6 cauldron []
setblock ~-1 ~4 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~1 ~3 slot.container 1 slime_ball 12
replaceitem block ~4 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 3 fermented_spider_eye 5
replaceitem block ~4 ~1 ~3 slot.container 4 gunpowder 11
replaceitem block ~4 ~1 ~3 slot.container 5 redstone 14
replaceitem block ~4 ~1 ~3 slot.container 9 lead 5
replaceitem block ~4 ~1 ~3 slot.container 10 name_tag 1
replaceitem block ~4 ~1 ~3 slot.container 11 brewing_stand 6
replaceitem block ~4 ~1 ~3 slot.container 12 cauldron 7
replaceitem block ~4 ~1 ~3 slot.container 13 lantern 4
replaceitem block ~4 ~1 ~3 slot.container 14 glass_bottle 7
loot insert ~4 ~1 ~3 loot "rsf/swampland"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~4 slot.container 1 fermented_spider_eye 8
replaceitem block ~-4 ~1 ~4 slot.container 2 gunpowder 14
replaceitem block ~-4 ~1 ~4 slot.container 3 redstone 17
replaceitem block ~-4 ~1 ~4 slot.container 4 glowstone_dust 8
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 9 lead 3
replaceitem block ~-4 ~1 ~4 slot.container 10 name_tag 1
replaceitem block ~-4 ~1 ~4 slot.container 11 brewing_stand 4
replaceitem block ~-4 ~1 ~4 slot.container 12 cauldron 5
replaceitem block ~-4 ~1 ~4 slot.container 13 lantern 9
replaceitem block ~-4 ~1 ~4 slot.container 14 glass_bottle 12
loot insert ~-4 ~1 ~4 loot "rsf/swampland"
loot insert ~-4 ~1 ~4 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-3 ~0
