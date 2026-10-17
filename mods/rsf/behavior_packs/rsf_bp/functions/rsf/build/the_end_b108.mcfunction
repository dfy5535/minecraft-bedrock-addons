# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4204/4224 | 主题内编号: b108/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·十字四相元素秘法殿 (the_end_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 end_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 end_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 end_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~0 ~-6 ~0 end_rod []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 blaze_rod 5
replaceitem block ~4 ~-3 ~0 slot.container 1 ghast_tear 4
replaceitem block ~4 ~-3 ~0 slot.container 2 slime_ball 9
replaceitem block ~4 ~-3 ~0 slot.container 3 bone 12
replaceitem block ~4 ~-3 ~0 slot.container 4 shulker_shell 11
replaceitem block ~4 ~-3 ~0 slot.container 5 ender_pearl 22
replaceitem block ~4 ~-3 ~0 slot.container 9 diamond_sword 1
replaceitem block ~4 ~-3 ~0 slot.container 10 end_rod 11
replaceitem block ~4 ~-3 ~0 slot.container 11 chorus_fruit 20
replaceitem block ~4 ~-3 ~0 slot.container 12 popped_chorus_fruit 17
replaceitem block ~4 ~-3 ~0 slot.container 13 diamond 10
replaceitem block ~4 ~-3 ~0 slot.container 14 emerald 6
loot insert ~4 ~-3 ~0 loot "rsf/the_end"
loot insert ~4 ~-3 ~0 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 end_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 end_bricks []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 obsidian []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 end_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 emerald_block []
setblock ~0 ~10 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 purpur_block []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 end_rod []
setblock ~2 ~4 ~-9 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~0 ~1 ~-7 ~7 ~1 purpur_pillar []
fill ~7 ~0 ~1 ~7 ~7 ~1 purpur_pillar []
setblock ~-7 ~8 ~1 obsidian []
setblock ~7 ~8 ~1 obsidian []
setblock ~-7 ~9 ~1 end_rod []
setblock ~7 ~9 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~3 ~0 end_rod []
setblock ~-5 ~1 ~4 blast_furnace []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 1 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 2 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 4 shulker_shell 6
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 17
replaceitem block ~-5 ~1 ~3 slot.container 9 diamond 8
replaceitem block ~-5 ~1 ~3 slot.container 10 emerald 11
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 16
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 14 elytra 1
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon endermite ~1 ~1 ~1
