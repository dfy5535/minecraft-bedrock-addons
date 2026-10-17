# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1635/4224 | 主题内编号: b099/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·铁闸门瓮城防御堡 (swampland_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 mud_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 mud_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 mud_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 packed_mud []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 mossy_stone_bricks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 spider_eye 14
replaceitem block ~-5 ~-3 ~2 slot.container 1 fermented_spider_eye 10
replaceitem block ~-5 ~-3 ~2 slot.container 2 gunpowder 8
replaceitem block ~-5 ~-3 ~2 slot.container 3 redstone 11
replaceitem block ~-5 ~-3 ~2 slot.container 4 glowstone_dust 10
replaceitem block ~-5 ~-3 ~2 slot.container 5 bone 13
replaceitem block ~-5 ~-3 ~2 slot.container 9 lead 4
replaceitem block ~-5 ~-3 ~2 slot.container 10 name_tag 1
replaceitem block ~-5 ~-3 ~2 slot.container 11 brewing_stand 5
replaceitem block ~-5 ~-3 ~2 slot.container 12 cauldron 6
replaceitem block ~-5 ~-3 ~2 slot.container 13 lantern 10
replaceitem block ~-5 ~-3 ~2 slot.container 14 glass_bottle 6
loot insert ~-5 ~-3 ~2 loot "rsf/swampland"
loot insert ~-5 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 mud_bricks []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 mossy_stone_bricks []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 mud_brick_wall []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 oak_log []
setblock ~-6 ~9 ~-4 campfire []
setblock ~-6 ~8 ~4 oak_log []
setblock ~-6 ~9 ~4 campfire []
setblock ~6 ~8 ~-4 oak_log []
setblock ~6 ~9 ~-4 campfire []
setblock ~6 ~8 ~4 oak_log []
setblock ~6 ~9 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 mossy_stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-6 ~-5 ~-4 ~-6 ~0 ~-4 oak_log []
fill ~-6 ~-5 ~4 ~-6 ~0 ~4 oak_log []
fill ~6 ~-5 ~-4 ~6 ~0 ~-4 oak_log []
fill ~6 ~-5 ~4 ~6 ~0 ~4 oak_log []
setblock ~-3 ~1 ~-5 cauldron []
setblock ~3 ~4 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-5 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 gunpowder 11
replaceitem block ~5 ~1 ~2 slot.container 1 redstone 14
replaceitem block ~5 ~1 ~2 slot.container 2 glowstone_dust 13
replaceitem block ~5 ~1 ~2 slot.container 3 bone 16
replaceitem block ~5 ~1 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~1 ~2 slot.container 5 slime_ball 12
replaceitem block ~5 ~1 ~2 slot.container 9 lead 6
replaceitem block ~5 ~1 ~2 slot.container 10 name_tag 1
replaceitem block ~5 ~1 ~2 slot.container 11 brewing_stand 7
replaceitem block ~5 ~1 ~2 slot.container 12 cauldron 1
replaceitem block ~5 ~1 ~2 slot.container 13 lantern 5
replaceitem block ~5 ~1 ~2 slot.container 14 glass_bottle 8
loot insert ~5 ~1 ~2 loot "rsf/swampland"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 glowstone_dust 8
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 slime_ball 15
replaceitem block ~-5 ~1 ~3 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 5 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~3 slot.container 9 lead 4
replaceitem block ~-5 ~1 ~3 slot.container 10 name_tag 1
replaceitem block ~-5 ~1 ~3 slot.container 11 brewing_stand 5
replaceitem block ~-5 ~1 ~3 slot.container 12 cauldron 6
replaceitem block ~-5 ~1 ~3 slot.container 13 lantern 10
replaceitem block ~-5 ~1 ~3 slot.container 14 glass_bottle 6
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
loot insert ~-5 ~1 ~3 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
