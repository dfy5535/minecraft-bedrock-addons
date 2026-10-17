# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3396/4224 | 主题内编号: b068/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·断裂凯旋高架拱廊 (deep_dark_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 deepslate_tiles [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 deepslate_tiles [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 sculk []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~6 ~4 deepslate_tiles []
fill ~-6 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 deepslate_tile_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-7 ~5 ~-1 ~-7 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 sculk []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-2 ~0 ~7 ~0 ~4 ~7 chiseled_deepslate []
setblock ~-1 ~1 ~7 sculk_catalyst []
setblock ~-1 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 phantom_membrane 8
replaceitem block ~-6 ~1 ~2 slot.container 1 gunpowder 15
replaceitem block ~-6 ~1 ~2 slot.container 2 string 18
replaceitem block ~-6 ~1 ~2 slot.container 3 spider_eye 13
replaceitem block ~-6 ~1 ~2 slot.container 4 echo_shard 6
replaceitem block ~-6 ~1 ~2 slot.container 5 ender_pearl 5
replaceitem block ~-6 ~1 ~2 slot.container 9 diamond_leggings 1
replaceitem block ~-6 ~1 ~2 slot.container 10 soul_lantern 8
replaceitem block ~-6 ~1 ~2 slot.container 11 enchanted_golden_apple 4
replaceitem block ~-6 ~1 ~2 slot.container 12 golden_apple 7
replaceitem block ~-6 ~1 ~2 slot.container 13 experience_bottle 17
replaceitem block ~-6 ~1 ~2 slot.container 14 diamond 10
loot insert ~-6 ~1 ~2 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
