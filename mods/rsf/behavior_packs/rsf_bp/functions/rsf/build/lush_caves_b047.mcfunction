# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3119/4224 | 主题内编号: b047/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·深渊跨桥决斗长台 (lush_caves_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_tiles []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 moss_block []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 slime_ball 16
replaceitem block ~-5 ~-3 ~2 slot.container 1 string 17
replaceitem block ~-5 ~-3 ~2 slot.container 2 spider_eye 6
replaceitem block ~-5 ~-3 ~2 slot.container 3 bone 11
replaceitem block ~-5 ~-3 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~-3 ~2 slot.container 5 gunpowder 11
replaceitem block ~-5 ~-3 ~2 slot.container 9 iron_ingot 13
replaceitem block ~-5 ~-3 ~2 slot.container 10 gold_ingot 12
replaceitem block ~-5 ~-3 ~2 slot.container 11 diamond 2
replaceitem block ~-5 ~-3 ~2 slot.container 12 amethyst_shard 9
replaceitem block ~-5 ~-3 ~2 slot.container 13 golden_apple 4
replaceitem block ~-5 ~-3 ~2 slot.container 14 water_bucket 1
loot insert ~-5 ~-3 ~2 loot "rsf/lush_caves"
loot insert ~-5 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~6 ~4 mossy_stone_bricks []
fill ~-6 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-4 ~-7 ~8 ~-4 oak_log []
setblock ~-7 ~9 ~-4 lantern []
fill ~-7 ~6 ~4 ~-7 ~8 ~4 oak_log []
setblock ~-7 ~9 ~4 lantern []
fill ~7 ~6 ~-4 ~7 ~8 ~-4 oak_log []
setblock ~7 ~9 ~-4 lantern []
fill ~7 ~6 ~4 ~7 ~8 ~4 oak_log []
setblock ~7 ~9 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 oak_log []
setblock ~0 ~4 ~-7 emerald_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 oak_log []
setblock ~0 ~4 ~7 emerald_block []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 oak_log []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 oak_log []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x5x4) ---
fill ~-9 ~0 ~-3 ~-9 ~5 ~-1 moss_block []
setblock ~-9 ~6 ~-2 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~6 ~1 ~2 slot.container 1 glow_ink_sac 10
replaceitem block ~6 ~1 ~2 slot.container 2 slime_ball 11
replaceitem block ~6 ~1 ~2 slot.container 3 string 12
replaceitem block ~6 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~6 ~1 ~2 slot.container 5 bone 14
replaceitem block ~6 ~1 ~2 slot.container 9 golden_apple 6
replaceitem block ~6 ~1 ~2 slot.container 10 water_bucket 1
replaceitem block ~6 ~1 ~2 slot.container 11 lantern 12
replaceitem block ~6 ~1 ~2 slot.container 12 glow_berries 16
replaceitem block ~6 ~1 ~2 slot.container 13 moss_block 17
replaceitem block ~6 ~1 ~2 slot.container 14 clay_ball 18
loot insert ~6 ~1 ~2 loot "rsf/lush_caves"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 slime_ball 14
replaceitem block ~-6 ~1 ~3 slot.container 1 string 15
replaceitem block ~-6 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-6 ~1 ~3 slot.container 3 bone 17
replaceitem block ~-6 ~1 ~3 slot.container 4 rotten_flesh 10
replaceitem block ~-6 ~1 ~3 slot.container 5 gunpowder 9
replaceitem block ~-6 ~1 ~3 slot.container 9 golden_apple 4
replaceitem block ~-6 ~1 ~3 slot.container 10 water_bucket 1
replaceitem block ~-6 ~1 ~3 slot.container 11 lantern 10
replaceitem block ~-6 ~1 ~3 slot.container 12 glow_berries 21
replaceitem block ~-6 ~1 ~3 slot.container 13 moss_block 22
replaceitem block ~-6 ~1 ~3 slot.container 14 clay_ball 16
loot insert ~-6 ~1 ~3 loot "rsf/lush_caves"
loot insert ~-6 ~1 ~3 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~-3 ~0
