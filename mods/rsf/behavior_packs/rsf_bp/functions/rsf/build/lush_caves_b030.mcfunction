# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3102/4224 | 主题内编号: b030/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·双坡顶驻军卫戍塔 (lush_caves_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 clay []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~2 shroomlight []
setblock ~3 ~-5 ~-2 shroomlight []
setblock ~3 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~2 slot.container 0 glow_ink_sac 15
replaceitem block ~3 ~-3 ~2 slot.container 1 slime_ball 16
replaceitem block ~3 ~-3 ~2 slot.container 2 string 17
replaceitem block ~3 ~-3 ~2 slot.container 3 spider_eye 6
replaceitem block ~3 ~-3 ~2 slot.container 4 bone 11
replaceitem block ~3 ~-3 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~-3 ~2 slot.container 9 water_bucket 1
replaceitem block ~3 ~-3 ~2 slot.container 10 lantern 10
replaceitem block ~3 ~-3 ~2 slot.container 11 glow_berries 21
replaceitem block ~3 ~-3 ~2 slot.container 12 moss_block 22
replaceitem block ~3 ~-3 ~2 slot.container 13 clay_ball 16
replaceitem block ~3 ~-3 ~2 slot.container 14 iron_ingot 9
loot insert ~3 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~3 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-4 ~0 ~9 ~4 deepslate_bricks []
fill ~-5 ~1 ~0 ~5 ~8 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~-1 ~8 ~3 air []
fill ~-1 ~1 ~1 ~4 ~7 ~3 air []
fill ~-2 ~1 ~-4 ~-2 ~2 ~-4 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~10 ~-5 ~-6 ~10 ~5 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~10 ~-5 ~6 ~10 ~5 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~11 ~-4 ~-5 ~11 ~4 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~5 ~11 ~-4 ~5 ~11 ~4 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~11 ~-4 ~4 ~11 ~4 deepslate_brick_slab []
fill ~0 ~12 ~-5 ~0 ~12 ~5 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~11 ~2 mossy_stone_bricks []
fill ~6 ~1 ~-1 ~7 ~10 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~12 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~0 ~-7 ~3 ~2 moss_block []
setblock ~-7 ~4 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 smoker []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 14
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 glow_ink_sac 10
replaceitem block ~-4 ~1 ~2 slot.container 3 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 4 string 12
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 9 amethyst_shard 9
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 10
replaceitem block ~-4 ~1 ~2 slot.container 13 glow_berries 21
replaceitem block ~-4 ~1 ~2 slot.container 14 moss_block 22
loot insert ~-4 ~1 ~2 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
