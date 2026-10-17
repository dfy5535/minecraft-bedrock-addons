# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4184/4224 | 主题内编号: b088/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·矿车铁轨转运仓库 (the_end_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 end_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 end_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 purpur_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 purpur_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 purpur_block []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 end_rod []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 bone 12
replaceitem block ~-3 ~-3 ~2 slot.container 1 shulker_shell 11
replaceitem block ~-3 ~-3 ~2 slot.container 2 ender_pearl 22
replaceitem block ~-3 ~-3 ~2 slot.container 3 phantom_membrane 13
replaceitem block ~-3 ~-3 ~2 slot.container 4 dragon_breath 2
replaceitem block ~-3 ~-3 ~2 slot.container 5 blaze_rod 5
replaceitem block ~-3 ~-3 ~2 slot.container 9 end_rod 8
replaceitem block ~-3 ~-3 ~2 slot.container 10 chorus_fruit 17
replaceitem block ~-3 ~-3 ~2 slot.container 11 popped_chorus_fruit 14
replaceitem block ~-3 ~-3 ~2 slot.container 12 diamond 7
replaceitem block ~-3 ~-3 ~2 slot.container 13 emerald 10
replaceitem block ~-3 ~-3 ~2 slot.container 14 gold_ingot 15
loot insert ~-3 ~-3 ~2 loot "rsf/the_end"
loot insert ~-3 ~-3 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 end_bricks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 purpur_pillar []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 purpur_pillar []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 purpur_pillar []
fill ~5 ~1 ~6 ~5 ~5 ~6 purpur_pillar []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 purpur_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 purpur_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 purpur_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 purpur_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 purpur_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 obsidian []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 obsidian []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 end_rod []
setblock ~2 ~4 ~-9 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 purpur_pillar []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 purpur_pillar []
setblock ~-6 ~8 ~-2 obsidian []
setblock ~6 ~8 ~-2 obsidian []
setblock ~-6 ~9 ~-2 end_rod []
setblock ~6 ~9 ~-2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 end_rod []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 diamond_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 shulker_shell 6
replaceitem block ~-4 ~1 ~4 slot.container 1 ender_pearl 17
replaceitem block ~-4 ~1 ~4 slot.container 2 phantom_membrane 8
replaceitem block ~-4 ~1 ~4 slot.container 3 dragon_breath 5
replaceitem block ~-4 ~1 ~4 slot.container 4 blaze_rod 8
replaceitem block ~-4 ~1 ~4 slot.container 5 ghast_tear 7
replaceitem block ~-4 ~1 ~4 slot.container 9 diamond 9
replaceitem block ~-4 ~1 ~4 slot.container 10 emerald 12
replaceitem block ~-4 ~1 ~4 slot.container 11 gold_ingot 10
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~-4 ~1 ~4 slot.container 14 elytra 1
loot insert ~-4 ~1 ~4 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon endermite ~1 ~1 ~1
summon phantom ~0 ~-3 ~0
