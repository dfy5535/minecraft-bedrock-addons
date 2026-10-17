# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3082/4224 | 主题内编号: b010/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·十字交叉深层地牢 (lush_caves_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 6格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~7 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 clay []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 shroomlight []
setblock ~5 ~-7 ~0 shroomlight []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 glow_ink_sac 15
replaceitem block ~0 ~-5 ~4 slot.container 1 slime_ball 16
replaceitem block ~0 ~-5 ~4 slot.container 2 string 17
replaceitem block ~0 ~-5 ~4 slot.container 3 spider_eye 6
replaceitem block ~0 ~-5 ~4 slot.container 4 bone 11
replaceitem block ~0 ~-5 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~0 ~-5 ~4 slot.container 9 water_bucket 1
replaceitem block ~0 ~-5 ~4 slot.container 10 lantern 8
replaceitem block ~0 ~-5 ~4 slot.container 11 glow_berries 19
replaceitem block ~0 ~-5 ~4 slot.container 12 moss_block 20
replaceitem block ~0 ~-5 ~4 slot.container 13 clay_ball 21
replaceitem block ~0 ~-5 ~4 slot.container 14 iron_ingot 14
loot insert ~0 ~-5 ~4 loot "rsf/lush_caves"
loot insert ~0 ~-5 ~4 loot "chests/abandoned_mineshaft"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 glow_ink_sac 13
replaceitem block ~0 ~-5 ~-4 slot.container 1 slime_ball 14
replaceitem block ~0 ~-5 ~-4 slot.container 2 string 15
replaceitem block ~0 ~-5 ~-4 slot.container 3 spider_eye 12
replaceitem block ~0 ~-5 ~-4 slot.container 4 bone 17
replaceitem block ~0 ~-5 ~-4 slot.container 5 rotten_flesh 10
replaceitem block ~0 ~-5 ~-4 slot.container 9 water_bucket 1
replaceitem block ~0 ~-5 ~-4 slot.container 10 lantern 7
replaceitem block ~0 ~-5 ~-4 slot.container 11 glow_berries 18
replaceitem block ~0 ~-5 ~-4 slot.container 12 moss_block 19
replaceitem block ~0 ~-5 ~-4 slot.container 13 clay_ball 20
replaceitem block ~0 ~-5 ~-4 slot.container 14 iron_ingot 13
loot insert ~0 ~-5 ~-4 loot "rsf/lush_caves"
loot insert ~0 ~-5 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 deepslate_bricks []
fill ~-7 ~1 ~-2 ~7 ~5 ~2 deepslate_bricks []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 deepslate_brick_wall []
setblock ~7 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 deepslate_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-7 ~4 ~-1 ~-7 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 polished_deepslate []
setblock ~-9 ~5 ~-8 shroomlight []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 polished_deepslate []
setblock ~-9 ~5 ~8 shroomlight []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 polished_deepslate []
setblock ~9 ~5 ~-8 shroomlight []
fill ~9 ~0 ~8 ~9 ~4 ~8 polished_deepslate []
setblock ~9 ~5 ~8 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~-9 ~0 ~-1 ~-9 ~3 ~1 moss_block []
setblock ~-9 ~4 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 string 12
replaceitem block ~-6 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 2 bone 14
replaceitem block ~-6 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 14
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 9 amethyst_shard 10
replaceitem block ~-6 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-6 ~1 ~4 slot.container 11 water_bucket 1
replaceitem block ~-6 ~1 ~4 slot.container 12 lantern 11
replaceitem block ~-6 ~1 ~4 slot.container 13 glow_berries 22
replaceitem block ~-6 ~1 ~4 slot.container 14 moss_block 16
loot insert ~-6 ~1 ~4 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
