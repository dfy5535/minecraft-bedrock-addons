# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3130/4224 | 主题内编号: b058/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·十字拱顶家族陵墓 (lush_caves_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 clay []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 shroomlight []
setblock ~4 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 glow_ink_sac 15
replaceitem block ~0 ~-4 ~3 slot.container 1 slime_ball 16
replaceitem block ~0 ~-4 ~3 slot.container 2 string 17
replaceitem block ~0 ~-4 ~3 slot.container 3 spider_eye 6
replaceitem block ~0 ~-4 ~3 slot.container 4 bone 11
replaceitem block ~0 ~-4 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~0 ~-4 ~3 slot.container 9 clay_ball 16
replaceitem block ~0 ~-4 ~3 slot.container 10 iron_ingot 9
replaceitem block ~0 ~-4 ~3 slot.container 11 gold_ingot 8
replaceitem block ~0 ~-4 ~3 slot.container 12 diamond 5
replaceitem block ~0 ~-4 ~3 slot.container 13 amethyst_shard 12
replaceitem block ~0 ~-4 ~3 slot.container 14 golden_apple 7
loot insert ~0 ~-4 ~3 loot "rsf/lush_caves"
loot insert ~0 ~-4 ~3 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 glow_ink_sac 13
replaceitem block ~0 ~-4 ~-3 slot.container 1 slime_ball 14
replaceitem block ~0 ~-4 ~-3 slot.container 2 string 15
replaceitem block ~0 ~-4 ~-3 slot.container 3 spider_eye 12
replaceitem block ~0 ~-4 ~-3 slot.container 4 bone 17
replaceitem block ~0 ~-4 ~-3 slot.container 5 rotten_flesh 10
replaceitem block ~0 ~-4 ~-3 slot.container 9 clay_ball 22
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_ingot 8
replaceitem block ~0 ~-4 ~-3 slot.container 11 gold_ingot 7
replaceitem block ~0 ~-4 ~-3 slot.container 12 diamond 4
replaceitem block ~0 ~-4 ~-3 slot.container 13 amethyst_shard 11
replaceitem block ~0 ~-4 ~-3 slot.container 14 golden_apple 6
loot insert ~0 ~-4 ~-3 loot "rsf/lush_caves"
loot insert ~0 ~-4 ~-3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 deepslate_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 deepslate_bricks []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 deepslate_brick_wall []
setblock ~6 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 deepslate_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 deepslate_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~0 ~-8 ~6 ~2 moss_block []
setblock ~-8 ~7 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_deepslate []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 12
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 9 glow_berries 17
replaceitem block ~-5 ~1 ~3 slot.container 10 moss_block 18
replaceitem block ~-5 ~1 ~3 slot.container 11 clay_ball 19
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 13 gold_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 8
loot insert ~-5 ~1 ~3 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
