# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4128/4224 | 主题内编号: b032/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·断顶残垣古哨塔 (the_end_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 end_bricks [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 end_bricks [] replace water
fill ~-5 ~1 ~-5 ~5 ~10 ~5 air []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 purpur_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 purpur_block []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 end_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 end_rod []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 ender_pearl 22
replaceitem block ~4 ~-3 ~4 slot.container 1 phantom_membrane 13
replaceitem block ~4 ~-3 ~4 slot.container 2 dragon_breath 2
replaceitem block ~4 ~-3 ~4 slot.container 3 blaze_rod 5
replaceitem block ~4 ~-3 ~4 slot.container 4 ghast_tear 4
replaceitem block ~4 ~-3 ~4 slot.container 5 slime_ball 9
replaceitem block ~4 ~-3 ~4 slot.container 9 emerald 12
replaceitem block ~4 ~-3 ~4 slot.container 10 gold_ingot 10
replaceitem block ~4 ~-3 ~4 slot.container 11 iron_ingot 11
replaceitem block ~4 ~-3 ~4 slot.container 12 golden_apple 5
replaceitem block ~4 ~-3 ~4 slot.container 13 elytra 1
replaceitem block ~4 ~-3 ~4 slot.container 14 diamond_sword 1
loot insert ~4 ~-3 ~4 loot "rsf/the_end"
loot insert ~4 ~-3 ~4 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~8 ~4 end_bricks []
fill ~-3 ~1 ~-3 ~3 ~7 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~8 ~-4 purpur_pillar []
fill ~-4 ~1 ~4 ~-4 ~8 ~4 purpur_pillar []
fill ~4 ~1 ~-4 ~4 ~8 ~-4 purpur_pillar []
fill ~4 ~1 ~4 ~4 ~8 ~4 purpur_pillar []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~8 ~-4 ~4 ~8 ~4 purpur_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-4 ~7 ~-1 ~-4 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 purpur_pillar []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 purpur_pillar []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 purpur_pillar []
fill ~5 ~0 ~2 ~5 ~7 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 5x7x2) ---
fill ~-5 ~0 ~-1 ~-5 ~6 ~-1 purpur_pillar []
fill ~5 ~0 ~-1 ~5 ~6 ~-1 purpur_pillar []
setblock ~-5 ~7 ~-1 obsidian []
setblock ~5 ~7 ~-1 obsidian []
setblock ~-5 ~8 ~-1 end_rod []
setblock ~5 ~8 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 end_rod []
setblock ~-3 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 shulker_shell 6
replaceitem block ~-3 ~1 ~2 slot.container 1 ender_pearl 17
replaceitem block ~-3 ~1 ~2 slot.container 2 phantom_membrane 8
replaceitem block ~-3 ~1 ~2 slot.container 3 dragon_breath 5
replaceitem block ~-3 ~1 ~2 slot.container 4 blaze_rod 8
replaceitem block ~-3 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-3 ~1 ~2 slot.container 9 gold_ingot 15
replaceitem block ~-3 ~1 ~2 slot.container 10 iron_ingot 16
replaceitem block ~-3 ~1 ~2 slot.container 11 golden_apple 3
replaceitem block ~-3 ~1 ~2 slot.container 12 elytra 1
replaceitem block ~-3 ~1 ~2 slot.container 13 diamond_sword 1
replaceitem block ~-3 ~1 ~2 slot.container 14 end_rod 11
loot insert ~-3 ~1 ~2 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
