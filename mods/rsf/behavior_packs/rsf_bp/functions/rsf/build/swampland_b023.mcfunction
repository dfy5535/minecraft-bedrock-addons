# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1559/4224 | 主题内编号: b023/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双层露台阁楼宝室 (swampland_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 mud_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 mud_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mud_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 packed_mud []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 mossy_stone_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 slime_ball 17
replaceitem block ~4 ~-3 ~4 slot.container 1 spider_eye 14
replaceitem block ~4 ~-3 ~4 slot.container 2 fermented_spider_eye 10
replaceitem block ~4 ~-3 ~4 slot.container 3 gunpowder 8
replaceitem block ~4 ~-3 ~4 slot.container 4 redstone 11
replaceitem block ~4 ~-3 ~4 slot.container 5 glowstone_dust 10
replaceitem block ~4 ~-3 ~4 slot.container 9 cauldron 3
replaceitem block ~4 ~-3 ~4 slot.container 10 lantern 7
replaceitem block ~4 ~-3 ~4 slot.container 11 glass_bottle 10
replaceitem block ~4 ~-3 ~4 slot.container 12 golden_apple 6
replaceitem block ~4 ~-3 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~4 ~-3 ~4 slot.container 14 cooked_cod 8
loot insert ~4 ~-3 ~4 loot "rsf/swampland"
loot insert ~4 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~4 ~5 mud_bricks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-6 ~4 ~-6 ~6 ~4 ~6 mud_brick_slab []
fill ~-4 ~5 ~-4 ~4 ~8 ~4 cobblestone []
fill ~-3 ~5 ~-3 ~3 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-6 ~6 ~8 ~6 mud_brick_slab []
fill ~-4 ~9 ~-4 ~4 ~10 ~4 cobblestone []
fill ~-5 ~11 ~-5 ~5 ~11 ~5 spruce_slab []
setblock ~0 ~12 ~0 slime []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 cobblestone []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-5 ~-4 ~-5 ~-5 ~0 ~-5 oak_log []
fill ~-5 ~-4 ~5 ~-5 ~0 ~5 oak_log []
fill ~5 ~-4 ~-5 ~5 ~0 ~-5 oak_log []
fill ~5 ~-4 ~5 ~5 ~0 ~5 oak_log []
setblock ~0 ~1 ~-6 cauldron []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~1 ~3 slot.container 1 slime_ball 12
replaceitem block ~4 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 3 fermented_spider_eye 5
replaceitem block ~4 ~1 ~3 slot.container 4 gunpowder 11
replaceitem block ~4 ~1 ~3 slot.container 5 redstone 14
replaceitem block ~4 ~1 ~3 slot.container 9 brewing_stand 6
replaceitem block ~4 ~1 ~3 slot.container 10 cauldron 7
replaceitem block ~4 ~1 ~3 slot.container 11 lantern 4
replaceitem block ~4 ~1 ~3 slot.container 12 glass_bottle 7
replaceitem block ~4 ~1 ~3 slot.container 13 golden_apple 3
replaceitem block ~4 ~1 ~3 slot.container 14 mushroom_stew 1
loot insert ~4 ~1 ~3 loot "rsf/swampland"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~4 slot.container 1 fermented_spider_eye 8
replaceitem block ~-4 ~1 ~4 slot.container 2 gunpowder 14
replaceitem block ~-4 ~1 ~4 slot.container 3 redstone 17
replaceitem block ~-4 ~1 ~4 slot.container 4 glowstone_dust 8
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 9 brewing_stand 4
replaceitem block ~-4 ~1 ~4 slot.container 10 cauldron 5
replaceitem block ~-4 ~1 ~4 slot.container 11 lantern 9
replaceitem block ~-4 ~1 ~4 slot.container 12 glass_bottle 12
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_apple 1
replaceitem block ~-4 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~-4 ~1 ~4 loot "rsf/swampland"
loot insert ~-4 ~1 ~4 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~2 ~0
