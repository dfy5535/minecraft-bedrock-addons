# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4099/4224 | 主题内编号: b003/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·环柱巨石方尖祭坛 (the_end_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 obsidian [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 obsidian [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 end_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 end_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 purpur_block []
setblock ~0 ~-5 ~0 emerald_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 end_rod []
setblock ~2 ~-4 ~0 end_rod []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ghast_tear 4
replaceitem block ~0 ~-2 ~-3 slot.container 1 slime_ball 9
replaceitem block ~0 ~-2 ~-3 slot.container 2 bone 12
replaceitem block ~0 ~-2 ~-3 slot.container 3 shulker_shell 11
replaceitem block ~0 ~-2 ~-3 slot.container 4 ender_pearl 22
replaceitem block ~0 ~-2 ~-3 slot.container 5 phantom_membrane 13
replaceitem block ~0 ~-2 ~-3 slot.container 9 emerald 6
replaceitem block ~0 ~-2 ~-3 slot.container 10 gold_ingot 11
replaceitem block ~0 ~-2 ~-3 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-2 ~-3 slot.container 12 golden_apple 6
replaceitem block ~0 ~-2 ~-3 slot.container 13 elytra 1
replaceitem block ~0 ~-2 ~-3 slot.container 14 diamond_sword 1
loot insert ~0 ~-2 ~-3 loot "rsf/the_end"
loot insert ~0 ~-2 ~-3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 purpur_block []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 purpur_pillar []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 purpur_pillar []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 purpur_pillar []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 purpur_pillar []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 purpur_pillar []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 purpur_pillar []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 purpur_pillar []
fill ~0 ~1 ~5 ~0 ~7 ~5 purpur_pillar []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 purpur_pillar []
fill ~2 ~1 ~5 ~2 ~7 ~5 purpur_pillar []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 purpur_pillar []
fill ~4 ~1 ~5 ~4 ~7 ~5 purpur_pillar []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 purpur_pillar []
fill ~6 ~1 ~5 ~6 ~7 ~5 purpur_pillar []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 purpur_pillar []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 purpur_pillar []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 purpur_pillar []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 purpur_pillar []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 purpur_pillar []
fill ~6 ~1 ~1 ~6 ~7 ~1 purpur_pillar []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 purpur_pillar []
fill ~6 ~1 ~3 ~6 ~7 ~3 purpur_pillar []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~6 ~-5 ~-8 ~6 ~5 purpur_stairs ["weirdo_direction"=0]
fill ~8 ~6 ~-5 ~8 ~6 ~5 purpur_stairs ["weirdo_direction"=1]
fill ~-7 ~7 ~-4 ~-7 ~7 ~4 purpur_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-4 ~7 ~7 ~4 purpur_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-4 ~6 ~7 ~4 purpur_slab []
fill ~0 ~8 ~-5 ~0 ~8 ~5 obsidian []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 purpur_pillar []
setblock ~0 ~4 ~-7 emerald_block []
setblock ~0 ~5 ~-7 end_rod []
fill ~0 ~0 ~7 ~0 ~3 ~7 purpur_pillar []
setblock ~0 ~4 ~7 emerald_block []
setblock ~0 ~5 ~7 end_rod []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 purpur_pillar []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 end_rod []
fill ~8 ~0 ~0 ~8 ~3 ~0 purpur_pillar []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~0 ~1 ~-7 ~7 ~1 purpur_pillar []
fill ~7 ~0 ~1 ~7 ~7 ~1 purpur_pillar []
setblock ~-7 ~8 ~1 obsidian []
setblock ~7 ~8 ~1 obsidian []
setblock ~-7 ~9 ~1 end_rod []
setblock ~7 ~9 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 end_rod []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 diamond_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 dragon_breath 5
replaceitem block ~5 ~1 ~3 slot.container 1 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 2 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 3 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 4 bone 15
replaceitem block ~5 ~1 ~3 slot.container 5 shulker_shell 6
replaceitem block ~5 ~1 ~3 slot.container 9 elytra 1
replaceitem block ~5 ~1 ~3 slot.container 10 diamond_sword 1
replaceitem block ~5 ~1 ~3 slot.container 11 end_rod 14
replaceitem block ~5 ~1 ~3 slot.container 12 chorus_fruit 16
replaceitem block ~5 ~1 ~3 slot.container 13 popped_chorus_fruit 13
replaceitem block ~5 ~1 ~3 slot.container 14 diamond 6
loot insert ~5 ~1 ~3 loot "rsf/the_end"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ghast_tear 2
replaceitem block ~-5 ~1 ~4 slot.container 1 slime_ball 7
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 3 shulker_shell 9
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 20
replaceitem block ~-5 ~1 ~4 slot.container 5 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 9 elytra 1
replaceitem block ~-5 ~1 ~4 slot.container 10 diamond_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 11 end_rod 12
replaceitem block ~-5 ~1 ~4 slot.container 12 chorus_fruit 21
replaceitem block ~-5 ~1 ~4 slot.container 13 popped_chorus_fruit 18
replaceitem block ~-5 ~1 ~4 slot.container 14 diamond 4
loot insert ~-5 ~1 ~4 loot "rsf/the_end"
loot insert ~-5 ~1 ~4 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
