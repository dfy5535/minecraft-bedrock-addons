# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4177/4224 | 主题内编号: b081/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·双高炉重工冶炼密室 (the_end_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 end_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 end_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~7 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 purpur_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 end_stone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 obsidian []
setblock ~0 ~0 ~0 obsidian []

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

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-5 ~1 ~-5 ~5 ~5 ~5 end_bricks []
fill ~-4 ~1 ~-4 ~4 ~4 ~4 air []
fill ~-5 ~1 ~5 ~-6 ~8 ~5 purpur_block []
setblock ~-5 ~9 ~5 end_rod []
fill ~-1 ~1 ~-5 ~1 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-6 ~-6 ~6 ~6 purpur_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-6 ~6 ~6 ~6 purpur_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~-5 ~7 ~5 purpur_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-5 ~5 ~7 ~5 purpur_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~4 ~7 ~5 purpur_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 purpur_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 purpur_block []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 purpur_pillar []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 purpur_pillar []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 purpur_slab []
setblock ~0 ~3 ~-7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~-6 ~0 ~-1 ~-6 ~10 ~-1 purpur_pillar []
fill ~6 ~0 ~-1 ~6 ~10 ~-1 purpur_pillar []
setblock ~-6 ~11 ~-1 obsidian []
setblock ~6 ~11 ~-1 obsidian []
setblock ~-6 ~12 ~-1 end_rod []
setblock ~6 ~12 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 17
replaceitem block ~4 ~1 ~3 slot.container 1 phantom_membrane 8
replaceitem block ~4 ~1 ~3 slot.container 2 dragon_breath 5
replaceitem block ~4 ~1 ~3 slot.container 3 blaze_rod 8
replaceitem block ~4 ~1 ~3 slot.container 4 ghast_tear 7
replaceitem block ~4 ~1 ~3 slot.container 5 slime_ball 12
replaceitem block ~4 ~1 ~3 slot.container 9 popped_chorus_fruit 17
replaceitem block ~4 ~1 ~3 slot.container 10 diamond 10
replaceitem block ~4 ~1 ~3 slot.container 11 emerald 6
replaceitem block ~4 ~1 ~3 slot.container 12 gold_ingot 11
replaceitem block ~4 ~1 ~3 slot.container 13 iron_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~4 ~1 ~3 loot "rsf/the_end"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 dragon_breath 8
replaceitem block ~-4 ~1 ~4 slot.container 1 blaze_rod 11
replaceitem block ~-4 ~1 ~4 slot.container 2 ghast_tear 2
replaceitem block ~-4 ~1 ~4 slot.container 3 slime_ball 7
replaceitem block ~-4 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-4 ~1 ~4 slot.container 5 shulker_shell 9
replaceitem block ~-4 ~1 ~4 slot.container 9 popped_chorus_fruit 15
replaceitem block ~-4 ~1 ~4 slot.container 10 diamond 8
replaceitem block ~-4 ~1 ~4 slot.container 11 emerald 11
replaceitem block ~-4 ~1 ~4 slot.container 12 gold_ingot 16
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_ingot 10
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-4 ~1 ~4 loot "rsf/the_end"
loot insert ~-4 ~1 ~4 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1
summon phantom ~1 ~1 ~1
