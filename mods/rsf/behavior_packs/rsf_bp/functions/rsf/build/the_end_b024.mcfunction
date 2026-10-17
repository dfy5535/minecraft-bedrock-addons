# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4120/4224 | 主题内编号: b024/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·半地下掩体储藏室 (the_end_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x11 | 地上高度 4格 | 地下深度 5格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 end_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 end_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 purpur_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 end_bricks []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 end_rod []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 blaze_rod 5
replaceitem block ~3 ~-4 ~2 slot.container 1 ghast_tear 4
replaceitem block ~3 ~-4 ~2 slot.container 2 slime_ball 9
replaceitem block ~3 ~-4 ~2 slot.container 3 bone 12
replaceitem block ~3 ~-4 ~2 slot.container 4 shulker_shell 11
replaceitem block ~3 ~-4 ~2 slot.container 5 ender_pearl 22
replaceitem block ~3 ~-4 ~2 slot.container 9 golden_apple 6
replaceitem block ~3 ~-4 ~2 slot.container 10 elytra 1
replaceitem block ~3 ~-4 ~2 slot.container 11 diamond_sword 1
replaceitem block ~3 ~-4 ~2 slot.container 12 end_rod 14
replaceitem block ~3 ~-4 ~2 slot.container 13 chorus_fruit 16
replaceitem block ~3 ~-4 ~2 slot.container 14 popped_chorus_fruit 13
loot insert ~3 ~-4 ~2 loot "rsf/the_end"
loot insert ~3 ~-4 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 end_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 obsidian []
fill ~0 ~1 ~-4 ~0 ~2 ~4 obsidian []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~4 ~-4 ~5 ~4 ~4 obsidian []
fill ~-5 ~5 ~-4 ~5 ~5 ~4 cobblestone_wall []
fill ~-4 ~5 ~-3 ~4 ~5 ~3 air []
setblock ~-5 ~5 ~-4 purpur_pillar []
setblock ~-5 ~6 ~-4 end_rod []
setblock ~-5 ~5 ~4 purpur_pillar []
setblock ~-5 ~6 ~4 end_rod []
setblock ~5 ~5 ~-4 purpur_pillar []
setblock ~5 ~6 ~-4 end_rod []
setblock ~5 ~5 ~4 purpur_pillar []
setblock ~5 ~6 ~4 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 purpur_pillar []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~4 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x5x4) ---
fill ~-6 ~0 ~-1 ~-6 ~8 ~-1 purpur_pillar []
fill ~6 ~0 ~-1 ~6 ~8 ~-1 purpur_pillar []
setblock ~-6 ~9 ~-1 obsidian []
setblock ~6 ~9 ~-1 obsidian []
setblock ~-6 ~10 ~-1 end_rod []
setblock ~6 ~10 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 end_rod []
fill ~-6 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 shulker_shell 6
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 17
replaceitem block ~-4 ~1 ~2 slot.container 2 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 3 dragon_breath 5
replaceitem block ~-4 ~1 ~2 slot.container 4 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 9 chorus_fruit 20
replaceitem block ~-4 ~1 ~2 slot.container 10 popped_chorus_fruit 17
replaceitem block ~-4 ~1 ~2 slot.container 11 diamond 10
replaceitem block ~-4 ~1 ~2 slot.container 12 emerald 6
replaceitem block ~-4 ~1 ~2 slot.container 13 gold_ingot 11
replaceitem block ~-4 ~1 ~2 slot.container 14 iron_ingot 12
loot insert ~-4 ~1 ~2 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon endermite ~1 ~1 ~1
