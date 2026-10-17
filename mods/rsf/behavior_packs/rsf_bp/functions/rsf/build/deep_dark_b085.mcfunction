# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3413/4224 | 主题内编号: b085/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双子烟囱砖石窑厂 (deep_dark_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 polished_deepslate [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 polished_deepslate [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 polished_deepslate_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 sculk []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 polished_deepslate []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~2 anvil []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 ender_pearl 10
replaceitem block ~4 ~-2 ~2 slot.container 1 bone 19
replaceitem block ~4 ~-2 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~4 ~-2 ~2 slot.container 3 phantom_membrane 5
replaceitem block ~4 ~-2 ~2 slot.container 4 gunpowder 12
replaceitem block ~4 ~-2 ~2 slot.container 5 string 15
replaceitem block ~4 ~-2 ~2 slot.container 9 sculk_catalyst 5
replaceitem block ~4 ~-2 ~2 slot.container 10 sculk_sensor 6
replaceitem block ~4 ~-2 ~2 slot.container 11 recovery_compass 1
replaceitem block ~4 ~-2 ~2 slot.container 12 diamond_leggings 1
replaceitem block ~4 ~-2 ~2 slot.container 13 soul_lantern 6
replaceitem block ~4 ~-2 ~2 slot.container 14 enchanted_golden_apple 2
loot insert ~4 ~-2 ~2 loot "rsf/deep_dark"
loot insert ~4 ~-2 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 polished_deepslate []
fill ~2 ~1 ~-4 ~6 ~8 ~4 polished_deepslate []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 deepslate_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 deepslate_bricks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 polished_deepslate []
fill ~0 ~13 ~0 ~0 ~16 ~0 diamond_block []
setblock ~0 ~17 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 deepslate_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 chiseled_deepslate []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 chiseled_deepslate []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 polished_deepslate_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~0 ~0 ~6 ~2 ~6 ~6 chiseled_deepslate []
setblock ~1 ~1 ~6 sculk_catalyst []
setblock ~1 ~7 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~2 slot.container 1 string 18
replaceitem block ~5 ~1 ~2 slot.container 2 spider_eye 13
replaceitem block ~5 ~1 ~2 slot.container 3 echo_shard 6
replaceitem block ~5 ~1 ~2 slot.container 4 ender_pearl 5
replaceitem block ~5 ~1 ~2 slot.container 5 bone 14
replaceitem block ~5 ~1 ~2 slot.container 9 soul_lantern 10
replaceitem block ~5 ~1 ~2 slot.container 10 enchanted_golden_apple 6
replaceitem block ~5 ~1 ~2 slot.container 11 golden_apple 9
replaceitem block ~5 ~1 ~2 slot.container 12 experience_bottle 12
replaceitem block ~5 ~1 ~2 slot.container 13 diamond 5
replaceitem block ~5 ~1 ~2 slot.container 14 amethyst_shard 10
loot insert ~5 ~1 ~2 loot "rsf/deep_dark"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 spider_eye 8
replaceitem block ~-5 ~1 ~3 slot.container 1 echo_shard 9
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 17
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 18
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 11
replaceitem block ~-5 ~1 ~3 slot.container 9 soul_lantern 8
replaceitem block ~-5 ~1 ~3 slot.container 10 enchanted_golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 12 experience_bottle 17
replaceitem block ~-5 ~1 ~3 slot.container 13 diamond 10
replaceitem block ~-5 ~1 ~3 slot.container 14 amethyst_shard 8
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~3 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-2 ~0
