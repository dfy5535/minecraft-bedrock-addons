# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3118/4224 | 主题内编号: b046/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·要塞校场比武演武台 (lush_caves_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 clay []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tiles []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~4 slot.container 0 string 17
replaceitem block ~5 ~-3 ~4 slot.container 1 spider_eye 6
replaceitem block ~5 ~-3 ~4 slot.container 2 bone 11
replaceitem block ~5 ~-3 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~-3 ~4 slot.container 4 gunpowder 11
replaceitem block ~5 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~5 ~-3 ~4 slot.container 9 water_bucket 1
replaceitem block ~5 ~-3 ~4 slot.container 10 lantern 6
replaceitem block ~5 ~-3 ~4 slot.container 11 glow_berries 17
replaceitem block ~5 ~-3 ~4 slot.container 12 moss_block 18
replaceitem block ~5 ~-3 ~4 slot.container 13 clay_ball 19
replaceitem block ~5 ~-3 ~4 slot.container 14 iron_ingot 12
loot insert ~5 ~-3 ~4 loot "rsf/lush_caves"
loot insert ~5 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 deepslate_bricks []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 moss_block []
setblock ~-7 ~9 ~-6 shroomlight []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 moss_block []
setblock ~-7 ~9 ~5 shroomlight []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 moss_block []
setblock ~6 ~9 ~-6 shroomlight []
fill ~6 ~1 ~5 ~7 ~8 ~6 moss_block []
setblock ~6 ~9 ~5 shroomlight []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 moss_block []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~8 ~0 ~-2 ~10 ~8 ~2 mossy_stone_bricks []
fill ~8 ~1 ~-1 ~9 ~7 ~1 air []
fill ~7 ~1 ~0 ~8 ~2 ~0 air []
setblock ~9 ~9 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~-9 ~0 ~-1 ~-9 ~4 ~1 moss_block []
setblock ~-9 ~5 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~-5 ~1 ~5 anvil []
setblock ~5 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 gunpowder 14
replaceitem block ~-6 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 2 glow_ink_sac 10
replaceitem block ~-6 ~1 ~4 slot.container 3 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 4 string 12
replaceitem block ~-6 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 9 gold_ingot 9
replaceitem block ~-6 ~1 ~4 slot.container 10 diamond 6
replaceitem block ~-6 ~1 ~4 slot.container 11 amethyst_shard 13
replaceitem block ~-6 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~-6 ~1 ~4 slot.container 13 water_bucket 1
replaceitem block ~-6 ~1 ~4 slot.container 14 lantern 7
loot insert ~-6 ~1 ~4 loot "rsf/lush_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon axolotl ~1 ~1 ~1
