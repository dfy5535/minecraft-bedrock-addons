# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1539/4224 | 主题内编号: b003/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·环柱巨石方尖祭坛 (swampland_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~13 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mud_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mud_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_mud []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 lantern []
setblock ~4 ~-5 ~-3 lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 8
replaceitem block ~4 ~-3 ~3 slot.container 1 redstone 11
replaceitem block ~4 ~-3 ~3 slot.container 2 glowstone_dust 10
replaceitem block ~4 ~-3 ~3 slot.container 3 bone 13
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~4 ~-3 ~3 slot.container 5 slime_ball 17
replaceitem block ~4 ~-3 ~3 slot.container 9 brewing_stand 1
replaceitem block ~4 ~-3 ~3 slot.container 10 cauldron 2
replaceitem block ~4 ~-3 ~3 slot.container 11 lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 12 glass_bottle 9
replaceitem block ~4 ~-3 ~3 slot.container 13 golden_apple 5
replaceitem block ~4 ~-3 ~3 slot.container 14 mushroom_stew 1
loot insert ~4 ~-3 ~3 loot "rsf/swampland"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 mossy_stone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 oak_log []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 oak_log []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 oak_log []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 oak_log []
fill ~-2 ~1 ~-5 ~-2 ~8 ~-5 oak_log []
fill ~-2 ~1 ~5 ~-2 ~8 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~8 ~-5 oak_log []
fill ~0 ~1 ~5 ~0 ~8 ~5 oak_log []
fill ~2 ~1 ~-5 ~2 ~8 ~-5 oak_log []
fill ~2 ~1 ~5 ~2 ~8 ~5 oak_log []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 oak_log []
fill ~4 ~1 ~5 ~4 ~8 ~5 oak_log []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 oak_log []
fill ~6 ~1 ~5 ~6 ~8 ~5 oak_log []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 oak_log []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 oak_log []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 oak_log []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 oak_log []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 oak_log []
fill ~6 ~1 ~1 ~6 ~8 ~1 oak_log []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 oak_log []
fill ~6 ~1 ~3 ~6 ~8 ~3 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 mud_bricks []
fill ~0 ~15 ~0 ~0 ~16 ~0 slime []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 oak_log []
setblock ~0 ~4 ~-7 bookshelf []
setblock ~0 ~5 ~-7 campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 oak_log []
setblock ~0 ~4 ~7 bookshelf []
setblock ~0 ~5 ~7 campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 oak_log []
setblock ~-8 ~4 ~0 bookshelf []
setblock ~-8 ~5 ~0 campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 oak_log []
setblock ~8 ~4 ~0 bookshelf []
setblock ~8 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-6 ~-5 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-5 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-5 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-5 ~5 ~6 ~0 ~5 oak_log []
setblock ~-3 ~1 ~-6 cauldron []
setblock ~3 ~3 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 slime []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 gunpowder 11
replaceitem block ~5 ~1 ~3 slot.container 1 redstone 14
replaceitem block ~5 ~1 ~3 slot.container 2 glowstone_dust 13
replaceitem block ~5 ~1 ~3 slot.container 3 bone 16
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~1 ~3 slot.container 5 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 9 brewing_stand 7
replaceitem block ~5 ~1 ~3 slot.container 10 cauldron 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 5
replaceitem block ~5 ~1 ~3 slot.container 12 glass_bottle 8
replaceitem block ~5 ~1 ~3 slot.container 13 golden_apple 4
replaceitem block ~5 ~1 ~3 slot.container 14 mushroom_stew 1
loot insert ~5 ~1 ~3 loot "rsf/swampland"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 glowstone_dust 8
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 3 slime_ball 15
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 5 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 9 brewing_stand 5
replaceitem block ~-5 ~1 ~4 slot.container 10 cauldron 6
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 12 glass_bottle 6
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 2
replaceitem block ~-5 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~-5 ~1 ~4 loot "rsf/swampland"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
