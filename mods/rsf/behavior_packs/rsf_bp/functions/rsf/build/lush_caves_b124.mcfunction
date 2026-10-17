# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3196/4224 | 主题内编号: b124/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·三层重檐帝王阁楼与秘库 (lush_caves_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x15 | 地上高度 10格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 deepslate_tiles [] replace air
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 deepslate_tiles [] replace water
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 moss_block []
fill ~-4 ~-6 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~4 slot.container 0 glow_ink_sac 15
replaceitem block ~4 ~-4 ~4 slot.container 1 slime_ball 16
replaceitem block ~4 ~-4 ~4 slot.container 2 string 17
replaceitem block ~4 ~-4 ~4 slot.container 3 spider_eye 6
replaceitem block ~4 ~-4 ~4 slot.container 4 bone 11
replaceitem block ~4 ~-4 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~-4 ~4 slot.container 9 clay_ball 16
replaceitem block ~4 ~-4 ~4 slot.container 10 iron_ingot 9
replaceitem block ~4 ~-4 ~4 slot.container 11 gold_ingot 8
replaceitem block ~4 ~-4 ~4 slot.container 12 diamond 5
replaceitem block ~4 ~-4 ~4 slot.container 13 amethyst_shard 12
replaceitem block ~4 ~-4 ~4 slot.container 14 golden_apple 7
loot insert ~4 ~-4 ~4 loot "rsf/lush_caves"
loot insert ~4 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 deepslate_tiles []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-7 ~5 ~-7 ~7 ~5 ~7 deepslate_tile_slab []
fill ~-5 ~6 ~-5 ~5 ~10 ~5 moss_block []
fill ~-4 ~6 ~-4 ~4 ~9 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~6 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~10 ~-7 ~7 ~10 ~7 deepslate_tile_slab []
fill ~-5 ~11 ~-5 ~5 ~12 ~5 moss_block []
fill ~-6 ~13 ~-6 ~6 ~13 ~6 deepslate_brick_slab []
setblock ~0 ~14 ~0 emerald_block []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 polished_deepslate []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 polished_deepslate []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 polished_deepslate []
fill ~8 ~0 ~2 ~8 ~5 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~-8 ~0 ~-1 ~-8 ~7 ~1 moss_block []
setblock ~-8 ~8 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 14
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 glow_ink_sac 10
replaceitem block ~-5 ~1 ~4 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~4 slot.container 9 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 10 lantern 11
replaceitem block ~-5 ~1 ~4 slot.container 11 glow_berries 22
replaceitem block ~-5 ~1 ~4 slot.container 12 moss_block 16
replaceitem block ~-5 ~1 ~4 slot.container 13 clay_ball 17
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
