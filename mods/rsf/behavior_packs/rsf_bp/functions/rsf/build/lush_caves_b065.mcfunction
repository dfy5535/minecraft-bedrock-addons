# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3137/4224 | 主题内编号: b065/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·断柱露天古神庙废墟 (lush_caves_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 moss_block [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 moss_block [] replace water
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 deepslate_bricks []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~4 ~-2 ~4 slot.container 1 gunpowder 11
replaceitem block ~4 ~-2 ~4 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-2 ~4 slot.container 3 glow_ink_sac 15
replaceitem block ~4 ~-2 ~4 slot.container 4 slime_ball 16
replaceitem block ~4 ~-2 ~4 slot.container 5 string 17
replaceitem block ~4 ~-2 ~4 slot.container 9 diamond 6
replaceitem block ~4 ~-2 ~4 slot.container 10 amethyst_shard 13
replaceitem block ~4 ~-2 ~4 slot.container 11 golden_apple 8
replaceitem block ~4 ~-2 ~4 slot.container 12 water_bucket 1
replaceitem block ~4 ~-2 ~4 slot.container 13 lantern 7
replaceitem block ~4 ~-2 ~4 slot.container 14 glow_berries 18
loot insert ~4 ~-2 ~4 loot "rsf/lush_caves"
loot insert ~4 ~-2 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 deepslate_bricks []
fill ~-6 ~1 ~-6 ~-6 ~5 ~-6 oak_log []
fill ~-6 ~1 ~6 ~-6 ~5 ~6 oak_log []
fill ~-4 ~1 ~-6 ~-4 ~5 ~-6 oak_log []
fill ~-4 ~1 ~6 ~-4 ~5 ~6 oak_log []
fill ~-2 ~1 ~-6 ~-2 ~5 ~-6 oak_log []
fill ~-2 ~1 ~6 ~-2 ~5 ~6 oak_log []
fill ~0 ~1 ~-6 ~0 ~5 ~-6 oak_log []
fill ~0 ~1 ~6 ~0 ~5 ~6 oak_log []
fill ~2 ~1 ~-6 ~2 ~5 ~-6 oak_log []
fill ~2 ~1 ~6 ~2 ~5 ~6 oak_log []
fill ~4 ~1 ~-6 ~4 ~5 ~-6 oak_log []
fill ~4 ~1 ~6 ~4 ~5 ~6 oak_log []
fill ~6 ~1 ~-6 ~6 ~5 ~-6 oak_log []
fill ~6 ~1 ~6 ~6 ~5 ~6 oak_log []
fill ~-6 ~1 ~-4 ~-6 ~5 ~-4 oak_log []
fill ~6 ~1 ~-4 ~6 ~5 ~-4 oak_log []
fill ~-6 ~1 ~-2 ~-6 ~5 ~-2 oak_log []
fill ~6 ~1 ~-2 ~6 ~5 ~-2 oak_log []
fill ~-6 ~1 ~0 ~-6 ~5 ~0 oak_log []
fill ~6 ~1 ~0 ~6 ~5 ~0 oak_log []
fill ~-6 ~1 ~2 ~-6 ~5 ~2 oak_log []
fill ~6 ~1 ~2 ~6 ~5 ~2 oak_log []
fill ~-6 ~1 ~4 ~-6 ~5 ~4 oak_log []
fill ~6 ~1 ~4 ~6 ~5 ~4 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 deepslate_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~4 ~-8 oak_log []
setblock ~-8 ~5 ~-8 lantern []
fill ~-8 ~0 ~8 ~-8 ~4 ~8 oak_log []
setblock ~-8 ~5 ~8 lantern []
fill ~8 ~0 ~-8 ~8 ~4 ~-8 oak_log []
setblock ~8 ~5 ~-8 lantern []
fill ~8 ~0 ~8 ~8 ~4 ~8 oak_log []
setblock ~8 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~0 ~-8 ~3 ~2 moss_block []
setblock ~-8 ~4 ~1 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~4 slot.container 1 string 12
replaceitem block ~5 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~4 slot.container 3 bone 14
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~5 ~1 ~4 slot.container 9 moss_block 17
replaceitem block ~5 ~1 ~4 slot.container 10 clay_ball 18
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~5 ~1 ~4 slot.container 12 gold_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 13 diamond 7
replaceitem block ~5 ~1 ~4 slot.container 14 amethyst_shard 14
loot insert ~5 ~1 ~4 loot "rsf/lush_caves"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~5 slot.container 1 bone 17
replaceitem block ~-5 ~1 ~5 slot.container 2 rotten_flesh 10
replaceitem block ~-5 ~1 ~5 slot.container 3 gunpowder 9
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 5 glow_ink_sac 13
replaceitem block ~-5 ~1 ~5 slot.container 9 moss_block 22
replaceitem block ~-5 ~1 ~5 slot.container 10 clay_ball 16
replaceitem block ~-5 ~1 ~5 slot.container 11 iron_ingot 9
replaceitem block ~-5 ~1 ~5 slot.container 12 gold_ingot 8
replaceitem block ~-5 ~1 ~5 slot.container 13 diamond 5
replaceitem block ~-5 ~1 ~5 slot.container 14 amethyst_shard 12
loot insert ~-5 ~1 ~5 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~5 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon axolotl ~-1 ~1 ~1
summon glow_squid ~1 ~1 ~1
summon cave_spider ~0 ~-2 ~0
