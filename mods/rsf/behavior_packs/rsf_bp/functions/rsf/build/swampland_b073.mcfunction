# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1609/4224 | 主题内编号: b073/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·八方图腾圣火石阵 (swampland_totem_eight_pillars)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 spruce_planks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 glowstone_dust 10
replaceitem block ~4 ~-2 ~3 slot.container 1 bone 13
replaceitem block ~4 ~-2 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~4 ~-2 ~3 slot.container 3 slime_ball 17
replaceitem block ~4 ~-2 ~3 slot.container 4 spider_eye 14
replaceitem block ~4 ~-2 ~3 slot.container 5 fermented_spider_eye 10
replaceitem block ~4 ~-2 ~3 slot.container 9 golden_apple 3
replaceitem block ~4 ~-2 ~3 slot.container 10 mushroom_stew 1
replaceitem block ~4 ~-2 ~3 slot.container 11 cooked_cod 12
replaceitem block ~4 ~-2 ~3 slot.container 12 iron_ingot 11
replaceitem block ~4 ~-2 ~3 slot.container 13 lead 8
replaceitem block ~4 ~-2 ~3 slot.container 14 name_tag 1
loot insert ~4 ~-2 ~3 loot "rsf/swampland"
loot insert ~4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 air []
fill ~6 ~1 ~5 ~6 ~8 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 oak_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 oak_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 oak_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 oak_log []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 oak_log []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 oak_log []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 oak_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 spruce_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 spruce_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-6 ~-5 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-5 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-5 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-5 ~5 ~6 ~0 ~5 oak_log []
setblock ~1 ~1 ~-6 cauldron []
setblock ~-1 ~3 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 fermented_spider_eye 5
replaceitem block ~5 ~1 ~3 slot.container 2 gunpowder 11
replaceitem block ~5 ~1 ~3 slot.container 3 redstone 14
replaceitem block ~5 ~1 ~3 slot.container 4 glowstone_dust 13
replaceitem block ~5 ~1 ~3 slot.container 5 bone 16
replaceitem block ~5 ~1 ~3 slot.container 9 brewing_stand 7
replaceitem block ~5 ~1 ~3 slot.container 10 cauldron 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 5
replaceitem block ~5 ~1 ~3 slot.container 12 glass_bottle 8
replaceitem block ~5 ~1 ~3 slot.container 13 golden_apple 4
replaceitem block ~5 ~1 ~3 slot.container 14 mushroom_stew 1
loot insert ~5 ~1 ~3 loot "rsf/swampland"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 14
replaceitem block ~-5 ~1 ~4 slot.container 1 redstone 17
replaceitem block ~-5 ~1 ~4 slot.container 2 glowstone_dust 8
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 slime_ball 15
replaceitem block ~-5 ~1 ~4 slot.container 9 brewing_stand 5
replaceitem block ~-5 ~1 ~4 slot.container 10 cauldron 6
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 12 glass_bottle 6
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 2
replaceitem block ~-5 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~-5 ~1 ~4 loot "rsf/swampland"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
