# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3366/4224 | 主题内编号: b038/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·四方凯旋衣冠冢 (deep_dark_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobbled_deepslate [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobbled_deepslate [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 deepslate_tiles []
setblock ~0 ~-6 ~0 sculk_catalyst []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 echo_shard 11
replaceitem block ~0 ~-3 ~-2 slot.container 1 ender_pearl 10
replaceitem block ~0 ~-3 ~-2 slot.container 2 bone 19
replaceitem block ~0 ~-3 ~-2 slot.container 3 rotten_flesh 12
replaceitem block ~0 ~-3 ~-2 slot.container 4 phantom_membrane 5
replaceitem block ~0 ~-3 ~-2 slot.container 5 gunpowder 12
replaceitem block ~0 ~-3 ~-2 slot.container 9 amethyst_shard 10
replaceitem block ~0 ~-3 ~-2 slot.container 10 sculk_catalyst 5
replaceitem block ~0 ~-3 ~-2 slot.container 11 sculk_sensor 6
replaceitem block ~0 ~-3 ~-2 slot.container 12 recovery_compass 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 diamond_leggings 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 soul_lantern 6
loot insert ~0 ~-3 ~-2 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~-2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~7 ~4 cobbled_deepslate []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 cobbled_deepslate []
fill ~-1 ~1 ~-3 ~1 ~6 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 deepslate_brick_wall []
setblock ~5 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 deepslate_tiles []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 deepslate_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 sculk_sensor []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 deepslate_tiles []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 chiseled_deepslate []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 chiseled_deepslate []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 deepslate_brick_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~1 ~0 ~7 ~3 ~4 ~7 chiseled_deepslate []
setblock ~2 ~1 ~7 sculk_catalyst []
setblock ~2 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 diamond_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 18
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 13
replaceitem block ~-4 ~1 ~2 slot.container 2 echo_shard 6
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 5
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 9 diamond_leggings 1
replaceitem block ~-4 ~1 ~2 slot.container 10 soul_lantern 6
replaceitem block ~-4 ~1 ~2 slot.container 11 enchanted_golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_apple 5
replaceitem block ~-4 ~1 ~2 slot.container 13 experience_bottle 15
replaceitem block ~-4 ~1 ~2 slot.container 14 diamond 8
loot insert ~-4 ~1 ~2 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
