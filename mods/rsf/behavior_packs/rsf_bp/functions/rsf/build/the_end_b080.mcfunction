# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4176/4224 | 主题内编号: b080/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·悬灯祈福图腾花坛 (the_end_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 end_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 end_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 purpur_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 obsidian []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~3 ~4 end_bricks []
fill ~-4 ~1 ~-3 ~4 ~2 ~3 air []
fill ~-6 ~3 ~-5 ~6 ~3 ~5 purpur_slab []
fill ~-4 ~4 ~-3 ~4 ~6 ~3 end_bricks []
fill ~-3 ~4 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~4 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 end_bricks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 obsidian []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 sea_lantern []
setblock ~0 ~11 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 purpur_pillar []
setblock ~0 ~4 ~-6 obsidian []
setblock ~0 ~5 ~-6 end_rod []
fill ~0 ~0 ~6 ~0 ~3 ~6 purpur_pillar []
setblock ~0 ~4 ~6 obsidian []
setblock ~0 ~5 ~6 end_rod []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 purpur_pillar []
setblock ~-7 ~4 ~0 obsidian []
setblock ~-7 ~5 ~0 end_rod []
fill ~7 ~0 ~0 ~7 ~3 ~0 purpur_pillar []
setblock ~7 ~4 ~0 obsidian []
setblock ~7 ~5 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-6 ~0 ~-1 ~-6 ~9 ~-1 purpur_pillar []
fill ~6 ~0 ~-1 ~6 ~9 ~-1 purpur_pillar []
setblock ~-6 ~10 ~-1 obsidian []
setblock ~6 ~10 ~-1 obsidian []
setblock ~-6 ~11 ~-1 end_rod []
setblock ~6 ~11 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~3 smoker []
setblock ~4 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 shulker_shell 6
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 17
replaceitem block ~-4 ~1 ~2 slot.container 2 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 3 dragon_breath 5
replaceitem block ~-4 ~1 ~2 slot.container 4 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 9 diamond_sword 1
replaceitem block ~-4 ~1 ~2 slot.container 10 end_rod 13
replaceitem block ~-4 ~1 ~2 slot.container 11 chorus_fruit 22
replaceitem block ~-4 ~1 ~2 slot.container 12 popped_chorus_fruit 12
replaceitem block ~-4 ~1 ~2 slot.container 13 diamond 5
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 8
loot insert ~-4 ~1 ~2 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
