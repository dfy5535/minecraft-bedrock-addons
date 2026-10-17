# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3124/4224 | 主题内编号: b052/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·重檐行商旅店客栈 (lush_caves_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 deepslate_tiles [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 deepslate_tiles [] replace water
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 moss_block []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 glow_ink_sac 15
replaceitem block ~4 ~-3 ~4 slot.container 1 slime_ball 16
replaceitem block ~4 ~-3 ~4 slot.container 2 string 17
replaceitem block ~4 ~-3 ~4 slot.container 3 spider_eye 6
replaceitem block ~4 ~-3 ~4 slot.container 4 bone 11
replaceitem block ~4 ~-3 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~-3 ~4 slot.container 9 amethyst_shard 13
replaceitem block ~4 ~-3 ~4 slot.container 10 golden_apple 8
replaceitem block ~4 ~-3 ~4 slot.container 11 water_bucket 1
replaceitem block ~4 ~-3 ~4 slot.container 12 lantern 7
replaceitem block ~4 ~-3 ~4 slot.container 13 glow_berries 18
replaceitem block ~4 ~-3 ~4 slot.container 14 moss_block 19
loot insert ~4 ~-3 ~4 loot "rsf/lush_caves"
loot insert ~4 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~3 ~6 deepslate_tiles []
fill ~-5 ~1 ~-5 ~5 ~2 ~5 air []
fill ~-7 ~3 ~-7 ~7 ~3 ~7 deepslate_tile_slab []
fill ~-5 ~4 ~-5 ~5 ~7 ~5 moss_block []
fill ~-4 ~4 ~-4 ~4 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-7 ~7 ~7 ~7 deepslate_tile_slab []
fill ~-5 ~8 ~-5 ~5 ~9 ~5 moss_block []
fill ~-6 ~10 ~-6 ~6 ~10 ~6 deepslate_brick_slab []
setblock ~0 ~11 ~0 emerald_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 moss_block []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 polished_deepslate []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 polished_deepslate []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 deepslate_tile_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~-8 ~0 ~-1 ~-8 ~5 ~1 moss_block []
setblock ~-8 ~6 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_deepslate []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 14
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 glow_ink_sac 10
replaceitem block ~-5 ~1 ~4 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~4 slot.container 9 clay_ball 18
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 12 diamond 7
replaceitem block ~-5 ~1 ~4 slot.container 13 amethyst_shard 14
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
