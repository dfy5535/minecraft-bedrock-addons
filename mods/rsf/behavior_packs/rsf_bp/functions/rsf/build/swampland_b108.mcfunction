# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1644/4224 | 主题内编号: b108/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·十字四相元素秘法殿 (swampland_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 bookshelf []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 redstone 11
replaceitem block ~4 ~-3 ~0 slot.container 1 glowstone_dust 10
replaceitem block ~4 ~-3 ~0 slot.container 2 bone 13
replaceitem block ~4 ~-3 ~0 slot.container 3 rotten_flesh 14
replaceitem block ~4 ~-3 ~0 slot.container 4 slime_ball 17
replaceitem block ~4 ~-3 ~0 slot.container 5 spider_eye 14
replaceitem block ~4 ~-3 ~0 slot.container 9 cauldron 5
replaceitem block ~4 ~-3 ~0 slot.container 10 lantern 9
replaceitem block ~4 ~-3 ~0 slot.container 11 glass_bottle 12
replaceitem block ~4 ~-3 ~0 slot.container 12 golden_apple 1
replaceitem block ~4 ~-3 ~0 slot.container 13 mushroom_stew 1
replaceitem block ~4 ~-3 ~0 slot.container 14 cooked_cod 10
loot insert ~4 ~-3 ~0 loot "rsf/swampland"
loot insert ~4 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 cobblestone []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 cobblestone []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 spruce_planks []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 mossy_stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 bookshelf []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 mossy_stone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 campfire []
setblock ~2 ~4 ~-9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-6 ~-6 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-6 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-6 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-6 ~5 ~6 ~0 ~5 oak_log []
setblock ~0 ~1 ~-6 cauldron []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 redstone 14
replaceitem block ~-5 ~1 ~3 slot.container 1 glowstone_dust 13
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 4 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 9 mushroom_stew 1
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_cod 8
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 12 lead 4
replaceitem block ~-5 ~1 ~3 slot.container 13 name_tag 1
replaceitem block ~-5 ~1 ~3 slot.container 14 brewing_stand 5
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
