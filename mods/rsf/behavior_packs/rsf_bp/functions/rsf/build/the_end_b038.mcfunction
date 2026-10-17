# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4134/4224 | 主题内编号: b038/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·四方凯旋衣冠冢 (the_end_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 purpur_block [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 purpur_block [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 obsidian []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 obsidian []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 end_bricks []
setblock ~0 ~-6 ~0 diamond_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 end_rod []
setblock ~2 ~-5 ~0 end_rod []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 shulker_shell 11
replaceitem block ~0 ~-3 ~-2 slot.container 1 ender_pearl 22
replaceitem block ~0 ~-3 ~-2 slot.container 2 phantom_membrane 13
replaceitem block ~0 ~-3 ~-2 slot.container 3 dragon_breath 2
replaceitem block ~0 ~-3 ~-2 slot.container 4 blaze_rod 5
replaceitem block ~0 ~-3 ~-2 slot.container 5 ghast_tear 4
replaceitem block ~0 ~-3 ~-2 slot.container 9 diamond_sword 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 end_rod 9
replaceitem block ~0 ~-3 ~-2 slot.container 11 chorus_fruit 18
replaceitem block ~0 ~-3 ~-2 slot.container 12 popped_chorus_fruit 15
replaceitem block ~0 ~-3 ~-2 slot.container 13 diamond 8
replaceitem block ~0 ~-3 ~-2 slot.container 14 emerald 11
loot insert ~0 ~-3 ~-2 loot "rsf/the_end"
loot insert ~0 ~-3 ~-2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~7 ~4 purpur_block []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 purpur_block []
fill ~-1 ~1 ~-3 ~1 ~6 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 end_bricks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 obsidian []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 sea_lantern []
setblock ~0 ~11 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 purpur_pillar []
fill ~-8 ~0 ~2 ~-8 ~7 ~2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~7 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-6 ~0 ~1 ~-6 ~7 ~1 purpur_pillar []
fill ~6 ~0 ~1 ~6 ~7 ~1 purpur_pillar []
setblock ~-6 ~8 ~1 obsidian []
setblock ~6 ~8 ~1 obsidian []
setblock ~-6 ~9 ~1 end_rod []
setblock ~6 ~9 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 slime_ball 12
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~2 slot.container 2 shulker_shell 6
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 17
replaceitem block ~-4 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 5 dragon_breath 5
replaceitem block ~-4 ~1 ~2 slot.container 9 diamond 8
replaceitem block ~-4 ~1 ~2 slot.container 10 emerald 11
replaceitem block ~-4 ~1 ~2 slot.container 11 gold_ingot 16
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 14 elytra 1
loot insert ~-4 ~1 ~2 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
