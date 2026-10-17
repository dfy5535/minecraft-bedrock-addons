# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4218/4224 | 主题内编号: b122/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·十字穹顶宏伟圣堂与墓窟 (the_end_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 purpur_block [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 purpur_block [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 purpur_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 obsidian []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 obsidian []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 end_bricks []
setblock ~0 ~-7 ~0 diamond_block []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 end_rod []
setblock ~2 ~-6 ~0 end_rod []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 blaze_rod 5
replaceitem block ~0 ~-4 ~-4 slot.container 1 ghast_tear 4
replaceitem block ~0 ~-4 ~-4 slot.container 2 slime_ball 9
replaceitem block ~0 ~-4 ~-4 slot.container 3 bone 12
replaceitem block ~0 ~-4 ~-4 slot.container 4 shulker_shell 11
replaceitem block ~0 ~-4 ~-4 slot.container 5 ender_pearl 22
replaceitem block ~0 ~-4 ~-4 slot.container 9 chorus_fruit 16
replaceitem block ~0 ~-4 ~-4 slot.container 10 popped_chorus_fruit 13
replaceitem block ~0 ~-4 ~-4 slot.container 11 diamond 6
replaceitem block ~0 ~-4 ~-4 slot.container 12 emerald 9
replaceitem block ~0 ~-4 ~-4 slot.container 13 gold_ingot 14
replaceitem block ~0 ~-4 ~-4 slot.container 14 iron_ingot 15
loot insert ~0 ~-4 ~-4 loot "rsf/the_end"
loot insert ~0 ~-4 ~-4 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 purpur_block []
fill ~-7 ~1 ~-2 ~7 ~8 ~2 purpur_block []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 purpur_block []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 glass []
fill ~-3 ~7 ~-2 ~3 ~7 ~2 air []
setblock ~0 ~8 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 purpur_pillar []
fill ~-8 ~0 ~2 ~-8 ~7 ~2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~7 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-8 ~0 ~2 ~-8 ~6 ~2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~6 ~2 purpur_pillar []
setblock ~-8 ~7 ~2 obsidian []
setblock ~8 ~7 ~2 obsidian []
setblock ~-8 ~8 ~2 end_rod []
setblock ~8 ~8 ~2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 end_rod []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 1 dragon_breath 5
replaceitem block ~-6 ~1 ~4 slot.container 2 blaze_rod 8
replaceitem block ~-6 ~1 ~4 slot.container 3 ghast_tear 7
replaceitem block ~-6 ~1 ~4 slot.container 4 slime_ball 12
replaceitem block ~-6 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-6 ~1 ~4 slot.container 9 gold_ingot 14
replaceitem block ~-6 ~1 ~4 slot.container 10 iron_ingot 15
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 9
replaceitem block ~-6 ~1 ~4 slot.container 12 elytra 1
replaceitem block ~-6 ~1 ~4 slot.container 13 diamond_sword 1
replaceitem block ~-6 ~1 ~4 slot.container 14 end_rod 10
loot insert ~-6 ~1 ~4 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
