# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3154/4224 | 主题内编号: b082/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·竖井井架矿工物资站 (lush_caves_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 6格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 clay []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 shroomlight []
setblock ~3 ~-7 ~-2 shroomlight []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 bone 11
replaceitem block ~3 ~-5 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~-5 ~2 slot.container 2 gunpowder 11
replaceitem block ~3 ~-5 ~2 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-5 ~2 slot.container 4 glow_ink_sac 15
replaceitem block ~3 ~-5 ~2 slot.container 5 slime_ball 16
replaceitem block ~3 ~-5 ~2 slot.container 9 gold_ingot 12
replaceitem block ~3 ~-5 ~2 slot.container 10 diamond 2
replaceitem block ~3 ~-5 ~2 slot.container 11 amethyst_shard 9
replaceitem block ~3 ~-5 ~2 slot.container 12 golden_apple 4
replaceitem block ~3 ~-5 ~2 slot.container 13 water_bucket 1
replaceitem block ~3 ~-5 ~2 slot.container 14 lantern 10
loot insert ~3 ~-5 ~2 loot "rsf/lush_caves"
loot insert ~3 ~-5 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 deepslate_brick_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 mossy_stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 moss_block []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 mossy_stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 chiseled_deepslate []
setblock ~0 ~12 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 deepslate_tiles []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~0 ~0 ~-7 ~5 ~2 moss_block []
setblock ~-7 ~6 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 12
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 14
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 9 clay_ball 20
replaceitem block ~-4 ~1 ~2 slot.container 10 iron_ingot 13
replaceitem block ~-4 ~1 ~2 slot.container 11 gold_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 12 diamond 2
replaceitem block ~-4 ~1 ~2 slot.container 13 amethyst_shard 9
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_apple 4
loot insert ~-4 ~1 ~2 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
