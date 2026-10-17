# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4178/4224 | 主题内编号: b082/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·竖井井架矿工物资站 (the_end_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 6格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 purpur_block [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 purpur_block [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 obsidian []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 end_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 diamond_block []
setblock ~0 ~-5 ~0 end_rod []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 bone 12
replaceitem block ~4 ~-2 ~0 slot.container 1 shulker_shell 11
replaceitem block ~4 ~-2 ~0 slot.container 2 ender_pearl 22
replaceitem block ~4 ~-2 ~0 slot.container 3 phantom_membrane 13
replaceitem block ~4 ~-2 ~0 slot.container 4 dragon_breath 2
replaceitem block ~4 ~-2 ~0 slot.container 5 blaze_rod 5
replaceitem block ~4 ~-2 ~0 slot.container 9 iron_ingot 16
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_apple 3
replaceitem block ~4 ~-2 ~0 slot.container 11 elytra 1
replaceitem block ~4 ~-2 ~0 slot.container 12 diamond_sword 1
replaceitem block ~4 ~-2 ~0 slot.container 13 end_rod 11
replaceitem block ~4 ~-2 ~0 slot.container 14 chorus_fruit 20
loot insert ~4 ~-2 ~0 loot "rsf/the_end"
loot insert ~4 ~-2 ~0 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~3 ~4 purpur_block []
fill ~-4 ~1 ~-3 ~4 ~2 ~3 air []
fill ~-6 ~3 ~-5 ~6 ~3 ~5 purpur_slab []
fill ~-4 ~4 ~-3 ~4 ~7 ~3 obsidian []
fill ~-3 ~4 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~4 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 end_bricks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 obsidian []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 sea_lantern []
setblock ~0 ~11 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 end_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~-6 ~0 ~1 ~-6 ~6 ~1 purpur_pillar []
fill ~6 ~0 ~1 ~6 ~6 ~1 purpur_pillar []
setblock ~-6 ~7 ~1 obsidian []
setblock ~6 ~7 ~1 obsidian []
setblock ~-6 ~8 ~1 end_rod []
setblock ~6 ~8 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~-4 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 1 dragon_breath 5
replaceitem block ~-4 ~1 ~2 slot.container 2 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 3 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 4 slime_ball 12
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~2 slot.container 9 gold_ingot 16
replaceitem block ~-4 ~1 ~2 slot.container 10 iron_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 12 elytra 1
replaceitem block ~-4 ~1 ~2 slot.container 13 diamond_sword 1
replaceitem block ~-4 ~1 ~2 slot.container 14 end_rod 12
loot insert ~-4 ~1 ~2 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1
summon enderman ~0 ~-5 ~0
