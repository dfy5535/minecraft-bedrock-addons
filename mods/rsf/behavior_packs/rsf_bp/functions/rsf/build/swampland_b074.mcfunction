# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1610/4224 | 主题内编号: b074/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·十字四象图腾柱阵 (swampland_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mud_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 brewing_stand []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 fermented_spider_eye 10
replaceitem block ~4 ~-3 ~0 slot.container 1 gunpowder 8
replaceitem block ~4 ~-3 ~0 slot.container 2 redstone 11
replaceitem block ~4 ~-3 ~0 slot.container 3 glowstone_dust 10
replaceitem block ~4 ~-3 ~0 slot.container 4 bone 13
replaceitem block ~4 ~-3 ~0 slot.container 5 rotten_flesh 14
replaceitem block ~4 ~-3 ~0 slot.container 9 name_tag 1
replaceitem block ~4 ~-3 ~0 slot.container 10 brewing_stand 7
replaceitem block ~4 ~-3 ~0 slot.container 11 cauldron 1
replaceitem block ~4 ~-3 ~0 slot.container 12 lantern 5
replaceitem block ~4 ~-3 ~0 slot.container 13 glass_bottle 8
replaceitem block ~4 ~-3 ~0 slot.container 14 golden_apple 4
loot insert ~4 ~-3 ~0 loot "rsf/swampland"
loot insert ~4 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 spruce_planks []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 spruce_planks []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 oak_fence []
setblock ~6 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 spruce_log []
setblock ~-6 ~10 ~-5 torch []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 spruce_log []
setblock ~-6 ~10 ~5 torch []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 spruce_log []
setblock ~6 ~10 ~-5 torch []
fill ~6 ~7 ~5 ~6 ~9 ~5 spruce_log []
setblock ~6 ~10 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~8 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~8 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~8 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~8 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-6 ~-6 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-6 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-6 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-6 ~5 ~6 ~0 ~5 oak_log []
setblock ~2 ~1 ~-6 cauldron []
setblock ~-2 ~4 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 slime []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~3 slot.container 2 redstone 14
replaceitem block ~-5 ~1 ~3 slot.container 3 glowstone_dust 13
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 9 glass_bottle 6
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_cod 11
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 14 lead 7
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~-3 ~0
