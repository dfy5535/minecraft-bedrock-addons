# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4183/4224 | 主题内编号: b087/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·十字矿道枢纽补给室 (the_end_mine_cross_tunnel_hub)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 obsidian [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 obsidian [] replace water
fill ~-7 ~1 ~-6 ~7 ~6 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 end_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 obsidian []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 end_rod []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 dragon_breath 2
replaceitem block ~4 ~-3 ~3 slot.container 1 blaze_rod 5
replaceitem block ~4 ~-3 ~3 slot.container 2 ghast_tear 4
replaceitem block ~4 ~-3 ~3 slot.container 3 slime_ball 9
replaceitem block ~4 ~-3 ~3 slot.container 4 bone 12
replaceitem block ~4 ~-3 ~3 slot.container 5 shulker_shell 11
replaceitem block ~4 ~-3 ~3 slot.container 9 iron_ingot 13
replaceitem block ~4 ~-3 ~3 slot.container 10 golden_apple 7
replaceitem block ~4 ~-3 ~3 slot.container 11 elytra 1
replaceitem block ~4 ~-3 ~3 slot.container 12 diamond_sword 1
replaceitem block ~4 ~-3 ~3 slot.container 13 end_rod 8
replaceitem block ~4 ~-3 ~3 slot.container 14 chorus_fruit 17
loot insert ~4 ~-3 ~3 loot "rsf/the_end"
loot insert ~4 ~-3 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~4 ~5 obsidian []
fill ~-6 ~1 ~-2 ~6 ~4 ~2 obsidian []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~3 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~4 ~-5 ~6 ~4 ~5 purpur_block []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 cobblestone_wall []
fill ~-5 ~5 ~-4 ~5 ~5 ~4 air []
setblock ~-6 ~5 ~-5 purpur_pillar []
setblock ~-6 ~6 ~-5 end_rod []
setblock ~-6 ~5 ~5 purpur_pillar []
setblock ~-6 ~6 ~5 end_rod []
setblock ~6 ~5 ~-5 purpur_pillar []
setblock ~6 ~6 ~-5 end_rod []
setblock ~6 ~5 ~5 purpur_pillar []
setblock ~6 ~6 ~5 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 purpur_pillar []
fill ~-8 ~0 ~2 ~-8 ~7 ~2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~7 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~0 ~-7 ~6 ~0 purpur_pillar []
fill ~7 ~0 ~0 ~7 ~6 ~0 purpur_pillar []
setblock ~-7 ~7 ~0 obsidian []
setblock ~7 ~7 ~0 obsidian []
setblock ~-7 ~8 ~0 end_rod []
setblock ~7 ~8 ~0 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 15
replaceitem block ~5 ~1 ~3 slot.container 1 shulker_shell 6
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 17
replaceitem block ~5 ~1 ~3 slot.container 3 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 4 dragon_breath 5
replaceitem block ~5 ~1 ~3 slot.container 5 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 9 end_rod 12
replaceitem block ~5 ~1 ~3 slot.container 10 chorus_fruit 21
replaceitem block ~5 ~1 ~3 slot.container 11 popped_chorus_fruit 18
replaceitem block ~5 ~1 ~3 slot.container 12 diamond 4
replaceitem block ~5 ~1 ~3 slot.container 13 emerald 7
replaceitem block ~5 ~1 ~3 slot.container 14 gold_ingot 12
loot insert ~5 ~1 ~3 loot "rsf/the_end"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 20
replaceitem block ~-5 ~1 ~4 slot.container 1 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 2 dragon_breath 8
replaceitem block ~-5 ~1 ~4 slot.container 3 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 2
replaceitem block ~-5 ~1 ~4 slot.container 5 slime_ball 7
replaceitem block ~-5 ~1 ~4 slot.container 9 end_rod 10
replaceitem block ~-5 ~1 ~4 slot.container 10 chorus_fruit 19
replaceitem block ~-5 ~1 ~4 slot.container 11 popped_chorus_fruit 16
replaceitem block ~-5 ~1 ~4 slot.container 12 diamond 9
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 12
replaceitem block ~-5 ~1 ~4 slot.container 14 gold_ingot 10
loot insert ~-5 ~1 ~4 loot "rsf/the_end"
loot insert ~-5 ~1 ~4 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
