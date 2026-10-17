# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1575/4224 | 主题内编号: b039/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·永恒圣火图腾方尖塔 (swampland_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log2
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mud_bricks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mud_bricks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mud_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_mud []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 mud_bricks []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 oak_log []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 oak_log []
fill ~4 ~1 ~3 ~4 ~10 ~3 oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 mud_brick_wall []
setblock ~4 ~2 ~0 mud_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mossy_stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 mud_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 slime []
setblock ~0 ~18 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 oak_log []
setblock ~0 ~4 ~-5 bookshelf []
setblock ~0 ~5 ~-5 campfire []
fill ~0 ~0 ~5 ~0 ~3 ~5 oak_log []
setblock ~0 ~4 ~5 bookshelf []
setblock ~0 ~5 ~5 campfire []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 oak_log []
setblock ~-6 ~4 ~0 bookshelf []
setblock ~-6 ~5 ~0 campfire []
fill ~6 ~0 ~0 ~6 ~3 ~0 oak_log []
setblock ~6 ~4 ~0 bookshelf []
setblock ~6 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 6x5x4) ---
fill ~-4 ~-5 ~-3 ~-4 ~0 ~-3 oak_log []
fill ~-4 ~-5 ~3 ~-4 ~0 ~3 oak_log []
fill ~4 ~-5 ~-3 ~4 ~0 ~-3 oak_log []
fill ~4 ~-5 ~3 ~4 ~0 ~3 oak_log []
setblock ~0 ~1 ~-4 cauldron []
setblock ~0 ~4 ~-4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~1 ~1 slot.container 1 slime_ball 12
replaceitem block ~3 ~1 ~1 slot.container 2 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 3 fermented_spider_eye 5
replaceitem block ~3 ~1 ~1 slot.container 4 gunpowder 11
replaceitem block ~3 ~1 ~1 slot.container 5 redstone 14
replaceitem block ~3 ~1 ~1 slot.container 9 lead 2
replaceitem block ~3 ~1 ~1 slot.container 10 name_tag 1
replaceitem block ~3 ~1 ~1 slot.container 11 brewing_stand 3
replaceitem block ~3 ~1 ~1 slot.container 12 cauldron 4
replaceitem block ~3 ~1 ~1 slot.container 13 lantern 8
replaceitem block ~3 ~1 ~1 slot.container 14 glass_bottle 11
loot insert ~3 ~1 ~1 loot "rsf/swampland"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-3 ~1 ~2 slot.container 1 fermented_spider_eye 8
replaceitem block ~-3 ~1 ~2 slot.container 2 gunpowder 14
replaceitem block ~-3 ~1 ~2 slot.container 3 redstone 17
replaceitem block ~-3 ~1 ~2 slot.container 4 glowstone_dust 8
replaceitem block ~-3 ~1 ~2 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~2 slot.container 9 lead 7
replaceitem block ~-3 ~1 ~2 slot.container 10 name_tag 1
replaceitem block ~-3 ~1 ~2 slot.container 11 brewing_stand 1
replaceitem block ~-3 ~1 ~2 slot.container 12 cauldron 2
replaceitem block ~-3 ~1 ~2 slot.container 13 lantern 6
replaceitem block ~-3 ~1 ~2 slot.container 14 glass_bottle 9
loot insert ~-3 ~1 ~2 loot "rsf/swampland"
loot insert ~-3 ~1 ~2 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
