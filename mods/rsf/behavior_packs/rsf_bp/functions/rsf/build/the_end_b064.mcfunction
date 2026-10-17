# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4160/4224 | 主题内编号: b064/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·U型冥庭守墓人陵园 (the_end_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 end_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 end_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 end_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 end_rod []
setblock ~4 ~-5 ~-3 end_rod []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 dragon_breath 2
replaceitem block ~4 ~-3 ~3 slot.container 1 blaze_rod 5
replaceitem block ~4 ~-3 ~3 slot.container 2 ghast_tear 4
replaceitem block ~4 ~-3 ~3 slot.container 3 slime_ball 9
replaceitem block ~4 ~-3 ~3 slot.container 4 bone 12
replaceitem block ~4 ~-3 ~3 slot.container 5 shulker_shell 11
replaceitem block ~4 ~-3 ~3 slot.container 9 elytra 1
replaceitem block ~4 ~-3 ~3 slot.container 10 diamond_sword 1
replaceitem block ~4 ~-3 ~3 slot.container 11 end_rod 8
replaceitem block ~4 ~-3 ~3 slot.container 12 chorus_fruit 17
replaceitem block ~4 ~-3 ~3 slot.container 13 popped_chorus_fruit 14
replaceitem block ~4 ~-3 ~3 slot.container 14 diamond 7
loot insert ~4 ~-3 ~3 loot "rsf/the_end"
loot insert ~4 ~-3 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 end_bricks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 end_stone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 purpur_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 purpur_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 purpur_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 purpur_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 purpur_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 obsidian []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~0 ~2 ~-7 ~8 ~2 purpur_pillar []
fill ~7 ~0 ~2 ~7 ~8 ~2 purpur_pillar []
setblock ~-7 ~9 ~2 obsidian []
setblock ~7 ~9 ~2 obsidian []
setblock ~-7 ~10 ~2 end_rod []
setblock ~7 ~10 ~2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 shulker_shell 6
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 17
replaceitem block ~-5 ~1 ~3 slot.container 2 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 3 dragon_breath 5
replaceitem block ~-5 ~1 ~3 slot.container 4 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 5 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 9 chorus_fruit 18
replaceitem block ~-5 ~1 ~3 slot.container 10 popped_chorus_fruit 15
replaceitem block ~-5 ~1 ~3 slot.container 11 diamond 8
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 11
replaceitem block ~-5 ~1 ~3 slot.container 13 gold_ingot 16
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 10
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon endermite ~1 ~1 ~1
summon phantom ~0 ~-4 ~0
