# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4154/4224 | 主题内编号: b058/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·十字拱顶家族陵墓 (the_end_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 purpur_block [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 purpur_block [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 obsidian []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 purpur_block []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 end_rod []
setblock ~4 ~-6 ~0 end_rod []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 shulker_shell 11
replaceitem block ~0 ~-4 ~3 slot.container 1 ender_pearl 22
replaceitem block ~0 ~-4 ~3 slot.container 2 phantom_membrane 13
replaceitem block ~0 ~-4 ~3 slot.container 3 dragon_breath 2
replaceitem block ~0 ~-4 ~3 slot.container 4 blaze_rod 5
replaceitem block ~0 ~-4 ~3 slot.container 5 ghast_tear 4
replaceitem block ~0 ~-4 ~3 slot.container 9 gold_ingot 12
replaceitem block ~0 ~-4 ~3 slot.container 10 iron_ingot 13
replaceitem block ~0 ~-4 ~3 slot.container 11 golden_apple 7
replaceitem block ~0 ~-4 ~3 slot.container 12 elytra 1
replaceitem block ~0 ~-4 ~3 slot.container 13 diamond_sword 1
replaceitem block ~0 ~-4 ~3 slot.container 14 end_rod 8
loot insert ~0 ~-4 ~3 loot "rsf/the_end"
loot insert ~0 ~-4 ~3 loot "chests/end_city_treasure"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 shulker_shell 9
replaceitem block ~0 ~-4 ~-3 slot.container 1 ender_pearl 20
replaceitem block ~0 ~-4 ~-3 slot.container 2 phantom_membrane 11
replaceitem block ~0 ~-4 ~-3 slot.container 3 dragon_breath 8
replaceitem block ~0 ~-4 ~-3 slot.container 4 blaze_rod 11
replaceitem block ~0 ~-4 ~-3 slot.container 5 ghast_tear 2
replaceitem block ~0 ~-4 ~-3 slot.container 9 gold_ingot 11
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_ingot 12
replaceitem block ~0 ~-4 ~-3 slot.container 11 golden_apple 6
replaceitem block ~0 ~-4 ~-3 slot.container 12 elytra 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 diamond_sword 1
replaceitem block ~0 ~-4 ~-3 slot.container 14 end_rod 14
loot insert ~0 ~-4 ~-3 loot "rsf/the_end"
loot insert ~0 ~-4 ~-3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~5 ~5 purpur_block []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 purpur_block []
fill ~-1 ~1 ~-4 ~1 ~4 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 purpur_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 purpur_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 purpur_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 purpur_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 purpur_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 end_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 purpur_block []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 end_rod []
setblock ~2 ~4 ~-9 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~1 ~-7 ~7 ~1 purpur_pillar []
fill ~7 ~0 ~1 ~7 ~7 ~1 purpur_pillar []
setblock ~-7 ~8 ~1 obsidian []
setblock ~7 ~8 ~1 obsidian []
setblock ~-7 ~9 ~1 end_rod []
setblock ~7 ~9 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-6 ~1 ~5 fletching_table []
setblock ~0 ~1 ~5 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 1 dragon_breath 5
replaceitem block ~-5 ~1 ~3 slot.container 2 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 3 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 4 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 9 diamond 7
replaceitem block ~-5 ~1 ~3 slot.container 10 emerald 10
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 15
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 16
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 14 elytra 1
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1
summon enderman ~0 ~-4 ~0
