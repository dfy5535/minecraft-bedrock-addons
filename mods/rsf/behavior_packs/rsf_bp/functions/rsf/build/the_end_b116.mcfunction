# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4212/4224 | 主题内编号: b116/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·U型围合秘密花园驿站 (the_end_conservatory_u_garden)
# 建筑构造: 主体[u_courtyard] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 end_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 end_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 end_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 end_rod []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 blaze_rod 5
replaceitem block ~4 ~-3 ~3 slot.container 1 ghast_tear 4
replaceitem block ~4 ~-3 ~3 slot.container 2 slime_ball 9
replaceitem block ~4 ~-3 ~3 slot.container 3 bone 12
replaceitem block ~4 ~-3 ~3 slot.container 4 shulker_shell 11
replaceitem block ~4 ~-3 ~3 slot.container 5 ender_pearl 22
replaceitem block ~4 ~-3 ~3 slot.container 9 diamond_sword 1
replaceitem block ~4 ~-3 ~3 slot.container 10 end_rod 13
replaceitem block ~4 ~-3 ~3 slot.container 11 chorus_fruit 22
replaceitem block ~4 ~-3 ~3 slot.container 12 popped_chorus_fruit 12
replaceitem block ~4 ~-3 ~3 slot.container 13 diamond 5
replaceitem block ~4 ~-3 ~3 slot.container 14 emerald 8
loot insert ~4 ~-3 ~3 loot "rsf/the_end"
loot insert ~4 ~-3 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 end_bricks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 end_stone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 obsidian []
fill ~-5 ~6 ~-4 ~5 ~7 ~4 glass []
fill ~-4 ~6 ~-3 ~4 ~6 ~3 air []
setblock ~0 ~7 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 obsidian []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 end_rod []
setblock ~2 ~4 ~-8 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-7 ~0 ~-1 ~-7 ~10 ~-1 purpur_pillar []
fill ~7 ~0 ~-1 ~7 ~10 ~-1 purpur_pillar []
setblock ~-7 ~11 ~-1 obsidian []
setblock ~7 ~11 ~-1 obsidian []
setblock ~-7 ~12 ~-1 end_rod []
setblock ~7 ~12 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-5 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 1 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 2 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 4 shulker_shell 6
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 17
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 10 elytra 1
replaceitem block ~-5 ~1 ~3 slot.container 11 diamond_sword 1
replaceitem block ~-5 ~1 ~3 slot.container 12 end_rod 9
replaceitem block ~-5 ~1 ~3 slot.container 13 chorus_fruit 18
replaceitem block ~-5 ~1 ~3 slot.container 14 popped_chorus_fruit 15
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
