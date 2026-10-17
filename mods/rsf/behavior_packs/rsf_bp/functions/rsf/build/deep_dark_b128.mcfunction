# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3456/4224 | 主题内编号: b128/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·U型紫禁朝堂大殿与地底金库 (deep_dark_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 deepslate_tiles [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 deepslate_tiles [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 phantom_membrane 5
replaceitem block ~5 ~-4 ~4 slot.container 1 gunpowder 12
replaceitem block ~5 ~-4 ~4 slot.container 2 string 15
replaceitem block ~5 ~-4 ~4 slot.container 3 spider_eye 10
replaceitem block ~5 ~-4 ~4 slot.container 4 echo_shard 11
replaceitem block ~5 ~-4 ~4 slot.container 5 ender_pearl 10
replaceitem block ~5 ~-4 ~4 slot.container 9 amethyst_shard 12
replaceitem block ~5 ~-4 ~4 slot.container 10 sculk_catalyst 7
replaceitem block ~5 ~-4 ~4 slot.container 11 sculk_sensor 8
replaceitem block ~5 ~-4 ~4 slot.container 12 recovery_compass 1
replaceitem block ~5 ~-4 ~4 slot.container 13 diamond_leggings 1
replaceitem block ~5 ~-4 ~4 slot.container 14 soul_lantern 8
loot insert ~5 ~-4 ~4 loot "rsf/deep_dark"
loot insert ~5 ~-4 ~4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 deepslate_tiles []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 sculk []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~7 ~-7 ~8 ~7 ~7 deepslate_tile_slab []
fill ~-6 ~8 ~-5 ~6 ~9 ~5 polished_deepslate []
fill ~-7 ~10 ~-6 ~7 ~10 ~6 polished_deepslate_slab []
setblock ~0 ~11 ~0 amethyst_block []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 deepslate_tile_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~2 ~0 ~9 ~4 ~4 ~9 chiseled_deepslate []
setblock ~3 ~1 ~9 sculk_catalyst []
setblock ~3 ~5 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 echo_shard 6
replaceitem block ~-6 ~1 ~4 slot.container 1 ender_pearl 5
replaceitem block ~-6 ~1 ~4 slot.container 2 bone 14
replaceitem block ~-6 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~4 slot.container 4 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-6 ~1 ~4 slot.container 9 diamond_leggings 1
replaceitem block ~-6 ~1 ~4 slot.container 10 soul_lantern 12
replaceitem block ~-6 ~1 ~4 slot.container 11 enchanted_golden_apple 1
replaceitem block ~-6 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~-6 ~1 ~4 slot.container 13 experience_bottle 14
replaceitem block ~-6 ~1 ~4 slot.container 14 diamond 7
loot insert ~-6 ~1 ~4 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
