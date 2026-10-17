# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3360/4224 | 主题内编号: b032/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·断顶残垣古哨塔 (deep_dark_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 deepslate_tiles [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 deepslate_tiles [] replace water
fill ~-5 ~1 ~-5 ~5 ~10 ~5 air []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 deepslate_bricks []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 polished_deepslate []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 sculk []
setblock ~0 ~-6 ~0 diamond_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 bone 19
replaceitem block ~0 ~-3 ~-2 slot.container 1 rotten_flesh 12
replaceitem block ~0 ~-3 ~-2 slot.container 2 phantom_membrane 5
replaceitem block ~0 ~-3 ~-2 slot.container 3 gunpowder 12
replaceitem block ~0 ~-3 ~-2 slot.container 4 string 15
replaceitem block ~0 ~-3 ~-2 slot.container 5 spider_eye 10
replaceitem block ~0 ~-3 ~-2 slot.container 9 sculk_sensor 5
replaceitem block ~0 ~-3 ~-2 slot.container 10 recovery_compass 1
replaceitem block ~0 ~-3 ~-2 slot.container 11 diamond_leggings 1
replaceitem block ~0 ~-3 ~-2 slot.container 12 soul_lantern 12
replaceitem block ~0 ~-3 ~-2 slot.container 13 enchanted_golden_apple 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 golden_apple 4
loot insert ~0 ~-3 ~-2 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~-2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~8 ~4 deepslate_tiles []
fill ~-3 ~1 ~-3 ~3 ~7 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~8 ~-4 polished_deepslate []
fill ~-4 ~1 ~4 ~-4 ~8 ~4 polished_deepslate []
fill ~4 ~1 ~-4 ~4 ~8 ~-4 polished_deepslate []
fill ~4 ~1 ~4 ~4 ~8 ~4 polished_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 deepslate_tile_wall []
setblock ~4 ~2 ~0 deepslate_tile_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~8 ~-4 ~4 ~8 ~4 deepslate_tile_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-4 ~7 ~-1 ~-4 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 polished_deepslate []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 polished_deepslate []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 polished_deepslate []
fill ~5 ~0 ~2 ~5 ~7 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 5x7x6) ---
fill ~-2 ~0 ~7 ~0 ~8 ~7 chiseled_deepslate []
setblock ~-1 ~1 ~7 sculk_catalyst []
setblock ~-1 ~9 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 echo_shard 6
replaceitem block ~-3 ~1 ~2 slot.container 1 ender_pearl 5
replaceitem block ~-3 ~1 ~2 slot.container 2 bone 14
replaceitem block ~-3 ~1 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~-3 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-3 ~1 ~2 slot.container 5 gunpowder 15
replaceitem block ~-3 ~1 ~2 slot.container 9 enchanted_golden_apple 1
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_apple 4
replaceitem block ~-3 ~1 ~2 slot.container 11 experience_bottle 14
replaceitem block ~-3 ~1 ~2 slot.container 12 diamond 7
replaceitem block ~-3 ~1 ~2 slot.container 13 amethyst_shard 12
replaceitem block ~-3 ~1 ~2 slot.container 14 sculk_catalyst 7
loot insert ~-3 ~1 ~2 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
