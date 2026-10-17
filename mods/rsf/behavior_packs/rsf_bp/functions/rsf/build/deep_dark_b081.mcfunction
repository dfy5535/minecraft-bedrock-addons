# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3409/4224 | 主题内编号: b081/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双高炉重工冶炼密室 (deep_dark_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 polished_deepslate [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 polished_deepslate [] replace water
fill ~-6 ~1 ~-6 ~6 ~7 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_deepslate_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 sculk []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 polished_deepslate []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 gunpowder 12
replaceitem block ~3 ~-3 ~3 slot.container 1 string 15
replaceitem block ~3 ~-3 ~3 slot.container 2 spider_eye 10
replaceitem block ~3 ~-3 ~3 slot.container 3 echo_shard 11
replaceitem block ~3 ~-3 ~3 slot.container 4 ender_pearl 10
replaceitem block ~3 ~-3 ~3 slot.container 5 bone 19
replaceitem block ~3 ~-3 ~3 slot.container 9 diamond 10
replaceitem block ~3 ~-3 ~3 slot.container 10 amethyst_shard 8
replaceitem block ~3 ~-3 ~3 slot.container 11 sculk_catalyst 3
replaceitem block ~3 ~-3 ~3 slot.container 12 sculk_sensor 4
replaceitem block ~3 ~-3 ~3 slot.container 13 recovery_compass 1
replaceitem block ~3 ~-3 ~3 slot.container 14 diamond_leggings 1
loot insert ~3 ~-3 ~3 loot "rsf/deep_dark"
loot insert ~3 ~-3 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-5 ~1 ~-5 ~5 ~5 ~5 polished_deepslate []
fill ~-4 ~1 ~-4 ~4 ~4 ~4 air []
fill ~-5 ~1 ~5 ~-6 ~8 ~5 deepslate_bricks []
setblock ~-5 ~9 ~5 soul_lantern []
fill ~-1 ~1 ~-5 ~1 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-6 ~-6 ~6 ~6 polished_deepslate_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-6 ~6 ~6 ~6 polished_deepslate_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~-5 ~7 ~5 polished_deepslate_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-5 ~5 ~7 ~5 polished_deepslate_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~4 ~7 ~5 polished_deepslate_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 deepslate_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 deepslate_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_deepslate []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_deepslate []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 polished_deepslate_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~-1 ~0 ~6 ~1 ~7 ~6 chiseled_deepslate []
setblock ~0 ~1 ~6 sculk_catalyst []
setblock ~0 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~3 slot.container 1 bone 14
replaceitem block ~4 ~1 ~3 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~3 slot.container 3 phantom_membrane 8
replaceitem block ~4 ~1 ~3 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~3 slot.container 5 string 18
replaceitem block ~4 ~1 ~3 slot.container 9 recovery_compass 1
replaceitem block ~4 ~1 ~3 slot.container 10 diamond_leggings 1
replaceitem block ~4 ~1 ~3 slot.container 11 soul_lantern 8
replaceitem block ~4 ~1 ~3 slot.container 12 enchanted_golden_apple 4
replaceitem block ~4 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~4 ~1 ~3 slot.container 14 experience_bottle 17
loot insert ~4 ~1 ~3 loot "rsf/deep_dark"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 18
replaceitem block ~-4 ~1 ~4 slot.container 1 phantom_membrane 11
replaceitem block ~-4 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~4 slot.container 3 string 13
replaceitem block ~-4 ~1 ~4 slot.container 4 spider_eye 8
replaceitem block ~-4 ~1 ~4 slot.container 5 echo_shard 9
replaceitem block ~-4 ~1 ~4 slot.container 9 recovery_compass 1
replaceitem block ~-4 ~1 ~4 slot.container 10 diamond_leggings 1
replaceitem block ~-4 ~1 ~4 slot.container 11 soul_lantern 6
replaceitem block ~-4 ~1 ~4 slot.container 12 enchanted_golden_apple 2
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~-4 ~1 ~4 slot.container 14 experience_bottle 15
loot insert ~-4 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-4 ~1 ~4 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1
