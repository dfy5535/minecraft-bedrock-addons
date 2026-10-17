# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3379/4224 | 主题内编号: b051/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·带哨塔围栏探险营地 (deep_dark_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 deepslate_tiles []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 deepslate_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 deepslate_tiles []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 deepslate_brick_wall []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 chiseled_deepslate []
setblock ~-6 ~8 ~-5 soul_lantern []
setblock ~-6 ~7 ~5 chiseled_deepslate []
setblock ~-6 ~8 ~5 soul_lantern []
setblock ~6 ~7 ~-5 chiseled_deepslate []
setblock ~6 ~8 ~-5 soul_lantern []
setblock ~6 ~7 ~5 chiseled_deepslate []
setblock ~6 ~8 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 deepslate_tiles []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-4 ~0 ~6 ~-2 ~7 ~6 chiseled_deepslate []
setblock ~-3 ~1 ~6 sculk_catalyst []
setblock ~-3 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~3 slot.container 3 string 18
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 13
replaceitem block ~5 ~1 ~3 slot.container 5 echo_shard 6
replaceitem block ~5 ~1 ~3 slot.container 9 recovery_compass 1
replaceitem block ~5 ~1 ~3 slot.container 10 diamond_leggings 1
replaceitem block ~5 ~1 ~3 slot.container 11 soul_lantern 6
replaceitem block ~5 ~1 ~3 slot.container 12 enchanted_golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 13 golden_apple 5
replaceitem block ~5 ~1 ~3 slot.container 14 experience_bottle 15
loot insert ~5 ~1 ~3 loot "rsf/deep_dark"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 1 string 13
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 3 echo_shard 9
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 9 recovery_compass 1
replaceitem block ~-5 ~1 ~4 slot.container 10 diamond_leggings 1
replaceitem block ~-5 ~1 ~4 slot.container 11 soul_lantern 11
replaceitem block ~-5 ~1 ~4 slot.container 12 enchanted_golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~-5 ~1 ~4 slot.container 14 experience_bottle 13
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~4 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1
