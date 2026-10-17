# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3189/4224 | 主题内编号: b117/128
# 地形主题 #25: 地下繁茂洞穴 (lush_caves) —— 带苔藓粘土生态池与垂根萤光悬亭
# 建筑名称: 繁茂洞穴系·环柱生态标本采集馆 (lush_caves_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: lush_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 moss_block [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 moss_block [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 clay []
setblock ~0 ~0 ~0 ochre_froglight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 slime_ball 16
replaceitem block ~4 ~-2 ~3 slot.container 1 string 17
replaceitem block ~4 ~-2 ~3 slot.container 2 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 3 bone 11
replaceitem block ~4 ~-2 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~4 ~-2 ~3 slot.container 5 gunpowder 11
replaceitem block ~4 ~-2 ~3 slot.container 9 moss_block 16
replaceitem block ~4 ~-2 ~3 slot.container 10 clay_ball 17
replaceitem block ~4 ~-2 ~3 slot.container 11 iron_ingot 10
replaceitem block ~4 ~-2 ~3 slot.container 12 gold_ingot 9
replaceitem block ~4 ~-2 ~3 slot.container 13 diamond 6
replaceitem block ~4 ~-2 ~3 slot.container 14 amethyst_shard 13
loot insert ~4 ~-2 ~3 loot "rsf/lush_caves"
loot insert ~4 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 deepslate_bricks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 oak_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 oak_log []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 oak_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 oak_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 oak_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 oak_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 oak_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 oak_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 oak_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 oak_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 oak_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 oak_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 oak_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 oak_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 oak_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 oak_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 oak_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 oak_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 oak_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 oak_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 deepslate_bricks []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 oak_log []
setblock ~-8 ~5 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 oak_log []
setblock ~-8 ~5 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 oak_log []
setblock ~8 ~5 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~4 ~7 oak_log []
setblock ~8 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (lush_caves 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~0 ~-1 ~-8 ~5 ~1 moss_block []
setblock ~-8 ~6 ~0 ochre_froglight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 14
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 glow_ink_sac 10
replaceitem block ~5 ~1 ~3 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 5 string 12
replaceitem block ~5 ~1 ~3 slot.container 9 golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 10 water_bucket 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 12
replaceitem block ~5 ~1 ~3 slot.container 12 glow_berries 16
replaceitem block ~5 ~1 ~3 slot.container 13 moss_block 17
replaceitem block ~5 ~1 ~3 slot.container 14 clay_ball 18
loot insert ~5 ~1 ~3 loot "rsf/lush_caves"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 glow_ink_sac 13
replaceitem block ~-5 ~1 ~4 slot.container 2 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 3 string 15
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 10 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 12 glow_berries 21
replaceitem block ~-5 ~1 ~4 slot.container 13 moss_block 22
replaceitem block ~-5 ~1 ~4 slot.container 14 clay_ball 16
loot insert ~-5 ~1 ~4 loot "rsf/lush_caves"
loot insert ~-5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon bogged ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
