# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1587/4224 | 主题内编号: b051/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·带哨塔围栏探险营地 (swampland_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 mud_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 mud_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_mud []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mud_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 slime []
setblock ~-4 ~-5 ~-3 campfire []
setblock ~4 ~-5 ~3 campfire []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 gunpowder 8
replaceitem block ~0 ~-3 ~3 slot.container 1 redstone 11
replaceitem block ~0 ~-3 ~3 slot.container 2 glowstone_dust 10
replaceitem block ~0 ~-3 ~3 slot.container 3 bone 13
replaceitem block ~0 ~-3 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~0 ~-3 ~3 slot.container 5 slime_ball 17
replaceitem block ~0 ~-3 ~3 slot.container 9 cooked_cod 12
replaceitem block ~0 ~-3 ~3 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-3 ~3 slot.container 11 lead 8
replaceitem block ~0 ~-3 ~3 slot.container 12 name_tag 1
replaceitem block ~0 ~-3 ~3 slot.container 13 brewing_stand 2
replaceitem block ~0 ~-3 ~3 slot.container 14 cauldron 3
loot insert ~0 ~-3 ~3 loot "rsf/swampland"
loot insert ~0 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 mud_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 mossy_stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 mossy_stone_bricks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 mud_brick_wall []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 oak_log []
setblock ~-6 ~9 ~-5 campfire []
setblock ~-6 ~8 ~5 oak_log []
setblock ~-6 ~9 ~5 campfire []
setblock ~6 ~8 ~-5 oak_log []
setblock ~6 ~9 ~-5 campfire []
setblock ~6 ~8 ~5 oak_log []
setblock ~6 ~9 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 cobblestone []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-6 ~-4 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-4 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-4 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-4 ~5 ~6 ~0 ~5 oak_log []
setblock ~-3 ~1 ~-6 cauldron []
setblock ~3 ~6 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 gunpowder 11
replaceitem block ~5 ~1 ~3 slot.container 1 redstone 14
replaceitem block ~5 ~1 ~3 slot.container 2 glowstone_dust 13
replaceitem block ~5 ~1 ~3 slot.container 3 bone 16
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~1 ~3 slot.container 5 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 9 golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 10 mushroom_stew 1
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_cod 8
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 7
replaceitem block ~5 ~1 ~3 slot.container 13 lead 4
replaceitem block ~5 ~1 ~3 slot.container 14 name_tag 1
loot insert ~5 ~1 ~3 loot "rsf/swampland"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 glowstone_dust 8
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 3 slime_ball 15
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 5 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_cod 13
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 13 lead 2
replaceitem block ~-5 ~1 ~4 slot.container 14 name_tag 1
loot insert ~-5 ~1 ~4 loot "rsf/swampland"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
