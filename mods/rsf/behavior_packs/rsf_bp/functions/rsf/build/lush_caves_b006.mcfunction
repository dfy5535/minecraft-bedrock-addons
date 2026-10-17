# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3078/4224 | 主题内编号: b006/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·重檐飞角四方神龛 (lush_caves_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 clay []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 mossy_stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 string 17
replaceitem block ~3 ~-3 ~2 slot.container 1 spider_eye 6
replaceitem block ~3 ~-3 ~2 slot.container 2 bone 11
replaceitem block ~3 ~-3 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~-3 ~2 slot.container 4 gunpowder 11
replaceitem block ~3 ~-3 ~2 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 9 water_bucket 1
replaceitem block ~3 ~-3 ~2 slot.container 10 lantern 8
replaceitem block ~3 ~-3 ~2 slot.container 11 glow_berries 19
replaceitem block ~3 ~-3 ~2 slot.container 12 moss_block 20
replaceitem block ~3 ~-3 ~2 slot.container 13 clay_ball 21
replaceitem block ~3 ~-3 ~2 slot.container 14 iron_ingot 14
loot insert ~3 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~3 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 polished_deepslate []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 polished_deepslate []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 polished_deepslate []
fill ~5 ~1 ~4 ~5 ~8 ~4 polished_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 deepslate_brick_wall []
setblock ~5 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 deepslate_brick_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 mossy_stone_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 stone_brick_slab []
setblock ~0 ~12 ~0 chiseled_deepslate []
setblock ~0 ~13 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 polished_deepslate []
fill ~-5 ~0 ~2 ~-5 ~8 ~2 polished_deepslate []
fill ~5 ~0 ~-2 ~5 ~8 ~-2 polished_deepslate []
fill ~5 ~0 ~2 ~5 ~8 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~0 ~0 ~-7 ~4 ~2 moss_block []
setblock ~-7 ~5 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~2 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 14
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 glow_ink_sac 10
replaceitem block ~-4 ~1 ~2 slot.container 3 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 4 string 12
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 9 gold_ingot 11
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 8
replaceitem block ~-4 ~1 ~2 slot.container 11 amethyst_shard 8
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_apple 3
replaceitem block ~-4 ~1 ~2 slot.container 13 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 9
loot insert ~-4 ~1 ~2 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
