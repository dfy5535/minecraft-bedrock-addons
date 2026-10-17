# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1623/4224 | 主题内编号: b087/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·十字矿道枢纽补给室 (swampland_mine_cross_tunnel_hub)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mud_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mud_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_mud []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mud_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 8
replaceitem block ~4 ~-3 ~3 slot.container 1 redstone 11
replaceitem block ~4 ~-3 ~3 slot.container 2 glowstone_dust 10
replaceitem block ~4 ~-3 ~3 slot.container 3 bone 13
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~4 ~-3 ~3 slot.container 5 slime_ball 17
replaceitem block ~4 ~-3 ~3 slot.container 9 lead 7
replaceitem block ~4 ~-3 ~3 slot.container 10 name_tag 1
replaceitem block ~4 ~-3 ~3 slot.container 11 brewing_stand 1
replaceitem block ~4 ~-3 ~3 slot.container 12 cauldron 2
replaceitem block ~4 ~-3 ~3 slot.container 13 lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 14 glass_bottle 9
loot insert ~4 ~-3 ~3 loot "rsf/swampland"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~5 ~5 mud_bricks []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 mud_bricks []
fill ~-1 ~1 ~-4 ~1 ~4 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 mud_brick_wall []
setblock ~6 ~2 ~0 mud_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 mossy_cobblestone []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 mud_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 brewing_stand []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-6 ~-6 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-6 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-6 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-6 ~5 ~6 ~0 ~5 oak_log []
setblock ~-3 ~1 ~-6 cauldron []
setblock ~3 ~2 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 blast_furnace []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~1 ~3 slot.container 1 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 3 fermented_spider_eye 5
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 11
replaceitem block ~5 ~1 ~3 slot.container 5 redstone 14
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 10
replaceitem block ~5 ~1 ~3 slot.container 10 glass_bottle 6
replaceitem block ~5 ~1 ~3 slot.container 11 golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 12 mushroom_stew 1
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_cod 11
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 10
loot insert ~5 ~1 ~3 loot "rsf/swampland"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 1 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 14
replaceitem block ~-5 ~1 ~4 slot.container 3 redstone 17
replaceitem block ~-5 ~1 ~4 slot.container 4 glowstone_dust 8
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 10 glass_bottle 11
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_cod 9
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~-5 ~1 ~4 loot "rsf/swampland"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
