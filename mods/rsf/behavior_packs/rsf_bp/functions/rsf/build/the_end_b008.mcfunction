# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4104/4224 | 主题内编号: b008/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·凯旋双拱圣物祭坛 (the_end_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 end_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 end_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 purpur_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 purpur_block []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 obsidian []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 end_bricks []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 obsidian []
fill ~-6 ~7 ~-4 ~6 ~7 ~4 cobblestone_wall []
fill ~-5 ~7 ~-3 ~5 ~7 ~3 air []
setblock ~-6 ~7 ~-4 purpur_pillar []
setblock ~-6 ~8 ~-4 end_rod []
setblock ~-6 ~7 ~4 purpur_pillar []
setblock ~-6 ~8 ~4 end_rod []
setblock ~6 ~7 ~-4 purpur_pillar []
setblock ~6 ~8 ~-4 end_rod []
setblock ~6 ~7 ~4 purpur_pillar []
setblock ~6 ~8 ~4 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~3 ~-6 purpur_pillar []
setblock ~-9 ~4 ~-6 end_rod []
fill ~-9 ~0 ~6 ~-9 ~3 ~6 purpur_pillar []
setblock ~-9 ~4 ~6 end_rod []
fill ~9 ~0 ~-6 ~9 ~3 ~-6 purpur_pillar []
setblock ~9 ~4 ~-6 end_rod []
fill ~9 ~0 ~6 ~9 ~3 ~6 purpur_pillar []
setblock ~9 ~4 ~6 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~-1 ~-7 ~7 ~-1 purpur_pillar []
fill ~7 ~0 ~-1 ~7 ~7 ~-1 purpur_pillar []
setblock ~-7 ~8 ~-1 obsidian []
setblock ~7 ~8 ~-1 obsidian []
setblock ~-7 ~9 ~-1 end_rod []
setblock ~7 ~9 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 end_rod []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 end_rod []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 shulker_shell 6
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 17
replaceitem block ~-5 ~1 ~2 slot.container 2 phantom_membrane 8
replaceitem block ~-5 ~1 ~2 slot.container 3 dragon_breath 5
replaceitem block ~-5 ~1 ~2 slot.container 4 blaze_rod 8
replaceitem block ~-5 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-5 ~1 ~2 slot.container 9 diamond 6
replaceitem block ~-5 ~1 ~2 slot.container 10 emerald 9
replaceitem block ~-5 ~1 ~2 slot.container 11 gold_ingot 14
replaceitem block ~-5 ~1 ~2 slot.container 12 iron_ingot 15
replaceitem block ~-5 ~1 ~2 slot.container 13 golden_apple 9
replaceitem block ~-5 ~1 ~2 slot.container 14 elytra 1
loot insert ~-5 ~1 ~2 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
