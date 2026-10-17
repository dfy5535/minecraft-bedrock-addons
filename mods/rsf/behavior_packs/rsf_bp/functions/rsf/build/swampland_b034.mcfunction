# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1570/4224 | 主题内编号: b034/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双子对称铭文方尖碑 (swampland_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x9 | 地上高度 10格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace log2
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 spruce_planks [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 spruce_planks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 spruce_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mud_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 slime []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 rotten_flesh 14
replaceitem block ~4 ~-2 ~0 slot.container 1 slime_ball 17
replaceitem block ~4 ~-2 ~0 slot.container 2 spider_eye 14
replaceitem block ~4 ~-2 ~0 slot.container 3 fermented_spider_eye 10
replaceitem block ~4 ~-2 ~0 slot.container 4 gunpowder 8
replaceitem block ~4 ~-2 ~0 slot.container 5 redstone 11
replaceitem block ~4 ~-2 ~0 slot.container 9 lead 3
replaceitem block ~4 ~-2 ~0 slot.container 10 name_tag 1
replaceitem block ~4 ~-2 ~0 slot.container 11 brewing_stand 4
replaceitem block ~4 ~-2 ~0 slot.container 12 cauldron 5
replaceitem block ~4 ~-2 ~0 slot.container 13 lantern 9
replaceitem block ~4 ~-2 ~0 slot.container 14 glass_bottle 12
loot insert ~4 ~-2 ~0 loot "rsf/swampland"
loot insert ~4 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~11 ~3 spruce_planks []
fill ~2 ~1 ~-3 ~6 ~11 ~3 spruce_planks []
fill ~-5 ~1 ~-2 ~-3 ~10 ~2 air []
fill ~3 ~1 ~-2 ~5 ~10 ~2 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 mossy_cobblestone []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mossy_cobblestone []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 spruce_planks []
fill ~0 ~16 ~0 ~0 ~17 ~0 brewing_stand []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 mossy_cobblestone []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 torch []
setblock ~2 ~4 ~-6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-6 ~-6 ~-3 ~-6 ~0 ~-3 oak_log []
fill ~-6 ~-6 ~3 ~-6 ~0 ~3 oak_log []
fill ~6 ~-6 ~-3 ~6 ~0 ~-3 oak_log []
fill ~6 ~-6 ~3 ~6 ~0 ~3 oak_log []
setblock ~-2 ~1 ~-4 cauldron []
setblock ~2 ~4 ~-4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~2 bookshelf []
setblock ~5 ~1 ~2 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~1 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~1 slot.container 2 redstone 14
replaceitem block ~-5 ~1 ~1 slot.container 3 glowstone_dust 13
replaceitem block ~-5 ~1 ~1 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~1 slot.container 5 rotten_flesh 17
replaceitem block ~-5 ~1 ~1 slot.container 9 glass_bottle 8
replaceitem block ~-5 ~1 ~1 slot.container 10 golden_apple 4
replaceitem block ~-5 ~1 ~1 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~1 slot.container 12 cooked_cod 13
replaceitem block ~-5 ~1 ~1 slot.container 13 iron_ingot 12
replaceitem block ~-5 ~1 ~1 slot.container 14 lead 2
loot insert ~-5 ~1 ~1 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
