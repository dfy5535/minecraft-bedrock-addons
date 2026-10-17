# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3126/4224 | 主题内编号: b054/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·切石与伐木工匠棚屋 (lush_caves_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[portal_chamber] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 deepslate_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 clay []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_tiles []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 gold_block []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 ender_pearl 6
replaceitem block ~4 ~-2 ~0 slot.container 1 glow_ink_sac 15
replaceitem block ~4 ~-2 ~0 slot.container 2 slime_ball 16
replaceitem block ~4 ~-2 ~0 slot.container 3 string 17
replaceitem block ~4 ~-2 ~0 slot.container 4 spider_eye 6
replaceitem block ~4 ~-2 ~0 slot.container 5 bone 11
replaceitem block ~4 ~-2 ~0 slot.container 9 iron_ingot 12
replaceitem block ~4 ~-2 ~0 slot.container 10 gold_ingot 11
replaceitem block ~4 ~-2 ~0 slot.container 11 diamond 8
replaceitem block ~4 ~-2 ~0 slot.container 12 amethyst_shard 8
replaceitem block ~4 ~-2 ~0 slot.container 13 golden_apple 3
replaceitem block ~4 ~-2 ~0 slot.container 14 water_bucket 1
loot insert ~4 ~-2 ~0 loot "rsf/lush_caves"
loot insert ~4 ~-2 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~7 ~4 deepslate_bricks []
fill ~2 ~1 ~-4 ~6 ~7 ~4 deepslate_bricks []
fill ~-5 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 moss_block []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-5 ~-7 ~7 ~5 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-5 ~7 ~7 ~5 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~-6 ~8 ~4 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-4 ~6 ~8 ~4 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-4 ~5 ~8 ~4 deepslate_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 deepslate_tiles []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-8 ~0 ~0 ~-8 ~7 ~2 moss_block []
setblock ~-8 ~8 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 gunpowder 14
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~2 slot.container 2 glow_ink_sac 10
replaceitem block ~-5 ~1 ~2 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~2 slot.container 4 string 12
replaceitem block ~-5 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~-5 ~1 ~2 slot.container 10 lantern 11
replaceitem block ~-5 ~1 ~2 slot.container 11 glow_berries 22
replaceitem block ~-5 ~1 ~2 slot.container 12 moss_block 16
replaceitem block ~-5 ~1 ~2 slot.container 13 clay_ball 17
replaceitem block ~-5 ~1 ~2 slot.container 14 iron_ingot 10
loot insert ~-5 ~1 ~2 loot "rsf/lush_caves"
summon axolotl ~0 ~1 ~-1
summon glow_squid ~-1 ~1 ~1
