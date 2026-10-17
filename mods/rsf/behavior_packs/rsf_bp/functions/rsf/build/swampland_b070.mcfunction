# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1606/4224 | 主题内编号: b070/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·风化坍塌阶梯祭台 (swampland_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 spruce_planks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 cauldron []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 glowstone_dust 10
replaceitem block ~5 ~-3 ~0 slot.container 1 bone 13
replaceitem block ~5 ~-3 ~0 slot.container 2 rotten_flesh 14
replaceitem block ~5 ~-3 ~0 slot.container 3 slime_ball 17
replaceitem block ~5 ~-3 ~0 slot.container 4 spider_eye 14
replaceitem block ~5 ~-3 ~0 slot.container 5 fermented_spider_eye 10
replaceitem block ~5 ~-3 ~0 slot.container 9 lantern 4
replaceitem block ~5 ~-3 ~0 slot.container 10 glass_bottle 7
replaceitem block ~5 ~-3 ~0 slot.container 11 golden_apple 3
replaceitem block ~5 ~-3 ~0 slot.container 12 mushroom_stew 1
replaceitem block ~5 ~-3 ~0 slot.container 13 cooked_cod 12
replaceitem block ~5 ~-3 ~0 slot.container 14 iron_ingot 11
loot insert ~5 ~-3 ~0 loot "rsf/swampland"
loot insert ~5 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 spruce_planks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 mossy_cobblestone []
fill ~-4 ~5 ~-3 ~4 ~6 ~3 mud_bricks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 mud_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 spruce_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 spruce_log []
setblock ~0 ~4 ~-7 slime []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 spruce_log []
setblock ~0 ~4 ~7 slime []
setblock ~0 ~5 ~7 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 spruce_log []
setblock ~-8 ~4 ~0 slime []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 spruce_log []
setblock ~8 ~4 ~0 slime []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-6 ~-6 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-6 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-6 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-6 ~5 ~6 ~0 ~5 oak_log []
setblock ~-2 ~1 ~-6 cauldron []
setblock ~2 ~5 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 2 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 4 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~3 slot.container 9 cauldron 4
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 8
replaceitem block ~-5 ~1 ~3 slot.container 11 glass_bottle 11
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 13 mushroom_stew 1
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_cod 9
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
