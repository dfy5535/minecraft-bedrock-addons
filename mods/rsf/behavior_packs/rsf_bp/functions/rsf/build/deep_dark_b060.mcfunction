# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3388/4224 | 主题内编号: b060/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·圆形穹顶万骨祠堂 (deep_dark_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_lantern []
setblock ~4 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 bone 19
replaceitem block ~0 ~-4 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~0 ~-4 ~3 slot.container 2 phantom_membrane 5
replaceitem block ~0 ~-4 ~3 slot.container 3 gunpowder 12
replaceitem block ~0 ~-4 ~3 slot.container 4 string 15
replaceitem block ~0 ~-4 ~3 slot.container 5 spider_eye 10
replaceitem block ~0 ~-4 ~3 slot.container 9 sculk_sensor 8
replaceitem block ~0 ~-4 ~3 slot.container 10 recovery_compass 1
replaceitem block ~0 ~-4 ~3 slot.container 11 diamond_leggings 1
replaceitem block ~0 ~-4 ~3 slot.container 12 soul_lantern 8
replaceitem block ~0 ~-4 ~3 slot.container 13 enchanted_golden_apple 4
replaceitem block ~0 ~-4 ~3 slot.container 14 golden_apple 7
loot insert ~0 ~-4 ~3 loot "rsf/deep_dark"
loot insert ~0 ~-4 ~3 loot "chests/ancient_city"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 bone 17
replaceitem block ~0 ~-4 ~-3 slot.container 1 rotten_flesh 18
replaceitem block ~0 ~-4 ~-3 slot.container 2 phantom_membrane 11
replaceitem block ~0 ~-4 ~-3 slot.container 3 gunpowder 10
replaceitem block ~0 ~-4 ~-3 slot.container 4 string 13
replaceitem block ~0 ~-4 ~-3 slot.container 5 spider_eye 8
replaceitem block ~0 ~-4 ~-3 slot.container 9 sculk_sensor 7
replaceitem block ~0 ~-4 ~-3 slot.container 10 recovery_compass 1
replaceitem block ~0 ~-4 ~-3 slot.container 11 diamond_leggings 1
replaceitem block ~0 ~-4 ~-3 slot.container 12 soul_lantern 7
replaceitem block ~0 ~-4 ~-3 slot.container 13 enchanted_golden_apple 3
replaceitem block ~0 ~-4 ~-3 slot.container 14 golden_apple 6
loot insert ~0 ~-4 ~-3 loot "rsf/deep_dark"
loot insert ~0 ~-4 ~-3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 sculk []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 polished_deepslate []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 polished_deepslate []
fill ~-4 ~1 ~-5 ~-4 ~5 ~-5 polished_deepslate []
fill ~-4 ~1 ~5 ~-4 ~5 ~5 polished_deepslate []
fill ~-2 ~1 ~-5 ~-2 ~5 ~-5 polished_deepslate []
fill ~-2 ~1 ~5 ~-2 ~5 ~5 polished_deepslate []
fill ~0 ~1 ~-5 ~0 ~5 ~-5 polished_deepslate []
fill ~0 ~1 ~5 ~0 ~5 ~5 polished_deepslate []
fill ~2 ~1 ~-5 ~2 ~5 ~-5 polished_deepslate []
fill ~2 ~1 ~5 ~2 ~5 ~5 polished_deepslate []
fill ~4 ~1 ~-5 ~4 ~5 ~-5 polished_deepslate []
fill ~4 ~1 ~5 ~4 ~5 ~5 polished_deepslate []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 polished_deepslate []
fill ~6 ~1 ~5 ~6 ~5 ~5 polished_deepslate []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 polished_deepslate []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 polished_deepslate []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 polished_deepslate []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 polished_deepslate []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 polished_deepslate []
fill ~6 ~1 ~1 ~6 ~5 ~1 polished_deepslate []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 polished_deepslate []
fill ~6 ~1 ~3 ~6 ~5 ~3 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 sculk []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 glass []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 polished_deepslate []
setblock ~0 ~4 ~-7 diamond_block []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 polished_deepslate []
setblock ~0 ~4 ~7 diamond_block []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 polished_deepslate []
setblock ~-8 ~4 ~0 diamond_block []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 polished_deepslate []
setblock ~8 ~4 ~0 diamond_block []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-1 ~0 ~6 ~1 ~6 ~6 chiseled_deepslate []
setblock ~0 ~1 ~6 sculk_catalyst []
setblock ~0 ~7 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 2 string 18
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 13
replaceitem block ~-5 ~1 ~3 slot.container 4 echo_shard 6
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 5
replaceitem block ~-5 ~1 ~3 slot.container 9 amethyst_shard 8
replaceitem block ~-5 ~1 ~3 slot.container 10 sculk_catalyst 3
replaceitem block ~-5 ~1 ~3 slot.container 11 sculk_sensor 4
replaceitem block ~-5 ~1 ~3 slot.container 12 recovery_compass 1
replaceitem block ~-5 ~1 ~3 slot.container 13 diamond_leggings 1
replaceitem block ~-5 ~1 ~3 slot.container 14 soul_lantern 11
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
